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

#include "fast_spi.pio.h"

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

#define POLYPHONY           3
#define NB_OP               6

typedef struct __attribute__((__packed__)) {
    uint8_t note;
    uint8_t velo;
    uint8_t trig;
} NOTE;

typedef struct __attribute__((__packed__)) {
    // ADSR parameters
    int32_t at_time;
    int32_t at_inc;
    int32_t de_time;
    int32_t de_inc;
    int32_t su_time;
    int32_t su_lvl;
    int32_t re_time;
    int32_t re_inc;
    // Fixed Amplitude parameters (cancel ADSR settings)
    int32_t amp;
} OPERATOR;

typedef struct __attribute__((__packed__)) {
    // Frequency based on note
    int32_t freq[NB_OP];
} FREQPAR;

typedef struct __attribute__((__packed__)) {
    FREQPAR ops_freq[POLYPHONY]; // Set realtime frequency parameters for each op in each voice
    OPERATOR ops[NB_OP]; // Shared parameter between operator
    uint32_t omix; // Output mixer 26|0:6|omix   | Parameters shared by all voice
    uint32_t imod; // 14|0:18|imod               | those represent the "algorithm"
    uint32_t trigger; // 26|0:6|trigger
} CONF;

volatile CONF conf_voices;
volatile NOTE notes[POLYPHONY];

volatile uint8_t midi_array[256];
volatile uint8_t midi_count = 0;

uint32_t dma_tx;

uint8_t led_state = 0;

volatile uint8_t op_are_set = 0;

// Parameter calculation
void calc_voice(uint8_t note_num) {
    int16_t freq = note_freq[notes[note_num].note];
    
    for (uint8_t i = 0; i < NB_OP; i++) {
        if (!op_are_set) { // Check if some operator parameter changed
            // Need to get parameter from UI
            conf_voices.ops[i].amp = 0;
            
            // Same here
            conf_voices.ops[i].at_time = 0;
            conf_voices.ops[i].at_inc = 0;
            conf_voices.ops[i].de_time = 0;
            conf_voices.ops[i].de_inc = 0;
            conf_voices.ops[i].su_time = 24575000;
            conf_voices.ops[i].su_lvl = 873710000;
            conf_voices.ops[i].re_time = 0;
            conf_voices.ops[i].re_inc = 0;
        }
        
        if(notes[note_num].trig)
            conf_voices.ops_freq[note_num].freq[i] = (freq * (i + 1)) >> (2 * i);
        else
            conf_voices.ops_freq[note_num].freq[i] = 0;
    }
    
    op_are_set = 1;
    
    // Operator connection
    conf_voices.omix = 0x3;
    conf_voices.imod = 0x19;
    
    conf_voices.trigger = 0;
    
    for (uint8_t i = 0; i < POLYPHONY; i++) {
        conf_voices.trigger |= notes[i].trig << i;
    }
    
    // Dirty way to wait !
    gpio_put(LED, led_state);
    while(dma_channel_is_busy(dma_tx));
    led_state = !led_state;
    
    //dma_start_channel_mask((1u << dma_tx));
    dma_channel_set_read_addr(dma_tx, &conf_voices, true);
    
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
                          &conf_voices, // read address
                          sizeof(conf_voices)/sizeof(uint32_t), // element count (each element is of size transfer_data_size)
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
    
    for (uint8_t i = 0; i < POLYPHONY; i++) {
        notes[i].note = 0;
        notes[i].velo = 0;
        notes[i].trig = 0;
    }
    
    uint8_t current_voice = 0;
    
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
                            //gpio_put(LED, 1);
                            // Send the note here
                            calc_voice(current_voice);
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
                            //gpio_put(LED, 0);
                            // Send the note here
                            calc_voice(current_voice);
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
                }
            }
        }
    }
}
