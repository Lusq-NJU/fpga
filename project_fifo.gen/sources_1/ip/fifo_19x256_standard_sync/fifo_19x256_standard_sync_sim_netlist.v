// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 13 20:08:35 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_19x256_standard_sync/fifo_19x256_standard_sync_sim_netlist.v
// Design      : fifo_19x256_standard_sync
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_19x256_standard_sync,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_19x256_standard_sync
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [18:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [18:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [18:0]din;
  wire [18:0]dout;
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
  (* C_DIN_WIDTH = "19" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "19" *) 
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
  fifo_19x256_standard_sync_fifo_generator_v13_2_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 80016)
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
