use embedded_hal::{pwm::SetDutyCycle, PwmPin};
use rp2040_hal::{gpio::{bank0::{Gpio26, Gpio27, Gpio28}, FunctionNull, Pin, PinId, PullDown}, pwm::{FreeRunning, Pwm5, Pwm6}};

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
        gpio26 : Pin<Gpio26, FunctionNull, PullDown>,
        gpio27 : Pin<Gpio27, FunctionNull, PullDown>,
        gpio28 : Pin<Gpio28, FunctionNull, PullDown>) -> RgbLed {

        pwm_r.channel_a.set_duty_cycle(0);
        pwm_r.channel_a.set_inverted();
        pwm_r.channel_b.set_duty_cycle(0);
        pwm_r.channel_b.set_inverted();
        pwm_gb.channel_a.set_duty_cycle(0);
        pwm_gb.channel_a.set_inverted();
        pwm_gb.channel_b.set_duty_cycle(0);
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
        self.pwm_b.channel_a.set_duty_cycle(0);
        self.pwm_rg.channel_a.set_duty_cycle(0);
        self.pwm_rg.channel_b.set_duty_cycle(0);
    }

    pub fn high(&mut self) {
        self.pwm_b.channel_a.set_duty_cycle(0xFFFF);
        self.pwm_rg.channel_a.set_duty_cycle(0xFFFF);
        self.pwm_rg.channel_b.set_duty_cycle(0xFFFF);
    }

    pub fn rgb(&mut self, r : u16, g: u16, b : u16) {
        self.pwm_b.channel_a.set_duty_cycle(b);
        self.pwm_rg.channel_a.set_duty_cycle(r);
        self.pwm_rg.channel_b.set_duty_cycle(g);
    }

    /// For debugging
    pub fn tick(&mut self) {
        let mut st = self.state << 1;
        if st == 0 || st >= 8 { st = 1 }
        self.state = st;
        
        // let high_duty = 0xFFFF as u16;
        let high_duty = 0xFF as u16;

        self.pwm_b.channel_a.set_duty_cycle(if (st & 1) != 0 { high_duty } else { 0 });
        self.pwm_rg.channel_a.set_duty_cycle(if (st & 2) != 0 { high_duty } else { 0 });
        self.pwm_rg.channel_b.set_duty_cycle(if (st & 4) != 0 { high_duty } else { 0 });
    }
}