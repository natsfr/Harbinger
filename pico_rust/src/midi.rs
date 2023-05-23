use embedded_hal::serial::Read;
use rp2040_hal::{
    uart::{UartPeripheral, DataBits, UartConfig, StopBits, Enabled}, gpio::{PinId, bank0::Gpio13, Pin, FunctionUart},
    pac::{RESETS, UART0}};

use fugit::{RateExtU32, HertzU32};

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