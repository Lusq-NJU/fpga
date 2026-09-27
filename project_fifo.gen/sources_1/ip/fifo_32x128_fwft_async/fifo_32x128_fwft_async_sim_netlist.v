// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 21 21:27:02 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_32x128_fwft_async/fifo_32x128_fwft_async_sim_netlist.v
// Design      : fifo_32x128_fwft_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_32x128_fwft_async,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_32x128_fwft_async
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
  fifo_32x128_fwft_async_fifo_generator_v13_2_5 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_32x128_fwft_async_xpm_cdc_gray
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
module fifo_32x128_fwft_async_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_32x128_fwft_async_xpm_cdc_single
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
module fifo_32x128_fwft_async_xpm_cdc_single__2
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
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_32x128_fwft_async_xpm_cdc_sync_rst
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
module fifo_32x128_fwft_async_xpm_cdc_sync_rst__2
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
