// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue May 16 22:11:12 2023
// Host        : Hellgate running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/nats/data/projects/Harbinger/HDL_v2/vivado_crap/harb_v2/harb_v2.gen/sources_1/ip/SPI_FIFO/SPI_FIFO_sim_netlist.v
// Design      : SPI_FIFO
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SPI_FIFO,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module SPI_FIFO
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [6:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [6:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [6:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "7" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "127" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "126" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "7" *) 
  (* C_RD_DEPTH = "128" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "7" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "7" *) 
  (* C_WR_DEPTH = "128" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "7" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  SPI_FIFO_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[6:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[6:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[6:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module SPI_FIFO_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module SPI_FIFO_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module SPI_FIFO_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire [5:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [6:0]dest_out_bin;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module SPI_FIFO_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire [5:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [6:0]dest_out_bin;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module SPI_FIFO_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module SPI_FIFO_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 98192)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
