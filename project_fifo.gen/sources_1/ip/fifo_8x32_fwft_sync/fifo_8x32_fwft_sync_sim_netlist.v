// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 28 22:56:32 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_8x32_fwft_sync/fifo_8x32_fwft_sync_sim_netlist.v
// Design      : fifo_8x32_fwft_sync
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_8x32_fwft_sync,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_8x32_fwft_sync
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
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
  wire [5:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [5:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
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
  (* C_FAMILY = "kintex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
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
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
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
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_8x32_fwft_sync_fifo_generator_v13_2_5 U0
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
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[5:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
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
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 79056)
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
