use embedded_hal::PwmPin;
use rp2040_hal::{gpio::{Pin, bank0::{Gpio26, Gpio27, Gpio28}, PinId}, pwm::{FreeRunning, Pwm6, Pwm5}};

pub struct RgbLed {
    /// channel_a controles blue
    pwm_b: rp2040_hal::pwm::Slice<Pwm6, FreeRunning>,

    /// channel_a controls red, channel_b controles green
    pwm_rg: rp2040_hal::pwm::Slice<Pwm5, FreeRunning>,

    /// Some state, always need some state
    state: u16
}

impl RgbLed {
    pub fn init(
        mut pwm_r: rp2040_hal::pwm::Slice<Pwm6, FreeRunning>,
        mut pwm_gb: rp2040_hal::pwm::Slice<Pwm5, FreeRunning>,
        gpio26 : Pin<Gpio26, <Gpio26 as PinId>::Reset>,
        gpio27 : Pin<Gpio27, <Gpio27 as PinId>::Reset>,
        gpio28 : Pin<Gpio28, <Gpio28 as PinId>::Reset>) -> RgbLed {

        pwm_r.channel_a.set_duty(0);
        pwm_r.channel_a.set_inverted();
        pwm_r.channel_b.set_duty(0);
        pwm_r.channel_b.set_inverted();
        pwm_gb.channel_a.set_duty(0);
        pwm_gb.channel_a.set_inverted();
        pwm_gb.channel_b.set_duty(0);
        pwm_gb.channel_b.set_inverted();

        pwm_r.channel_a.output_to(gpio28);
        pwm_gb.channel_a.output_to(gpio26);
        pwm_gb.channel_b.output_to(gpio27);
        RgbLed {
            pwm_b: pwm_r,
            pwm_rg: pwm_gb,
            state: 0,
        }
    }

    pub fn low(&mut self) {
        self.pwm_b.channel_a.set_duty(0);
        self.pwm_rg.channel_a.set_duty(0);
        self.pwm_rg.channel_b.set_duty(0);
    }

    pub fn high(&mut self) {
        self.pwm_b.channel_a.set_duty(0xFFFF);
        self.pwm_rg.channel_a.set_duty(0xFFFF);
        self.pwm_rg.channel_b.set_duty(0xFFFF);
    }

    pub fn rgb(&mut self, r : u16, g: u16, b : u16) {
        self.pwm_b.channel_a.set_duty(b);
        self.pwm_rg.channel_a.set_duty(r);
        self.pwm_rg.channel_b.set_duty(g);
    }

    /// For debugging
    pub fn tick(&mut self) {
        let mut st = self.state << 1;
        if st == 0 || st >= 8 { st = 1 }
        self.state = st;
        
        let high_duty = 0xFFFF as u16;
        self.pwm_b.channel_a.set_duty(if (st & 1) != 0 { high_duty } else { 0 });
        self.pwm_rg.channel_a.set_duty(if (st & 2) != 0 { high_duty } else { 0 });
        self.pwm_rg.channel_b.set_duty(if (st & 4) != 0 { high_duty } else { 0 });
    }
}