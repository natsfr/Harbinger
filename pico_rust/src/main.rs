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

use frame_buffer::Drawer;
use ili9341screen::Screen;
use keys::Keys;
// The macro for our start-up function
use rp_pico::entry;

// GPIO traits
use embedded_hal::digital::v2::OutputPin;

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

/// Entry point to our bare-metal application.
///
/// The `#[entry]` macro ensures the Cortex-M start-up code calls this function
/// as soon as all global variables are initialised.
///
/// The function configures the RP2040 peripherals, then blinks the LED in an
/// infinite loop.
#[entry]
fn main() -> ! {
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
    let mut delay = cortex_m::delay::Delay::new(core.SYST, clocks.system_clock.freq().to_Hz());

    // The single-cycle I/O block controls our GPIO pins
    let sio = hal::Sio::new(pac.SIO);

    // Set the pins up according to their function on this particular board
    let pins = rp_pico::Pins::new(
        pac.IO_BANK0,
        pac.PADS_BANK0,
        sio.gpio_bank0,
        &mut pac.RESETS,
    );

    // Set the LED to be an output
    let mut led_pin = pins.led.into_push_pull_output();

    let mut screen = Screen::init_partial(
        pins.gpio0,
        pins.gpio1,
        pins.gpio2,
        pins.gpio3,
        pins.gpio4,
        pins.gpio5,
        pac.SPI0,
        &mut pac.RESETS,
        pac.TIMER);

    let mut keys = Keys::init_partial(
        pins.gpio6,
        pins.gpio7,
        pins.gpio20,
        pins.gpio21);

    let mut x : usize = 0;
    let mut prev_key : usize = 0;

    // Blink the LED at 1 Hz
    loop {
        Drawer::clear();

/*
        Drawer::rect(x, 0, 30, 2, 0xFFF0);
        x = (x + 2) % (ili9341screen::Width + 30);

        let key = keys.read_all();
        if key != 0 {
            Drawer::rect(key as usize * 20, 120, 4, 4, 0xFFFF);
            prev_key = key as usize;
        }

        if prev_key != 0 {
            Drawer::rect(prev_key * 20, 80, 4, 4, 0xFF00);
        }
 */
        screen.push_frame();

    }
}

// End of file