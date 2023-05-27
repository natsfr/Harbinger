use embedded_hal::serial::Read;
use rp2040_hal::{
    uart::{UartPeripheral, DataBits, UartConfig, StopBits, Enabled}, gpio::{PinId, bank0::Gpio13, Pin, FunctionUart},
    pac::{RESETS, UART0}};

use fugit::{RateExtU32, HertzU32};


pub const NOTE_FREQ : [i32; 128] = [
    0x5958,
    0x5E97,
    0x6445,
    0x6A2B,
    0x7080,
    0x772A,
    0x7E44,
    0x85CD,
    0x8DC6,
    0x962F,
    0x9F24,
    0xA889,
    0xB295,
    0xBD2E,
    0xC86E,
    0xD472,
    0xE101,
    0xEE71,
    0xFC88,
    0x10B9A,
    0x11B8D,
    0x12C5F,
    0x13E49,
    0x1512E,
    0x1652B,
    0x17A78,
    0x190F8,
    0x1A8C8,
    0x1C203,
    0x1DCC6,
    0x1F92C,
    0x21735,
    0x236FE,
    0x258BF,
    0x27C76,
    0x2A25D,
    0x2CA73,
    0x2F4F0,
    0x321F1,
    0x35190,
    0x38423,
    0x3B9A8,
    0x3F258,
    0x42E6B,
    0x46E19,
    0x4B17E,
    0x4F8ED,
    0x5449F,
    0x594CB,
    0x5E9C5,
    0x643C6,
    0x6A321,
    0x7082A,
    0x77334,
    0x7E4B1,
    0x85CD7,
    0x8DC17,
    0x962FC,
    0x9F1DA,
    0xA893E,
    0xB29B2,
    0xBD38B,
    0xC878C,
    0xD465E,
    0xE1070,
    0xEE685,
    0xFC947,
    0x10B9AF,
    0x11B82E,
    0x12C5F9,
    0x13E3B5,
    0x15127C,
    0x165349,
    0x17A732,
    0x190F35,
    0x1A8CA1,
    0x1C20E0,
    0x1DCD0B,
    0x1F92AA,
    0x217342,
    0x237079,
    0x258BF2,
    0x27C787,
    0x2A2515,
    0x2CA692,
    0x2F4E49,
    0x321E6B,
    0x35195E,
    0x3841A5,
    0x3B99FB,
    0x3F2554,
    0x42E685,
    0x46E0F3,
    0x4B17E4,
    0x4F8F0F,
    0x544A0E,
    0x594D24,
    0x5E9C93,
    0x643CD6,
    0x6A32BC,
    0x70834A,
    0x773412,
    0x7E4AA8,
    0x85CD0B,
    0x8DC1E7,
    0x962FC9,
    0x9F1E02,
    0xA89438,
    0xB29A64,
    0xBD3927,
    0xC879AD,
    0xD4655C,
    0xE10694,
    0xEE6809,
    0xFC9534,
    0x10B9A33,
    0x11B83CF,
    0x12C5F92,
    0x13E3C05,
    0x1512854,
    0x16534C8,
    0x17A724E,
    0x190F33F,
    0x1A8CAB9,
    0x1C20D29,
    0x1DCD013,
    0x1F92A68,
    0x217344A
];

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

const MIDI_COMMAND_BIT : u8 = 0x80;
const MIDI_CMD_MASK : u8 = 0xF0;
const MIDI_CHAN_MASK : u8 = 0x0F;
const MIDI_BUFFER_SIZE : usize = 256;
const SCRATCH_BUFFER_SIZE : usize = 4;

/// Midi message parser
pub struct IncrementalMidiParser {
    /// Temporary buffer receiving midi commands
    /// Used as a circular buffer
    buffer : [u8; MIDI_BUFFER_SIZE],

    /// small buffer keeping data used in the current run
    command_scratch : [u8; SCRATCH_BUFFER_SIZE],

    /// write index in command_scratch
    scratch_index : usize,

    /// Cursor used to read into buffer
    write_cursor : usize,

    /// Read index within buffer
    read_cursor : usize,

    /// Last seen midi channel
    channel : u8,

    /// Currently running status
    running_status: ChannelMessagePrefix
}

pub type MidiChannel = u8;

#[derive(Clone, Copy)]
pub struct MidiNote {
    pub note: u8,
    pub velocity: u8
}

impl Default for MidiNote {
    fn default() -> Self { Self { note: 0, velocity: 0 } }
}

pub enum Message {
    NoteOn(MidiChannel, MidiNote),
    NoteOff(MidiChannel, MidiNote),
    ControlChange(MidiChannel, u8)
}

impl IncrementalMidiParser {
    pub fn new() -> IncrementalMidiParser {
        IncrementalMidiParser {
            buffer: [0; MIDI_BUFFER_SIZE],
            command_scratch: [0; SCRATCH_BUFFER_SIZE],
            scratch_index: 0,
            write_cursor: 0,
            read_cursor: 0,
            channel: 0,
            running_status: ChannelMessagePrefix::NONE
        }
    }

    /// Put values ready to be parsed
    pub fn push(&mut self, val: u8) {
        self.buffer[self.write_cursor] = val;
        self.write_cursor = (self.write_cursor + 1) & (MIDI_BUFFER_SIZE - 1)
    }

    pub fn pull(&mut self) -> Option<Message> {
        let byte = self.buffer[self.read_cursor];

        // new command
        if (byte & MIDI_COMMAND_BIT) != 0 {
            let status = match byte & MIDI_CMD_MASK {
                0x80 => ChannelMessagePrefix::NoteOff,
                0x90 => ChannelMessagePrefix::NoteOn,
                0xA0 => ChannelMessagePrefix::PolyKeyPresure,
                0xB0 => ChannelMessagePrefix::ControlChange,
                0xC0 => ChannelMessagePrefix::ProgramChange,
                0xD0 => ChannelMessagePrefix::ChannelPresure,
                0xE0 => ChannelMessagePrefix::PitchBend,
                _ => ChannelMessagePrefix::NONE
            };

            // forget everything seen previously, even if partial
            self.scratch_index = 0;
            self.running_status = status;
            self.channel = byte & MIDI_CHAN_MASK;
            None

        } else {
            // remember the seen byte
            self.command_scratch[self.scratch_index] = byte;
            self.scratch_index = (self.scratch_index + 1) % SCRATCH_BUFFER_SIZE;

            match self.running_status {
                ChannelMessagePrefix::NONE => None,
                ChannelMessagePrefix::NoteOff => {
                    // clear for the next run
                    self.scratch_index = 0;
                    let note = MidiNote {
                        note: self.command_scratch[0],
                        velocity: self.command_scratch[1]
                    };

                    Some(Message::NoteOff(self.channel, note))
                }

                ChannelMessagePrefix::NoteOn if self.scratch_index == 2 => {
                    // clear for the next run
                    self.scratch_index = 0;
                    let note = MidiNote {
                        note: self.command_scratch[0],
                        velocity: self.command_scratch[1]
                    };

                    Some(Message::NoteOn(self.channel, note))
                }

                ChannelMessagePrefix::ControlChange if self.scratch_index == 1 => {
                    self.scratch_index = 0;
                    Some(Message::ControlChange(self.channel, self.command_scratch[0]))
                }

                // not handled... yet
                ChannelMessagePrefix::PolyKeyPresure => { None }
                ChannelMessagePrefix::ProgramChange => { None }
                ChannelMessagePrefix::PitchBend => { None }
                ChannelMessagePrefix::ChannelPresure => { None }
                _ => None
            }
        }
    }
}

pub struct MidiUart {
    midi_uart : UartPeripheral<Enabled, UART0, ((), Pin<Gpio13, FunctionUart>)>,
    parser : IncrementalMidiParser 
}

impl MidiUart {
    pub fn init(
        uart0 : UART0,
        gpio : Pin<Gpio13, <Gpio13 as PinId>::Reset>,
        freq : HertzU32,
        resets: &mut RESETS
    ) -> MidiUart {

        let pins = ((), gpio.into_mode::<FunctionUart>());

        let conf =
            UartConfig::new(2400.Hz(), DataBits::Eight, None, StopBits::One);

        // Need to perform clock init before using UART or it will freeze.
        let uart = UartPeripheral::new(uart0, pins, resets)
            .enable(conf, freq)
            .unwrap();

        MidiUart {
            midi_uart: uart,
            parser : IncrementalMidiParser::new()
        }
    }

    /// Push data into the MIDI parser
    pub fn feed_data_into_parser(&mut self) {
        while self.midi_uart.uart_is_readable() {
            // we skip on error, who knows what can happen in here
            match self.midi_uart.read() {
                Err(_) => {}
                Ok(val) => self.parser.push(val)
            }
        }
    }

    pub fn try_read_command(&mut self) -> Option<Message> {
        self.parser.pull()
    }
}