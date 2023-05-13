
enum ChannelMessagePrefix {
    NONE = 0x00,
    NoteOff = 0x80,
    NoteOn = 0x90,
    PolyKeyPresure = 0xA0,

    /// Famous "CC" message
    ControlChange = 0xB0,

    ProgramChange = 0xC0,

    ChannelPresure = 0xD0,

    PitchBend = 0xE0
}

const MIDI_BUFFER_SIZE : usize = 256;

/// Midi message parser
pub struct IncrementalMidiParser {
    /// Temporary buffer receiving midi commands
    /// Used as a circular buffer
    buffer : [u8; MIDI_BUFFER_SIZE],

    /// Cursor used to read into buffer
    write_cursor : usize,

    /// Read index within buffer
    read_cursor : usize,

    /// Currently running status
    running_status: ChannelMessagePrefix
}

type MidiChannel = u8;

pub struct MidiNote {
    note: u8,
    velocity: u8
}

pub enum Message {
    NoteOn(MidiChannel, MidiNote),
    NoteOff(MidiChannel, MidiNote),
    ControlChange(MidiChannel, u8)
}

impl IncrementalMidiParser {
    pub fn new() -> IncrementalMidiParser {
        IncrementalMidiParser {
            buffer: [0; 256],
            write_cursor: 0,
            read_cursor: 0,
            running_status: ChannelMessagePrefix::NONE
        }
    }

    pub fn push(&mut self, val: u8) {
        self.buffer[self.write_cursor] = val;
        self.write_cursor = (self.write_cursor + 1) & (MIDI_BUFFER_SIZE - 1)
    }

    pub fn pull(&mut self) -> Option<Message> {
        match self.running_status {
            ChannelMessagePrefix::NONE => {}
            ChannelMessagePrefix::NoteOff => {}
            ChannelMessagePrefix::NoteOn => {}
            ChannelMessagePrefix::PolyKeyPresure => {}
            ChannelMessagePrefix::ControlChange => {}
            ChannelMessagePrefix::ProgramChange => {}
            ChannelMessagePrefix::PitchBend => {}
            ChannelMessagePrefix::ChannelPresure => {}
        };

        None
    }
}