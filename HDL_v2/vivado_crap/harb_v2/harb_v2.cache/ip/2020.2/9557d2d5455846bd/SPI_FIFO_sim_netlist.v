// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue May 16 22:05:53 2023
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
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
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
  wire NLW_U0_valid_UNCONNECTED;
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
  (* C_HAS_VALID = "0" *) 
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
        .valid(NLW_U0_valid_UNCONNECTED),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 98512)
`pragma protect data_block
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
cBNc23GTrrHoHKvWYmLHfQ==
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
