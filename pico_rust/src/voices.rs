use crate::{fpga::{SetVoice, SetFreq, POLYPHONY, VoiceCommand, ModMatrix, NB_OP, FpgaLink, Nop, Trig, ModulationInputs}, midi::{Message, MidiChannel, MidiNote}};

pub fn fixed_SQ15_S1Q6(a : i16, b: i16, oflow: u8) -> i16 {
    let mut c = (a as i32 * b as i32) as u32;
    
    let d = 0xFFFF0000 & c;
    let oflow = (d != 0xFFFF0000) && (d != 0);
    
    c = 0x0000FFFF & (c >> 7);
    
    c as i16
}

pub fn fixed_SQ15_S7Q4(a : i16, b: i16, oflow: u8) -> i16 {
    let mut c = (a as i32 * b as i32) as u32;
    
    let d = 0xF8000000 & c;
    let oflow = (d != 0xF8000000) && (d != 0);
    
    c = 0x0000FFFF & (c >> 11);
    
    c as i16
}

/// Used to calculate Frequency for each operator
/// Midi freq is < 26 bit we limit the factor to the range 0 -> 15.9375 in 0.0625 step
/// We cant have overflow unless "a" (the freq) is invalid
pub fn fixed_26Q0_4Q4(a : u32, b : u8, oflow : u8) -> u32 {
    let mut c = a as u64  * b as u64;
    
    c = 0xFFFFFFFF & (c >> 4);
    
    c as u32
}

pub struct Voice {
    pub op_factors : [u32; NB_OP],
    pub note : MidiNote,
    pub set : SetVoice,
    pub freq : SetFreq,
    pub is_triggered : bool
}

impl Voice {
    pub fn default_of_voice(n : usize) -> Self {
        let factor = |i : u32| { (i + 1) << 4 };
        Self {
            set: SetVoice::default_of_voice(n),
            op_factors: [factor(0), factor(1), factor(2), factor(3), factor(4), factor(5)],
            freq: SetFreq::default_of_voice(n),
            is_triggered: false,
            note: MidiNote::default()
        }
    }
}

pub struct VoiceManager {
    /// Our current MIDI channel
    pub listen_channel : MidiChannel,
    pub voices : [Voice; POLYPHONY]
}

impl VoiceManager {
    /// Try to find the index of a
    fn try_find_triggered_voice_at_note(&self, note: MidiNote) -> Option<usize> {
        for i in 0 .. POLYPHONY {
            if self.voices[i].note.note == note.note && self.voices[i].is_triggered {
                return Some(i)
            }
        }

        None
    }

    fn try_find_empty_voice(&self) -> Option<usize> {
        for i in 0 .. POLYPHONY {
            if !self.voices[i].is_triggered { return Some(i) }
        }

        None
    }

    fn make_trigg(&self) -> ModulationInputs {
        let mut voices : u8 = 0;
        for i in 0 .. POLYPHONY {
            if self.voices[i].is_triggered {
                voices = voices | 1 << i;
            }
        }

        ModulationInputs { input_bit_field: voices }
    }

    pub fn handle_midi_command(&mut self, link : &mut FpgaLink, command: Message) {
        match command {
            Message::ControlChange(_, _) => { /* let's ignore for now */}
            Message::NoteOn(channel, _) if channel != self.listen_channel => { /* ignore */ }
            Message::NoteOff(channel, _) if channel != self.listen_channel => { /* ignore */}
            Message::NoteOn(k, note) => {
              match self.try_find_triggered_voice_at_note(note) {
                None => {
                  match self.try_find_empty_voice() {
                    None => { /* No more voice, do nothing */}
                    Some(voice_ix) => {
                        self.voices[voice_ix].is_triggered = true;

                        // We need to update the freq here
                        todo!();

                        let trig_command = Trig::of_inputs(self.make_trigg());
                        link.send_trig(&trig_command);
                        link.send_nop(&Nop::default());
                    }
                  }
                },
                Some(_) => { /* already on, do nothing (may need to retrig later) */ }
              }
            }
            Message::NoteOff(k, note) => {
              match self.try_find_triggered_voice_at_note(note) {
                None => { /* nothing to do */},
                Some(voice_ix) => {
                  // we need to stop the voice
                  self.voices[voice_ix].is_triggered = false;

                  let trig_command = Trig::of_inputs(self.make_trigg());
                  link.send_trig(&trig_command);
                  link.send_nop(&Nop::default());
                }
              }
            }
        }
    }
}

/// Global instance of the voice manager, handling the active patch.
pub static mut current_patch : Option<VoiceManager> = None;
/* VoiceManager {
    listen_channel: 0,
    voices: [
        Voice::default_of_voice(0),
        Voice::default_of_voice(1),
        Voice::default_of_voice(2),
        Voice::default_of_voice(3),
        Voice::default_of_voice(4),
        Voice::default_of_voice(5)
    ]
};
*/