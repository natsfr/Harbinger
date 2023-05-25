#ifndef fpga_link_h
#define fpga_link_h

#define V0	0x01
#define V1	0x02
#define V2	0x04
#define V3	0x08
#define V4	0x10
#define V5	0x20

#define ALLV	0x3F

#define OP0	0x01
#define OP1	0x02
#define OP2	0x04
#define OP3	0x08
#define OP4	0x10
#define OP5	0x20

#define ALLOP	0x3F

#define MIXOUT	0x6

#define MODI_0	0x0
#define MODI_1	0x6
#define MODI_2	0xC
#define MODI_3	0x12
#define MODI_4	0x18
#define MODI_5	0x0

#define CMD 0x18
#define VOICES 0x10

/* ================================== */
/* Structure of data sent on the link */
/* ================================== */

typedef struct __attribute__((__packed__)) {
	uint32_t cmd_voice;
} NOP;

typedef struct __attribute__((__packed__)) {
    uint32_t cmd_voice;
	uint32_t at_time[6];
	int32_t at_inc[6];
	uint32_t de_time[6];
	int32_t de_inc[6];
	uint32_t su_time[6];
	int32_t su_lvl[6];
	uint32_t re_time[6];
	int32_t re_inc[6];
	int32_t amplitude[6];
	uint32_t modin_1;
	uint32_t modin_2;
} SET_VOICE;

// cmd_voice: |31 24|23 16|15 0|
//            |cmd  |voice|rsvd|
// modin_1: |31   |   30|29 24|23 18|17 12|11  6|5   0|
//          |rsvd |OShot|modi4|modi3|modi2|modi1|modi0|
// modin_2: |31                   12|11  6|5   0|
//          |rsvd                   |muxo |modi0|

typedef struct __attribute__((__packed__)) {
    uint32_t cmd_voice;
} TRIG;

typedef struct __attribute__((__packed__)) {
    uint32_t cmd_voice;
	int32_t freq[6];
	int32_t ampmod;
} SET_FREQ;

/* ================================== */
/* Structure of internal data         */
/* ================================== */


// MIDI NOTE
typedef struct __attribute__((__packed__)) {
    uint8_t note;
    uint8_t velo;
    uint8_t trig;
} NOTE;

typedef struct __attribute__((__packed__)) {
	uint8_t factors[6];
} OP_FREQS_FACTOR;

#endif
