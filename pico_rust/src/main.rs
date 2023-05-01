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

use core::cell::RefCell;
use fugit::RateExtU32;
use cortex_m::interrupt::Mutex;
use frame_buffer::Drawer;
use fugit::MicrosDurationU32;
use hal::Spi;
use hal::timer::Alarm;
use ili9341screen::Screen;
use keys::Keys;
// The macro for our start-up function
use rp_pico::entry;
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

const KEY_POL_RATE: MicrosDurationU32 = MicrosDurationU32::millis(10);

/// Store the key abstraction to be regularly queried
static G_KEYS: Mutex<RefCell<Option<Keys>>> = Mutex::new(RefCell::new(None));

#[interrupt]
fn TIMER_IRQ_0() {
    cortex_m::interrupt::free(|cs| {
        let ref mut g_keys = G_KEYS.borrow(cs).borrow_mut();

        if let Some(keys) = g_keys.as_mut() {
            keys.read_all()
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

/// Entry point to our bare-metal application.
///
/// The `#[entry]` macro ensures the Cortex-M start-up code calls this function
/// as soon as all global variables are initialised.
///
/// The function configures the RP2040 peripherals, then blinks the LED in an
/// infinite loop.
#[entry]
fn main() -> ! {
    unsafe { cortex_m::interrupt::enable(); }

    // Grab our singleton objects
    let mut pac = pac::Peripherals::take().unwrap();
    let core = pac::CorePeripherals::take().unwrap();

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
    let pins = rp_pico::Pins::new(
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

    let mut alarm0 = timer.alarm_0().unwrap();

    let mut keys = Keys::init_partial(
        pins.gpio6,
        pins.gpio7,
        pins.gpio20,
        pins.gpio21);

    cortex_m::interrupt::free(|cs| {
        G_KEYS.borrow(cs).replace(Some(keys))
    });

    // Unmask the timer0 IRQ so that it will generate an interrupt
    unsafe {
        pac::NVIC::unmask(pac::Interrupt::TIMER_IRQ_0);
    }

    alarm0.schedule(KEY_POL_RATE).unwrap();

    let mut x : usize = 0;
    let mut prev_key : usize = 0;

    // Blink the LED at 1 Hz
    loop {
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
        screen.push_frame();
    }
}

// End of file