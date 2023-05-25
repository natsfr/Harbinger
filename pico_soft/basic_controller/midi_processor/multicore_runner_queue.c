/**
 * Copyright (c) 2020 Raspberry Pi (Trading) Ltd.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <stdio.h>
#include "pico/stdlib.h"
#include "pico/util/queue.h"
#include "pico/multicore.h"

#include "hardware/uart.h"
#include "hardware/irq.h"

#include "hardware/spi.h"
#include "hardware/dma.h"

#include "hardware/gpio.h"

#include "hardware/pio.h"

#include "midi_notes.h"
#include "sound_template.h"

#include "fast_spi.pio.h"

#include "screen.h"

#include "fpga_link.h"

#define LED                 25
#define UART_RX             13

#define SPI_FPGA_SCK        16
#define SPI_FPGA_CS         17
#define SPI_FPGA_MOSI0      18
#define SPI_FPGA_MOSI1      19

#define FPGA_TRIG0          20
#define FPGA_TRIG1          21
#define FPGA_TRIG2          22
#define FPGA_TRIG3          26
#define FPGA_TRIG4          27
#define FPGA_TRIG5          28

#define IDLE                    0
#define NOTE_ON_STATE           1
#define NOTE_OFF_STATE          2

#define FETCH_NOTE          0
#define FETCH_VELO          1

#define NOTE_ON             0x90
#define NOTE_OFF            0x80
#define PKP                 0xA0 // Poly Key Pressure
#define CC                  0xB0 // Control change
#define PC                  0xC0 // Program change
#define CP                  0xD0 // Channel Pressure
#define PITCH_BEND          0xE0

#define TIME_CLOCK          0xF8
#define TIME_START          0xFA
#define TIME_CONT           0xFB
#define TIME_STOP           0xFC

#define MIDI_CHAN           2

#define MIDI_CHAN_MASK      0x0F
#define MIDI_CMD_MASK       0xF0
#define MIDI_MSB_MASK       0x80

#define POLYPHONY           6
#define NB_OP               6


volatile SET_VOICE voices[POLYPHONY];
volatile SET_FREQ freqs[POLYPHONY];
volatile TRIG trigcmd;
volatile NOP nop;

volatile OP_FREQS_FACTOR op_factors[POLYPHONY];
volatile NOTE notes[POLYPHONY];

volatile uint8_t midi_array[256];
volatile uint8_t midi_count = 0;

volatile uint32_t dma_tx;

volatile uint8_t led_state = 0;

volatile uint8_t op_are_set = 0;

inline int16_t fixed_SQ15_S1Q6(int16_t a, int16_t b, uint8_t oflow) {
    int32_t c = (int32_t)a * (int32_t)b;
    
    int32_t d = 0xFFFF0000 & c;
    oflow = (d != 0xFFFF0000) && (d != 0);
    
    c = 0x0000FFFF & (c >> 7);
    
    return (int16_t)c;
}

inline int16_t fixed_SQ15_S7Q4(int16_t a, int16_t b, uint8_t oflow) {
    int32_t c = (int32_t)a * (int32_t)b;
    
    int32_t d = 0xF8000000 & c;
    oflow = (d != 0xF8000000) && (d != 0);
    
    c = 0x0000FFFF & (c >> 11);
    
    return (int16_t)c;
}

// Used to calculate Frequency for each operator
// Midi freq is < 26 bit we limit the factor to the range 0 -> 15.9375 in 0.0625 step
// We cant have overflow unless "a" (the freq) is invalid
inline int32_t fixed_26Q0_4Q4(uint32_t a, uint8_t b, uint8_t oflow) {
    uint64_t c = (uint64_t)a * (uint64_t)b;
    
    c = 0xFFFFFFFF & (c >> 4);
    
    return (uint32_t)c;
}

// Util fpga function
void send_conf(SET_VOICE *v) {
    while(dma_channel_is_busy(dma_tx)); // We block until DMA is free
    dma_channel_transfer_from_buffer_now (dma_tx, v, sizeof(SET_VOICE)/sizeof(uint32_t));
}

void send_freqs(SET_FREQ *f) {
    while(dma_channel_is_busy(dma_tx)); // We block until DMA is free
    dma_channel_transfer_from_buffer_now (dma_tx, f, sizeof(SET_FREQ)/sizeof(uint32_t));
}

void send_trigs(TRIG *t) {
    while(dma_channel_is_busy(dma_tx)); // We block until DMA is free
    dma_channel_transfer_from_buffer_now (dma_tx, t, sizeof(TRIG)/sizeof(uint32_t));
}

void send_nop(NOP *n) {
    while(dma_channel_is_busy(dma_tx)); // We block until DMA is free
    dma_channel_transfer_from_buffer_now (dma_tx, n, sizeof(NOP)/sizeof(uint32_t));
}

void init_voices() {
    nop.cmd_voice = 0;
    for (uint8_t i = 0; i < POLYPHONY; i++) {
        SET_VOICE v = voices[i];
        SET_FREQ f = freqs[i];
        for (uint8_t j = 0; j < NB_OP; j++) {
            v.at_time[j] = temp_at_time[j];
            v.at_inc[j] = temp_at_inc[j];
            v.de_time[j] = temp_de_time[j];
            v.de_inc[j] = temp_de_inc[j];
            v.su_time[j] = temp_su_time[j];
            v.su_lvl[j] = temp_su_lvl[j];
            v.re_time[j] = temp_re_time[j];
            v.re_inc[j] = temp_re_inc[j];
            v.amplitude[j] = temp_amp[j];
            
            op_factors[i].factors[j] = (j+1) << 4;
        }
        v.modin_1 = temp_modin_1;
        v.modin_2 = temp_modin_2;

        v.cmd_voice = 0x01 << CMD | (1 << i) << VOICES;
        send_conf(&v);
        
        send_nop(&nop); // Synchro problem on the FPGA side
    }
}

void set_freqs(uint8_t voice) {
    int32_t f = note_freq[notes[voice].note];
    for (uint8_t i = 0; i < NB_OP; i++) {
        freqs[voice].freq[i] = fixed_26Q0_4Q4(f, op_factors[voice].factors[i], 0);
    }
    
    freqs[voice].cmd_voice = 0x03 << CMD | (1 << voice) << VOICES;
    freqs[voice].ampmod = (notes[voice].velo * 258) << 16; // We scale the 127 velocity level to a 16 bit 0x7FFF Yeah an other crappy code ! :D
    send_freqs(&freqs[voice]);
    send_nop(&nop); // Synchro problem on the FPGA side
}

void trig_voices() {
    uint8_t voices = 0;
    for (uint8_t i = 0; i < POLYPHONY; i++) {
        voices |= notes[i].trig << i;
    }
    trigcmd.cmd_voice =  0x02 << CMD | voices << VOICES;
    gpio_put(LED, led_state);
    send_trigs(&trigcmd);
    led_state = !led_state;
    send_nop(&nop); // Synchro problem on the FPGA side
}

// Init PIO and DMA
void fpga_link_init () {
    PIO pio = pio0;
    uint32_t sm = 0;
    uint32_t offset = pio_add_program(pio, &fast_spi_pio_program);
    
    pio_dspi_cs_init(pio, sm, offset, 32, SPI_FPGA_SCK, SPI_FPGA_MOSI0);
    
    dma_tx = dma_claim_unused_channel(true);
    dma_channel_config c = dma_channel_get_default_config(dma_tx);
    channel_config_set_transfer_data_size(&c, DMA_SIZE_32);
    
    channel_config_set_dreq(&c, pio_get_dreq(pio, sm, true));
    
    dma_channel_configure(dma_tx, &c,
                          &pio->txf[sm], // write address
                          &voices[0], // read address
                          sizeof(SET_VOICE)/sizeof(uint32_t), // element count (each element is of size transfer_data_size)
                          false); // don't start yet
    
    
}

// Init screen
void init_screen(void) {
    
}

// CORE1 code
void core1_entry(void) {
    while(1) { // FSM handling the SPI screen and control also handling calculation for synth parameter
        
    }
}

// RX interrupt handler
void on_uart_rx(void) {
    while (uart_is_readable(uart0)) {
        midi_array[midi_count] = uart_getc(uart0);
        midi_count++;
    }
}

int main() {
    
    gpio_init(LED);
    gpio_set_dir(LED, GPIO_OUT);
    gpio_put(LED, 1);

    multicore_launch_core1(core1_entry);
    
    fpga_link_init();
    
    // Connect midi uart
    
    uart_init(uart0, 2400);
    
    gpio_set_function(UART_RX, GPIO_FUNC_UART);
    
    int __unused actual = uart_set_baudrate(uart0, 31500);
    
    uart_set_hw_flow(uart0, false, false);
    
    uart_set_format(uart0, 0, 1, UART_PARITY_NONE);
    
    uart_set_fifo_enabled(uart0, false);
    
    irq_set_exclusive_handler(UART0_IRQ, on_uart_rx);
    irq_set_enabled(UART0_IRQ, true);
    
    uart_set_irq_enables(uart0, true, false);
    
    uint8_t midi_state = IDLE;
    uint8_t note_state = FETCH_NOTE;
    uint8_t midi_index = 0;
    
    uint32_t midi_timecount = 0;
    uint8_t led_tick = 0;
    uint16_t x = 0;
    
    for (uint8_t i = 0; i < POLYPHONY; i++) {
        notes[i].note = 0;
        notes[i].velo = 0;
        notes[i].trig = 0;
    }
    
    init_voices();
    
    uint8_t current_voice = 0;
    uint8_t active_voices = 0;
    
    while(1) {



        if (midi_index != midi_count) {
            uint8_t midi_current = midi_array[midi_index];
            midi_index++;
            switch(midi_state) {
                case IDLE:
                        if ((midi_current & MIDI_CHAN_MASK) == MIDI_CHAN) {
                            if ((midi_current & MIDI_CMD_MASK) == NOTE_ON) {
                                midi_state = NOTE_ON_STATE;
                                note_state = FETCH_NOTE;
                            } else if ((midi_current & MIDI_CMD_MASK) == NOTE_OFF) {
                                midi_state = NOTE_OFF_STATE;
                                note_state = FETCH_NOTE;
                            }
                        }
                    break;
                case NOTE_ON_STATE:
                    if ((midi_current & MIDI_MSB_MASK) == 0) { // It's a data message we stay in the same mode
                        if (note_state == FETCH_NOTE) {
                            for (uint8_t i = 0; i < POLYPHONY; i++) {
                                if (notes[i].note == midi_current || notes[i].note == 0) {
                                    notes[i].note = midi_current;
                                    current_voice = i;
                                    break;
                                }
                            }
                            note_state = FETCH_VELO;
                        } else if (note_state == FETCH_VELO) {
                            notes[current_voice].velo = midi_current;
                            notes[current_voice].trig = (midi_current != 0) ? 1 : 0;
                            if(midi_current == 0) notes[current_voice].note = 0;
                            note_state = FETCH_NOTE;
                            set_freqs(current_voice);
                            trig_voices();
                        }
                    } else if ((midi_current & MIDI_CHAN_MASK) == MIDI_CHAN) {
                        if((midi_current & MIDI_CMD_MASK) == NOTE_OFF) {
                            midi_state = NOTE_OFF_STATE;
                            note_state = FETCH_NOTE;
                        }
                    } else if((midi_current & MIDI_CHAN_MASK) != MIDI_CHAN) {
                        if ((midi_current & MIDI_CMD_MASK) == NOTE_ON || (midi_current & MIDI_CMD_MASK) == NOTE_OFF) {
                            midi_state = IDLE;
                            note_state = FETCH_NOTE;
                        }
                    }
                    break;
                case NOTE_OFF_STATE:
                    if ((midi_current & MIDI_MSB_MASK) == 0) { // It's a data message we stay in the same mode
                        if (note_state == FETCH_NOTE) {
                            for (uint8_t i = 0; i < POLYPHONY; i++) {
                                if (notes[i].note == midi_current) {
                                    notes[i].note = 0;
                                    current_voice = i;
                                    break;
                                }
                            }
                            note_state = FETCH_VELO;
                        } else if (note_state == FETCH_VELO) {
                            notes[current_voice].velo = midi_current;
                            notes[current_voice].trig = 0;
                            note_state = FETCH_NOTE;
                            trig_voices();
                        }
                    } else if ((midi_current & MIDI_CHAN_MASK) == MIDI_CHAN) {
                        if((midi_current & MIDI_CMD_MASK) == NOTE_ON) {
                            midi_state = NOTE_ON_STATE;
                            note_state = FETCH_NOTE;
                        }
                    } else if((midi_current & MIDI_CHAN_MASK) != MIDI_CHAN) {
                        if ((midi_current & MIDI_CMD_MASK) == NOTE_ON || (midi_current & MIDI_CMD_MASK) == NOTE_OFF) {
                            midi_state = IDLE;
                            note_state = FETCH_NOTE;
                        }
                    }
                    break;
                default:
                    
                    break;
            }

            if(midi_current == TIME_CLOCK) {
                midi_timecount++;
                if(midi_timecount == 23) {
                    led_tick = !led_tick;
                    midi_timecount = 0;
                    //gpio_put(LED, led_tick);
                }
            }
        }
    }
}
