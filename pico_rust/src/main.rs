//! # Pico Blinky Example
//!
//! Blinks the LED on a Pico board.
//!
//! This will blink an LED attached to GP25, which is the pin the Pico uses for
//! the on-board LED.
//!
//! See the `Cargo.toml` file for Copyright and license details.

#![no_std]
#![no_main]

#[macro_use(block)]
extern crate nb;

mod ili9341screen;
mod fpga;
mod frame_buffer;
mod keys;
mod rgb_led;
mod midi;
mod voices;

use core::cell::RefCell;
use fpga::FpgaLink;
use fugit::RateExtU32;
use cortex_m::interrupt::Mutex;
use frame_buffer::Drawer;
use fugit::MicrosDurationU32;
use hal::Spi;
use hal::gpio::{FunctionPio0, Pin};
use hal::pwm::FreeRunning;
use hal::pwm::Slices;
use hal::timer::Alarm;
use hal::timer::Alarm0;
use ili9341screen::Screen;
use keys::Keys;
use midi::MidiUart;
use rgb_led::RgbLed;
// The macro for our start-up function
//use rp_pico::entry;
use hal::pac::interrupt;

// Ensure we halt the program on panic (if we don't mention this crate it won't
// be linked)
use panic_halt as _;

// Pull in any important traits
use rp_pico::hal::prelude::*;

// A shorter alias for the Peripheral Access Crate, which provides low-level
// register access
use rp_pico::hal::pac;

// A shorter alias for the Hardware Abstraction Layer, which provides
// higher-level drivers.
use rp_pico::hal;
use voices::VoiceManager;

// Using PIO for custom fast spi
use hal::pio::{PIOExt, ShiftDirection};
use hal::dma::{double_buffer, single_buffer, DMAExt};

const KEY_POL_RATE: MicrosDurationU32 =
    MicrosDurationU32::millis(10);

/// Store the key abstraction to be regularly queried
static G_KEYS: Mutex<RefCell<Option<Keys>>> = Mutex::new(RefCell::new(None));
static mut G_ALARM0 : Option<Alarm0> = None;

#[interrupt]
fn TIMER_IRQ_0() {
    cortex_m::interrupt::free(|cs| {
        let ref mut g_keys = G_KEYS.borrow(cs).borrow_mut();

        if let Some(keys) = g_keys.as_mut() {
            keys.read_all()
        }

        unsafe {
            if let Some(alarm0) = G_ALARM0.as_mut() {
                alarm0.clear_interrupt();
            }
        }
    });
}

fn read_last_key() -> Option<u8>{
    let mut out = None;

    cortex_m::interrupt::free(|cs| {
        let ref mut g_keys = G_KEYS.borrow(cs).borrow();

        if let Some(keys) = g_keys.as_ref() {
            out = Some(keys.actual())
        }
    });

    out
}

fn setup_pwm<PWM : hal::pwm::SliceId>(mut pwm : hal::pwm::Slice<PWM, FreeRunning>)
    -> hal::pwm::Slice<PWM, FreeRunning>{
    pwm.set_ph_correct();
    pwm.enable();
    pwm
}

/// basic screen drawing to at least display somthing, move elsewhere, do something
/// else with it completly
fn stupid_screen_draw() {
    let mut x : usize = 0;
    let mut prev_key : usize = 0;

    Drawer::clear();

    Drawer::rect(x, 0, 30, 2, 0xFFF0);
    x = (x + 4) % (ili9341screen::WIDTH + 30);

    let key = read_last_key().unwrap();
    if key != 0 {
        Drawer::rect(key as usize * 20, 120, 4, 4, 0xFFFF);
        prev_key = key as usize;
    }

    if prev_key != 0 {
        Drawer::rect(prev_key * 20, 80, 4, 4, 0xFF00);
    }
}

/// Entry point to our bare-metal application.
///
/// The `#[entry]` macro ensures the Cortex-M start-up code calls this function
/// as soon as all global variables are initialised.
///
/// The function configures the RP2040 peripherals, then blinks the LED in an
/// infinite loop.
#[rp2040_hal::entry]
fn main() -> ! {
    unsafe { cortex_m::interrupt::enable(); }

    // Grab our singleton objects
    let mut pac = pac::Peripherals::take().unwrap();
    // let core = pac::CorePeripherals::take().unwrap();

    // Set up the watchdog driver - needed by the clock setup code
    let mut watchdog = hal::Watchdog::new(pac.WATCHDOG);

    // Configure the clocks
    //
    // The default is to generate a 125 MHz system clock
    let clocks = hal::clocks::init_clocks_and_plls(
        rp_pico::XOSC_CRYSTAL_FREQ,
        pac.XOSC,
        pac.CLOCKS,
        pac.PLL_SYS,
        pac.PLL_USB,
        &mut pac.RESETS,
        &mut watchdog,
    )
    .ok()
    .unwrap();

    // The delay object lets us wait for specified amounts of time (in
    // milliseconds)
    // let mut delay = cortex_m::delay::Delay::new(core.SYST, clocks.system_clock.freq().to_Hz());

    // The single-cycle I/O block controls our GPIO pins
    let sio = hal::Sio::new(pac.SIO);

    // Set the pins up according to their function on this particular board
    /* what that shit example are not giving the same ! */
    /*let pins = rp_pico::Pins::new(
        pac.IO_BANK0,
        pac.PADS_BANK0,
        sio.gpio_bank0,
        &mut pac.RESETS,
    );*/
    let pins = hal::gpio::Pins::new(
        pac.IO_BANK0,
        pac.PADS_BANK0,
        sio.gpio_bank0,
        &mut pac.RESETS,
    );

    let rate  = clocks.peripheral_clock.freq();

    let spi =
        Spi::<_, _, 8>::new(pac.SPI0)
            .init(
                &mut pac.RESETS,
                rate, 
                (20_000 * 1000).Hz(),
                &embedded_hal::spi::MODE_0);


    // Init PWMs
    let pwm_slices = Slices::new(pac.PWM, &mut pac.RESETS);

    let mut timer = rp2040_hal::Timer::new(pac.TIMER, &mut pac.RESETS);
    let mut screen = Screen::init_partial(
        pins.gpio0,
        pins.gpio1,
        pins.gpio2,
        pins.gpio3,
        pins.gpio4,
        pins.gpio5,
        spi,
        &mut timer);

    let mut rgbled = RgbLed::init(
        setup_pwm(pwm_slices.pwm6),
        setup_pwm(pwm_slices.pwm5),
        pins.gpio26,
        pins.gpio27,
        pins.gpio28);

    rgbled.low();

    let mut midi_uart =
        MidiUart::init(
            pac.UART0,
            pins.gpio13,
            rate,
            &mut pac.RESETS,
            Some(rgbled));


    let keys = Keys::init_partial(
        pins.gpio6,
        pins.gpio7,
        pins.gpio20,
        pins.gpio21,
        None
    );

    cortex_m::interrupt::free(|cs| {
        G_KEYS.borrow(cs).replace(Some(keys))
    });

    // Unmask the timer0 IRQ so that it will generate an interrupt
    let mut alarm0 = timer.alarm_0().unwrap();
    alarm0.schedule(KEY_POL_RATE).unwrap();
    alarm0.enable_interrupt();

    // we create a voice manager on midi channel 0
    let mut voice_manager =
        VoiceManager::default_on_midi_channel(0);

    let (pio, sm0, _, _, _) =
        pac.PIO0.split(&mut pac.RESETS);

    let mut fpga_link = FpgaLink::new(
        pio,
        sm0,
        pac.DMA.split(&mut pac.RESETS),
        pins.gpio16,
        pins.gpio17,
        pins.gpio18,
        pins.gpio19);

    // We use single buffer for this one triggered by note send and configuration of voice


    unsafe {
        pac::NVIC::unmask(pac::Interrupt::TIMER_IRQ_0);
        G_ALARM0 = Some(alarm0);
    }

    // we draw at least once
    stupid_screen_draw();

    loop {
        midi_uart.feed_data_into_parser();

        while let Some(midi_command) = midi_uart.try_read_command() {
            voice_manager.handle_midi_command(&mut fpga_link, midi_command)
        }

        // screen.push_frame();
        cortex_m::interrupt::free(|cs| {
            unsafe {
                if let Some(alarm0) = G_ALARM0.as_mut() {
                    if alarm0.finished() {
                        alarm0.schedule(KEY_POL_RATE).unwrap();
                    }
                }
            }
        });
    }
}

// End of file
