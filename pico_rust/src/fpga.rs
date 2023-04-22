pub const NB_OP : usize = 6;

#[repr(packed(1))]
pub struct TimeInc {
    /// Duration (ms I guess?)
    time : i32,
    /// increment per... errrh whatever
    inc  : i32
}

#[repr(packed(1))]
pub struct Adsr {
    attack : TimeInc,
    decay  : TimeInc,
    sustain : TimeInc,
    release : TimeInc
}

#[repr(packed(1))]
pub struct FreqPar {
    frequency : [i32; NB_OP]
}

#[repr(packed(1))]
pub struct Operator {
    envelope : Adsr,

    amp : i32
}

pub struct Conf {
    /// Set realtime frequency parameters for each op in each voice
    ops_freq : FreqPar,
    /// Shared parameter between operator
    ops : Operator,
    /// Output mixer 26|0:6|omix   | Parameters shared by all voice
    omix : u32,
    /// 14|0:18|imod               | those represent the "algorithm"
    imod : u32 ,
    /// 26|0:6|trigger
    trigger : u32
}

/*
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
    
    
} */
