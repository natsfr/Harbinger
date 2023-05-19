// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue May 16 22:11:12 2023
// Host        : Hellgate running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPI_FIFO_sim_netlist.v
// Design      : SPI_FIFO
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SPI_FIFO,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
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
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 98832)
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
