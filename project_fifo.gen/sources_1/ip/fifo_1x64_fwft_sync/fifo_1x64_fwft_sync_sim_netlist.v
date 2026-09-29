// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 27 23:26:14 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_1x64_fwft_sync/fifo_1x64_fwft_sync_sim_netlist.v
// Design      : fifo_1x64_fwft_sync
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_1x64_fwft_sync,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_1x64_fwft_sync
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [0:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [0:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [0:0]din;
  wire [0:0]dout;
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
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "7" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "1" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "1" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "63" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "62" *) 
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
  (* C_RD_DEPTH = "64" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "6" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "7" *) 
  (* C_WR_DEPTH = "64" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "6" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_1x64_fwft_sync_fifo_generator_v13_2_5 U0
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[6:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 82240)
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
