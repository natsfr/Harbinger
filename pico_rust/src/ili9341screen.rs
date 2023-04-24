use core::arch::asm;
use core::slice;

use cortex_m::prelude::{_embedded_hal_blocking_spi_Write, _embedded_hal_timer_CountDown};
use fugit::ExtU32;
use fugit::RateExtU32;
use embedded_hal::digital::v2::OutputPin;
use rp2040_hal::gpio::FunctionSpi;
use rp2040_hal::gpio::PinId;
use rp2040_hal::spi;
use rp2040_hal::spi::Spi;
use rp_pico::hal::gpio::{Pin, PushPull, Output};
use rp_pico::hal::gpio::bank0::{
    Gpio1,
    Gpio0,
    Gpio2,
    Gpio3,
    Gpio5,
    Gpio4
};
use rp_pico::pac::RESETS;
use rp_pico::pac::TIMER;
use rp_pico::pac::SPI0;

use crate::frame_buffer::Drawer;

/// ILI9341 max TFT width
pub const Width : usize = 240;

/// ILI9341 max TFT height
pub const Height : usize = 320;

/// Commands that can be sent to the screen via SPI
enum Commands {
    NOP           = 0x00,
    SoftwareReset = 0x01,
    GammaSet      = 0x26,

    /// Positive Gamma Correction
    GMCTRP1       = 0xE0,

    ///< Negative Gamma Correction
    GMCTRN1       = 0xE1,

    /// Memory Access Control
    MADCTL        = 0x36,

    /// Read Display MADCTL
    RDMADCTL      = 0x0B,

    /// COLMOD: Pixel Format Set
    PIXFMT        = 0x3A,

    /// Frame Rate Control (In Normal Mode/Full Colors)
    FRMCTR1       = 0xB1,

    /// Sleep Out
    SLPOUT        = 0x11,

    /// Display OFF
    DISPOFF       = 0x28,

    /// Display ON
    DISPON        = 0x29,

    /// Column Address Set
    CASET         = 0x2A,

    /// Page Address Set
    PASET         = 0x2B,

    /// Memory Write
    RAMWR         = 0x2C,

    ///< Memory Read
    RAMRD         = 0x2E 
}

const PositiveGammaConf : [u8; 15] =
    [0x0f, 0x31, 0x2b, 0x0c, 0x0e, 0x08, 0x4e, 0xf1, 0x37, 0x07, 0x10, 0x03, 0x0e, 0x09, 0x00];

const negativeGammaConf : [u8; 15] =
    [0x00, 0x0e, 0x14, 0x03, 0x11, 0x07, 0x31, 0xc1, 0x48, 0x08, 0x0f, 0x0c, 0x31, 0x36, 0x0f];

pub struct Screen {
    spi : Spi<spi::Enabled, SPI0, 8>,

    /// LCD chip select signal, low level enable
    cs : Pin<Gpio1, Output<PushPull>>,

    /// (SDI) SPI bus read data signal; optional
    miso : Pin<Gpio0, FunctionSpi>,

    /// (SDO) SPI bus write data signal
    mosi : Pin<Gpio3, FunctionSpi>,

    /// SPI bus clock signal
    sck : Pin<Gpio2, FunctionSpi>,

    /// LCD reset signal, low level reset
    reset : Pin<Gpio5, Output<PushPull>>,

    /// LCD register / data selection signal; high level: register, low level: data
    dc : Pin<Gpio4, Output<PushPull>>
}

impl Screen {
    /*
    pub fn init(pins : Pins, mut peripherals : Peripherals) -> Screen {
        let spi =
            Spi::<_, _, 8>::new(peripherals.SPI0)
                .init(
                    &mut peripherals.RESETS,
                    (500 * 1_000).Hz(), 
                    (75_000 * 1000).Hz(),
                    &embedded_hal::spi::MODE_0);

        let mut scr = Screen {
            spi: spi,
            cs: pins.gpio1.into_push_pull_output(),
            miso: pins.gpio0.into_mode::<FunctionSpi>(),
            mosi: pins.gpio3.into_mode::<FunctionSpi>(),
            sck: pins.gpio2.into_mode::<FunctionSpi>(),
            reset: pins.gpio5.into_push_pull_output(),
            dc: pins.gpio4.into_push_pull_output()
        };

        scr.init_script(&mut peripherals);

        scr
    } */

    pub fn init_partial(
        gpio0 : Pin<Gpio0, <Gpio0 as PinId>::Reset>,
        gpio1 : Pin<Gpio1, <Gpio1 as PinId>::Reset>,
        gpio2 : Pin<Gpio2, <Gpio2 as PinId>::Reset>,
        gpio3 : Pin<Gpio3, <Gpio3 as PinId>::Reset>,
        gpio4 : Pin<Gpio4, <Gpio4 as PinId>::Reset>,
        gpio5 : Pin<Gpio5, <Gpio5 as PinId>::Reset>,
        spi : SPI0,
        resets : &mut RESETS,
        timer : TIMER) -> Screen {
        let spi =
            Spi::<_, _, 8>::new(spi)
                .init(
                    resets,
                    (500 * 1_000).Hz(), 
                    (75_000 * 1000).Hz(),
                    &embedded_hal::spi::MODE_0);

        let mut scr = Screen {
            spi: spi,
            cs: gpio1.into_push_pull_output(),
            miso: gpio0.into_mode::<FunctionSpi>(),
            mosi: gpio3.into_mode::<FunctionSpi>(),
            sck: gpio2.into_mode::<FunctionSpi>(),
            reset: gpio5.into_push_pull_output(),
            dc: gpio4.into_push_pull_output()
        };

        scr.init_script(timer, resets);

        scr
    }

    fn init_script(&mut self, timer: TIMER, resets : &mut RESETS) {
        self.cs.set_low().unwrap();
        self.reset.set_high().unwrap();
        self.dc.set_low().unwrap();


        let timer = rp2040_hal::Timer::new(timer, resets);
        let mut count_down = timer.count_down();

        let mut sleep_ms = |ms:u32| {
            count_down.start(ms.millis());
            let _ = block!(count_down.wait());
        };

        sleep_ms(10);
        self.reset.set_low().unwrap();
        sleep_ms(10);
        self.reset.set_high().unwrap();

        self.set_command(Commands::SoftwareReset);
        sleep_ms(100);

        self.set_command(Commands::GammaSet);
        self.command_param(0x01);

        self.set_command(Commands::GMCTRP1);
        self.write_data(&PositiveGammaConf);

        self.set_command(Commands::GMCTRN1);
        self.write_data(&negativeGammaConf);

        self.set_command(Commands::MADCTL);
        self.command_param(0x48);

        self.set_command(Commands::PIXFMT);
        self.command_param(0x55);

        self.set_command(Commands::FRMCTR1);
        self.command_param(0x00);
        self.command_param(0x1B);

        self.set_command(Commands::SLPOUT);

        self.set_command(Commands::DISPON);

        self.set_command(Commands::CASET);
        self.command_param(0);
        self.command_param(0); // start column
        self.command_param(0);
        self.command_param((Width - 1) as u8);

        self.set_command(Commands::PASET);
        self.command_param(0);
        self.command_param(0); // start page
        self.command_param(0);
        self.command_param((Height - 1) as u8);

        self.set_command(Commands::RAMWR);
    }

    fn select(&mut self) {
        unsafe {
            asm!("nop", "nop", "nop");
            self.cs.set_low().unwrap();
            asm!("nop", "nop", "nop");
        }
    }

    fn deselect(&mut self) {
        unsafe {
            asm!("nop", "nop", "nop");
            self.cs.set_high().unwrap();
            asm!("nop", "nop", "nop");
        }
    }

    fn set_command(&mut self, cmd: Commands) {
        self.select();
        self.dc.set_low().unwrap();
        self.spi.write(&[cmd as u8]).unwrap();
        self.dc.set_high().unwrap();
        self.deselect();
    }

    fn command_param(&mut self, data: u8) {
        self.write_data(&[data]);
    }

    fn write_data(&mut self, data: &[u8]) {
        self.select();
        self.spi.write(data).unwrap();
        self.deselect();
    }

    pub fn push_frame(&mut self) {
        self.select();
        let buff = Drawer::buffer(); 
        unsafe {
            let casted =
                slice::from_raw_parts(buff.as_ptr() as *const u8, buff.len() * 2);
            self.write_data(casted);
        }
        self.deselect();
    }
}