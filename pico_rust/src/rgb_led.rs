use embedded_hal::{digital::v2::OutputPin, PwmPin};
use rp2040_hal::{gpio::{Pin, bank0::{Gpio26, Gpio27, Gpio28}, Output, PushPull, PinId}, pwm::{FreeRunning, Pwm6, Pwm5}};

pub struct RgbLed {
    pwm_r: rp2040_hal::pwm::Slice<Pwm6, FreeRunning>,
    pwm_gb: rp2040_hal::pwm::Slice<Pwm5, FreeRunning>,
    state: u8
}

impl RgbLed {
    pub fn init(
        mut pwm_r: rp2040_hal::pwm::Slice<Pwm6, FreeRunning>,
        mut pwm_gb: rp2040_hal::pwm::Slice<Pwm5, FreeRunning>,
        gpio26 : Pin<Gpio26, <Gpio26 as PinId>::Reset>,
        gpio27 : Pin<Gpio27, <Gpio27 as PinId>::Reset>,
        gpio28 : Pin<Gpio28, <Gpio28 as PinId>::Reset>) -> RgbLed {

        pwm_gb.channel_a.output_to(gpio26);
        pwm_gb.channel_b.output_to(gpio27);
        pwm_r.channel_a.output_to(gpio28);

        RgbLed {
            pwm_r: pwm_r,
            pwm_gb: pwm_gb,
            state: 0,
        }
    }

    /// For debugging
    pub fn tick(&mut self) {
        let mut st = self.state << 1;
        if st == 0 { st = 1 }
        self.state = st;
        
        let high_duty = 0x000F as u16;
        self.pwm_r.channel_a.set_duty(if (st & 1) != 0 { high_duty } else { 0 });
        self.pwm_gb.channel_a.set_duty(if (st & 2) != 0 { high_duty } else { 0 });
        self.pwm_gb.channel_b.set_duty(if (st & 4) != 0 { high_duty } else { 0 });
    }
}