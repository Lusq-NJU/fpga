// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 21 20:52:20 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_16x128_fwft_async/fifo_16x128_fwft_async_sim_netlist.v
// Design      : fifo_16x128_fwft_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_16x128_fwft_async,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_16x128_fwft_async
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [15:0]din;
  wire [15:0]dout;
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
  fifo_16x128_fwft_async_fifo_generator_v13_2_5 U0
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
module fifo_16x128_fwft_async_xpm_cdc_gray
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
module fifo_16x128_fwft_async_xpm_cdc_gray__2
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
module fifo_16x128_fwft_async_xpm_cdc_single
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
module fifo_16x128_fwft_async_xpm_cdc_single__2
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
module fifo_16x128_fwft_async_xpm_cdc_sync_rst
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
module fifo_16x128_fwft_async_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 107792)
`pragma protect data_block
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
pw4vR3E=
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
