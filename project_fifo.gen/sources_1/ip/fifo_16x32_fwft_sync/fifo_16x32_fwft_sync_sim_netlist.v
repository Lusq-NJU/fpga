// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Sep 29 00:48:45 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_16x32_fwft_sync/fifo_16x32_fwft_sync_sim_netlist.v
// Design      : fifo_16x32_fwft_sync
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_16x32_fwft_sync,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_16x32_fwft_sync
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [15:0]din;
  wire [15:0]dout;
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
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
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
  fifo_16x32_fwft_sync_fifo_generator_v13_2_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 79632)
`pragma protect data_block
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
mZ4E
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
