// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 13 21:56:31 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_36x256_standard_sync/fifo_36x256_standard_sync_sim_netlist.v
// Design      : fifo_36x256_standard_sync
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_36x256_standard_sync,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_36x256_standard_sync
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [35:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [35:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [35:0]din;
  wire [35:0]dout;
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
  wire [7:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [7:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [7:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "8" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "36" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "36" *) 
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
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "254" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "253" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "8" *) 
  (* C_RD_DEPTH = "256" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "8" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "8" *) 
  (* C_WR_DEPTH = "256" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "8" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_36x256_standard_sync_fifo_generator_v13_2_5 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[7:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[7:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[7:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 78032)
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
