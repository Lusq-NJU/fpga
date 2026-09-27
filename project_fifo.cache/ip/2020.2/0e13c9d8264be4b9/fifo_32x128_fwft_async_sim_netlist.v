// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 21 21:27:02 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_32x128_fwft_async_sim_netlist.v
// Design      : fifo_32x128_fwft_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_32x128_fwft_async,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
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
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
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
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintex7" *) 
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
        .rd_rst_busy(rd_rst_busy),
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
        .wr_rst_busy(wr_rst_busy));
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 108736)
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
