pub const NB_OP : usize = 6;
pub const POLYPHONY : usize = 6;

/// Bitfield describing operator inputs
#[repr(packed(1))]
#[derive(Clone, Copy)]
pub struct ModulationInputs {
    /// Field inputs
    pub input_bit_field : u8
}

/// Codes used as prefix for the FPGA commands
#[derive(Copy, Clone)]
pub enum CommandCodes {
    Nop = 0x00,
    SetVoice = 0x01,
    TrigVoice = 0x02,
    SetFreq = 0x03
}

impl ModulationInputs {
    /// Brutal instantiation from raw bools, mostly for test
    pub fn new(
        op0 : bool,
        op1 : bool,
        op2 : bool,
        op3 : bool,
        op4 : bool,
        op5 : bool) -> ModulationInputs {

        ModulationInputs {
            input_bit_field:
                bit(op0, 0) |
                bit(op1, 1) |
                bit(op2, 2) |
                bit(op3, 3) |
                bit(op4, 4) |
                bit(op5, 5)
        }
    }

    /// Target all voice/operators
    pub fn all() -> ModulationInputs {
        ModulationInputs { input_bit_field: (1 << NB_OP) - 1 }
    }

    /// Targetting no voice
    pub fn none() -> ModulationInputs {
        ModulationInputs { input_bit_field: 0 }
    }

    /// Targetting a single operator/voice
    pub fn singleton(n : usize) -> ModulationInputs {
        ModulationInputs { input_bit_field: 1 << n }
    }

    /// Move the content to a given position. Can't have extra
    /// bits by construction
    pub fn shift(self, shift : usize) -> u32 {
        (self.input_bit_field as u32) << shift
    }
}

#[repr(packed(1))]
#[derive(Copy, Clone)]
pub struct VoiceCommand {
    cmd_voice : u32
}

impl VoiceCommand {
    pub fn mk(code : CommandCodes, voice : ModulationInputs) -> VoiceCommand {
        VoiceCommand {
            cmd_voice: (code as u32) << 24 | voice.shift(16)
        }
    }
}

#[repr(packed(1))]
#[derive(Copy, Clone)]
pub struct Nop { cmd_voice : VoiceCommand }

impl Default for Nop {
    fn default() -> Self {
        Self { cmd_voice: VoiceCommand::mk(CommandCodes::Nop, ModulationInputs::none()) }
    }
}

/// Set a bit at a given position (we hope this is inlined and optimized)
fn bit(b : bool, n : usize) -> u8 {
    if b { 1 << n } else { 0 }
}

impl From<[bool; NB_OP]> for ModulationInputs {
    fn from(value: [bool; NB_OP]) -> Self {
        let mut acc = 0;
        for i in 0 .. NB_OP {
            acc = acc | bit(value[i], NB_OP - 1 - i); 
        }

        ModulationInputs { input_bit_field: acc }
    }
}

#[repr(packed(1))]
#[derive(Clone, Copy)]
pub struct ModMatrix {
    modin_1 : u32,
    modin_2 : u32,
}

impl ModMatrix {
    pub fn new(
        modi4 : ModulationInputs,
        modi3 : ModulationInputs,
        modi2 : ModulationInputs,
        modi1 : ModulationInputs,
        modi0 : ModulationInputs,
        modi5 : ModulationInputs,
        muxo : ModulationInputs) -> ModMatrix {

        ModMatrix {
            modin_1:
                modi4.shift(4 * NB_OP) |
                modi3.shift(3 * NB_OP) |
                modi2.shift(2 * NB_OP) |
                modi1.shift(1 * NB_OP) |
                modi0.shift(0 * NB_OP),

            modin_2:
                muxo.shift(1 * NB_OP) |
                modi5.shift(0 * NB_OP)
        }
    }
}

#[repr(packed(1))]
pub struct SetVoice {
    pub cmd_voice : VoiceCommand,
	pub at_time : [u32; 6],
	pub at_inc : [i32; 6],
	pub de_time : [u32; 6],
	pub de_inc : [i32; 6],
	pub su_time : [u32; 6],
	pub su_lvl : [i32; 6],
	pub re_time : [u32; 6],
	pub re_inc : [i32; 6],
	pub amplitude : [i32; 6],
    pub mod_matrix : ModMatrix
}

impl SetVoice {
    pub fn default_of_voice(voice : usize) -> SetVoice {
        SetVoice {
            cmd_voice: VoiceCommand::mk(CommandCodes::SetVoice, ModulationInputs::singleton(voice)),
            at_time: [ 2457500, 2457500, 2457500, 2457500, 2457500, 2457500 ],
            at_inc: [ 873, 873, 873, 873, 873, 873 ],
            de_time: [ 24575, 24575, 24575, 24575, 24575, 24575 ],
            de_inc: [ -10, -10, -10, -10, -10, -10 ],
            su_time: [ 2457500, 2457500, 2457500, 2457500, 2457500, 2457500 ],
            su_lvl: [ 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF ],
            re_time: [ 100000, 100000, 100000, 100000, 100000, 100000 ],
            re_inc: [ -21474, -21474, -21474, -21474, -21474, -21474 ],
            amplitude: [ 0, 0, 0, 0, 0, 0 ],
            mod_matrix: ModMatrix::new(
                ModulationInputs::none(),
                ModulationInputs::none(),
                ModulationInputs::none(),
                ModulationInputs::none(),
                ModulationInputs::none(),
                ModulationInputs::none(),
                ModulationInputs::all())
        }
    }
}

#[repr(packed(1))]
pub struct Trig {
    pub cmd_voice : VoiceCommand
}

impl Trig {
    pub fn of_inputs(modi : ModulationInputs) -> Self {
        Self {
            cmd_voice: VoiceCommand::mk(CommandCodes::TrigVoice, modi)
        }
    }
}

#[repr(packed(1))]
pub struct SetFreq {
    pub cmd_voice : VoiceCommand,
    pub freqs : [i32; 6]
}

impl SetFreq {
    pub fn default_of_voice(voice : usize) -> Self {
        Self {
            cmd_voice: VoiceCommand::mk(
                CommandCodes::SetFreq,
                ModulationInputs::singleton(voice)),
            freqs: [0; 6]
        }
    }
}

pub struct FpgaLink {
    /* To be defined ... */
}

impl FpgaLink {
    pub fn send_set_voice(&mut self, set_voice: &SetVoice) {
        todo!()
    }

    pub fn send_set_freq(&mut self, set_freq: &SetFreq) {
        todo!()
    }

    pub fn send_nop(&mut self, set_freq: &Nop) {
        todo!()
    }

    pub fn send_trig(&mut self, trig: &Trig) {
        todo!()
    }
}
