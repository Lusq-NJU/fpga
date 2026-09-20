// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Sep 17 20:18:05 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_1x32_standard_sync/fifo_1x32_standard_sync_sim_netlist.v
// Design      : fifo_1x32_standard_sync
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_1x32_standard_sync,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_1x32_standard_sync
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
  wire [4:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [4:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [4:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "5" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "30" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "29" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "5" *) 
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
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "5" *) 
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
  fifo_1x32_standard_sync_fifo_generator_v13_2_5 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[4:0]),
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
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[4:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[4:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 73216)
`pragma protect data_block
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
oFC1T8xl3KUamU4Qbn8aA6Kkd6sVIDx9uUyIJg==
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
