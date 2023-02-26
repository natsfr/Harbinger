// Crappy template system

#define NB_OP		6

int16_t temp_freqs[NB_OP] = {0x40, 0x40, 0x20, 0x40, 0x20, 0x40};

int32_t temp_at_time[NB_OP] = 24575000;
int32_t temp_at_inc[NB_OP] = 10000;
int32_t temp_de_time[NB_OP] = 24575000;
int32_t temp_de_inc[NB_OP] = -10000;
int32_t temp_su_time[NB_OP] = 24575000;
int32_t temp_su_lvl[NB_OP] = 873710000;
int32_t temp_re_time[NB_OP] = 0;
int32_t temp_re_inc[NB_OP] = 0;
int32_t temp_amp[NB_OP] = 0;
uint32_t temp_omix = 0x3;
uint32_t temp_imod = 0x19;
