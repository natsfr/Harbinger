use embedded_hal::digital::v2::{OutputPin, InputPin};
use rp2040_hal::gpio::{Pin, bank0::{Gpio20, Gpio21, Gpio6, Gpio7}, Output, PushPull, PinId, Input, PullDown};


pub struct Keys {
    col0 : Pin<Gpio6, Input<PullDown>>,
    col1 : Pin<Gpio7, Input<PullDown>>,

    row0 : Pin<Gpio20, Output<PushPull>>,
    row1 : Pin<Gpio21, Output<PushPull>>
}

impl Keys {
    pub fn init_partial(
        gpio6 : Pin<Gpio6, <Gpio6 as PinId>::Reset>,
        gpio7 : Pin<Gpio7, <Gpio7 as PinId>::Reset>,
        gpio20 : Pin<Gpio20, <Gpio20 as PinId>::Reset>,
        gpio21 : Pin<Gpio21, <Gpio21 as PinId>::Reset>) -> Keys {

        Keys {
            col0: gpio6.into_pull_down_input(),
            col1: gpio7.into_pull_down_input(),

            row0: gpio20.into_push_pull_output(),
            row1: gpio21.into_push_pull_output()
        }
    }

    fn set_row(&mut self, flip : bool) {

            if flip { self.row0.set_high().unwrap() }
            else { self.row0.set_low().unwrap() }

            if flip { self.row1.set_low().unwrap() }
            else { self.row1.set_high().unwrap() }
    }

    fn read_col(&mut self) -> u8 {
        let c0 = self.col0.is_high().unwrap() as u8;
        let c1 = self.col1.is_high().unwrap() as u8;
        c0 | c1 << 1
    }

    pub fn read_all(&mut self) -> u8 {
        self.set_row(true);
        let c01 = self.read_col();
        self.set_row(false);
        let c23 = self.read_col();
        c01 | c23 << 2
    }
}
