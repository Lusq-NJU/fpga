// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Sep 19 00:16:53 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_10x256_fwft_async/fifo_10x256_fwft_async_sim_netlist.v
// Design      : fifo_10x256_fwft_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_10x256_fwft_async,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_10x256_fwft_async
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [9:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [9:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [9:0]din;
  wire [9:0]dout;
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
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "8" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "10" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "10" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "255" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "254" *) 
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
  fifo_10x256_fwft_async_fifo_generator_v13_2_5 U0
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
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[7:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[7:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_10x256_fwft_async_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
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
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
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
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
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
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_10x256_fwft_async_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
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
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
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
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
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
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_10x256_fwft_async_xpm_cdc_single
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
module fifo_10x256_fwft_async_xpm_cdc_single__2
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
module fifo_10x256_fwft_async_xpm_cdc_sync_rst
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
module fifo_10x256_fwft_async_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 111328)
`pragma protect data_block
uGFA64uwdHpZDksftgDG/Hgt4QDs9yTwAi+AZEBQdUtELlXgwh4riUjDuO7cAqtP7NIupjRGJs0T
rHJ2PKhBucscSxSK39bb/4d/0//WZ0yH0SZLcVflqZTVsh6EyZQ5daGsIxE95l+xqgxsRwK8Z3xH
Btc8wJqj1HY7M2Vpd59JJJYTCna+1+XDGqIUlXn62vlSEg3qGUdeqddeSM4QE8ZgArHjl+DsTKSm
EHID1QwPZtWYyvtZe4hsM1xrIwyj34qkjMc89XFKV+7SxIFDMr/4WAd2lHk2/PZsELZv5vyeJE2M
16pm/XWKnRJtYwTzcJ8ApUql//xdS48hIDysOXnWXlZQAIf+aEAs9CPOq4hBbbJDIQuFm+NhveYb
3kZ/c6ZZwk8d/GzLz/ylTUTYH/0kGSCgfqcUJIQGEprgy6V65sjAYrRyn+HaAP+L5do92YDCR7k+
MVRImf90ibaCc8bZy5aVS7Ig+oEZoAZ74vXbwysZmdeC34/EGXWA4maFfv3j0LhHbOZx36HZXqNq
LkrcuoEzVDiU2buAsUWExMjU/zN3dS7ZBy9dfRmyetmmirVJnR5GJKEAdjrwGdgVEHxhck2332lM
o0c5xnKtX+EaUQofaNzEHxcDd18a8b2Rs6mp6GmHvzBq+/l2c2OQX5NTcVelS8Ah/cO2s8c2Pdkp
p35skyEI6e7lBrJYTUza4kxQOfF/aJLuC7JzajknUg2Fb4rsE2jkh5YXjk+GyZ73834qfk+evG8B
wCd94wSs8QlACtBPoByZEFyqHHgPsv3PfqM8JGstfGZWkBik9dleHq8GT8aQ55zSAUTwEQlPrfjC
h0x8BlS8obYU3N3BCcxugnw/sz7/M5MX1v4+VHimRHX3kp+WoFuFC2ZH3HS/cn+RD2J4/OVBD4sd
qepLf93EsR1DH18AeyoD/+FzxJwESMXTT8qm1d6EB2qr1eSshFNW3SV6LOZQoHmz7SgXEnRXYylj
wPYEsZb0PyLZgiVQ1Q5ayso3Paax4HqKbf3w+a/YKz6E6ZuIlKwHGlUUB1Oa+Qokob1YAJMsXFBY
BiyNvyzHsh8ymPMlipafGCviXBO5UYljoxO5TVe4MRzBkA8+W5iEPU3ErfX1KC/u6xTpC46WWzLX
YjOFeyoPW8N2mpsfCwfLPrnQvcENw3/kTqxno7+bbmaBtviCISdn2a6alpmgFyQI+oUqJT8+vfcw
s0gTzgIS+ItdoqxV0yufUSbfzGGx22c4ixh66sNLpwiojoMFRsllLssnB7KMaBn3u8aaEDb16XPh
Q+oWg5FXK1iKFmxRSpg51PdY4zGEEw/vkblT4Bqcm236DKAU1pCD+QtaO9266DJq3XoQCrCFryct
OB5b+6WpN7Dd5TSoB4zu3pXRvHrOa8uCUqHKkLqKz6iMAy50giNq0YfMLhbjcv2HKUe4I7j9Lugm
NWTwIaNCacyvB1OYUhlBu3WygMTAEVZqosloCkSNp3pQL3tDvVBdFSuBHdw5vQto7nTDkCL+BzAR
BY69y77SF3keKCuVf+JJ6lWcqyFcco04xQPP4Lh8tvltnPDbuNdxS/Z0/Ti0DArgtMkitLD89odO
V+UgNXw9Upu3Cmy5W83MlFQtPD6T2fTJVhJbtQMuOeR/tPGjTi1nk1aeIq0iJF9hK49yRmMJvi49
dk1c8KqEXaJZxJi3J2jrgTsmrsc9otmgDnbEcMdAmrycG2FyfQbYaaLEkDNY7u0ixL29NBUGgXYf
7/ZmQuLBASWJpkTiDFhyaQBzEawv5sCFlTQtbdPQe8GDG+hl37z5sPlM6Pjn3iHV4naVQG7Q0izm
KRcmfs2XjqeqZ8m9+QYGwzNg4bPTZKZPGebiL0GflRq9oUECxztgy/j7lPow283tYM2aYr/beQAy
ENarg8kIAyOlzjwZtU60fEkhW4HnNHg9ZxsOJ9K7SjgFh+ty/QFNPZhJgRWEU83XHFd3HvuzNIya
ZEtutGZxQZcGpxsIY1IWR8f6gHTwsR7mqTkHaDRgafXE7IoXD0NTv5wNK0BtjvnVlbsAi4eob2t8
3vqda62ht2tUWSn/mvnX9zuX7Kqat6j7sQQjRNIKOLoCBgPRa5jG1Xd43nHDbf6KlfYQgDhlhcfC
OI/Rv8/MIxy2EsJu8bp9Rvl848tJGPHoQ0MyEqA8Unjy7rJzHWTW8oDbBitx9wK8Jtbem62+AMIX
9MBoh0Jyh3IKdZDRJ7X6HaymzVIUxTnHfDo4FRajQX0zkv7yvfXP+T89cFV7Q3iH4FgdO/pimAFW
mlnxiiVmfOP8SLZDqLv6zY1ZBskiGjHmMX4tfbFTRP0rdlRqsYW8DOcrxch5Kgows+9FNYU88KzF
cgkk2FHePRu2fbMWZOKznebOFMC8/oGPSZQVU5uOun2ycEDsq7SFUikNNOYl3XTDr+wYvcKYjdcO
JCVnq6YS9QNwNMPSE96TgOpsAq592zWJXDGQQ6znf/m3z/X93XzI6r6zLUKgOnbLdv8a2LpgS7fz
MJavq2FBB7ldg9y+hJuDluEX+hZny5CU5YXMBrNFMh8gVoUl7b+lwIayuim4mNCjDjwLy8ux2u3E
KmJfdxx8LklT57axMeFqKUA1PjUvwWDfAls/6OuRIy0Zbzb4JhoTYv0BPyqmoNV7jMIbXwap2xpq
Hf1kTQa/kbyUkumGZ9m3YhlqFCosZJlexrHEw12ejlUhorimjyOO1vMwcKKO4yHSQ3bcPL1N81hL
Mcwj/rHIxl1lom0uGyvNWV3JnJr5CsbXHVgxI5StldnOWLXgz5sYDm7ndO+38xGr5ZSJ2Yowkt+z
W8phb1fGergQKplFKRCYO93236pheM8bejvzrNyj8fNPoTzJ7zCBTM1TW1VaNC3GcHYvfjpHxL8I
WlPMK92Y0sub8osYi3hWCb3YPoGaJojJXr1qRG7ZctIuTy6u9XFJ6McekIxDlZbLKJoCBmjovp4X
eTQeHpQuV8ht9rmINxDFTPfYlHFPIEoy4OpurHIbVIFRQllu+9XklatBRxNuGz3kfitSMJF5SMER
EPNyc1m4yeldzYzegUHjkSJCtyPJdU1YkQ7d9s9g7pWhNKbGeWd3YifmdSWfZB63G5mS57o37uQJ
BdqFuhV0mkvXMsCidg/b9Bcd894H78SUhHcDWtlTVyvly2dS5Ni65rsChp0Gy5aOR5nsY2u/6e8j
tPA4xeifF4UJ8dpYtbniYDYK8WRJC4+IDaf70Kod3FxLPwB5czp3fPwwsApuw4IoIkyJ59mmOhL6
ogcfOphY9cjmDMsGMV+sGFdw09YWI03APqEW36I/ixweZolcAq8RZn6N9BUvpvHWxuEddfjEPsNP
VgklKGBe0U6dTvVXmievxPv4+YiNlZGgkSXfpY5dfwKoPdDSXsCoVRjauNJi8ioH7ju4YQcvYjhx
D4488i8dTMzdQRFMGXSwSLRHkZ61l+MFrhrr8K5W8z1Wtz/JUxaFaxwU2jX5Fk8eNlj8AEe/fitU
5fV9TEF+x7TdZrxqkpHmC0BSU8/4O//VKQ20A4pB7XYJ3XJg5iwSWz96OcSA6qdrFcjY4OtxeRM0
/wBsevyxq7L2NXd6FZagp0sBJM5SsgKm/ksoQjbBzYqbWhEQsGTJQ506FrbNROyo7eq/jhhrB3mh
XRD7juaE4FWq9pBNF3UrhCi1YQBGbLN12uFU5sf6+U+vsOv+UI0cwA6XOUu8hhqh7cIEr/KVzPNa
SLTw8z5bE7DcHUHmRLpX9213absXZA/N83UjfSINC8+BdmiSe0OIdsiAeoGUu6wtzkJlS0Fqphv+
Q4W0ZrE3QNAJEuUGxLPHKQf5JOLscZoJ+TY/uKfsGIznuZhn5XFd3FAuKHbyEW6wUUggvL0kFCXn
9Sc4MzBGqKnxqUq1sjHnZDP0YRKEC2mev1eoaClSGv3mWZSrfwpj1Jeo+cdSbg1q+7TR8KJ3o5Cu
mau+108TXTJhApVAR/cPoTUPJU18k1TRyNJgcOBbc+ghqj/fqGcrjLwg8a+7pOWPV/tLO9/tY6cl
8zIORIKbz9zxpa8RS0+K4GzeVVYWyjvAP6ijJkzfvVT8m0kyGFUSgIbq0qC4hd1gKvW5zLmC+6KT
47z2LwwdTwXv8A2MiPgK8FEYWfkyXP8PR+gjF0PT3wH47Oh603OAqDbaZeLacBj7/vBRrQVCfLkH
VG0BKlgyet/XuxptAzNv+9WM1brB6PnjGDu8PgV1ovKR4PnuvyzUhnKlICiZd4Th//+QcRAmSulX
3+l+Ojlgay1MoUrl7ilr5z7e2/XQt41AuIo1a70oDG7TQgmttuP7ieDaoXMLiITlqtv/nRtDqQES
N0QXaBxC9ehuqgzfYFlDO5AMUMdq2C6rt7wlQjUHb7xF2lZ7itR3XYU0udyFGDDN5gB8TbI7LnTg
cSCbA19Q6zCL9Gwe37FYVzql48YXYu9cNazYC/BQv0q1axBKzQzFamKDFBeZ4PAODAXKnNAadEJF
boKBmWCqYwEpZsgQ1XmOoQsdogGedXDbGZ4bc99peykKAcl508J1yQNob5Z6+VLLivHNw7PN7WNA
3sCC18tDMb1Br12TGFSeo04Hi2V4PKadZ8hTm+SXtc8RA6NSEfsmSQxUxaO0zUSWrNMUMqgyx1xa
N+HpQpZnMuT57RlVC1c6IWhBEcATDp0ACQwe6duEKpbaYmG0kihGUkx5gOHiC3rkIFiN5Wh7FmWf
3Phe+zElZiFrSV/2Fx8cGNrKTaSOfSnBEZz4HvZXawm9Qx3LyRnYubJ1e0BjcDpAmHPmhhk51/O5
JRYb02WqVxutk+LV1R7FphRz+iZOGtkCTFxJZHN6UVCl+xr/nMonkGKlUwnn9HCdN2kzKQcOoRP3
jli/FWeqO5i8eywYksMNO2X/c0OOqSHRYCnzzuPqmMNFItwZRU+IVICvpxVc6X6NhWWM4jyxw2Fm
goKRUqLcqkFziwSYTGmgOZ6bdTIMEXr3rWm8SpryrhwwpMwrG10Mjds2FJhzDfI7BQ8Jy3PbGjdY
z6GEKI0skk/VZws92Y/bOgtWdSokwM3IWJnS49Xi9pxLXZPopAtUj3Pl4H3aBg3K75BoBK4dbdeS
l5mV5SEgemTabiaTWNlNr4TdFvNfpSB7MWPauIhuXSMYS9Ai1Pr90Ohs+a+YoXmBMP0I8OsqW+q6
gqqQgUvyxYd/WsoANSODJbZmSEu7/kB80qFfIQ6cpgqaVyzWw9eV7XUpCgvYrPJkbL59TvpsATD9
oppzn5Kco1Doo/FRBkm6M1dbAndoNJcG0gTmYXex+5mUV56KQZThbiqJohWoBiMnJSLLTV+lWufi
qv8cNAKH8MeMWCulusnHDWaDAeDhMirYoTPPnsMwkzUMqpaEgyz1CFMtBGKuKSPSfL/YELY05noL
NOk6XcgerSr5tnsIuiZxKe+05lmGVoSENKTnoXxs8ammVpVnKVwMkeYOQ+ZHvIKGFAPaC0BODAJ+
TPafdAC/thWdYrU452cABai9bWzVRBzKgWs4/0hv6X2gaFlvOBSUNnQ3IFu9qebL8w+kezqaXymg
PQb6xrWHrqqb7Qs/NnVfIdUc/WEy78BmJ+qBsmK1ATM00RbUYyXSi7J32NvhzUVy215KCSJo9vtC
SowuPaAqyZlsC9V3cToLX4oNTDBD99z3sVsqgkzoyJ7QpDg+QWW0tpvMLPoHLDJGr84x78aVnwvS
mypRbs43hShQfwUvLrQnFtYbPYA8HV37xzciZYP40aWQBDRMHkJP7hKVaBIAxrgRN/EhM5zAPXO6
uBWICumtmoIlTpYeLaAINN4Os1xmhaXKKfjRTQAeAHdKeW8IwvG4DaYuy4v0k75vMXSsRQPwQ6fs
4g0yNy8Uu6yTtsZBqJLyHCDM6EjuvqVMCoFmRAC09YNEdfCPfckoE9Cjt3YZTxESpxVduDaaPE1C
c4FKdLRBMfg1Vihd4LxJpTb4XAaiBf+R4k4N7Ua1ARBeWtnKxVs9pwR0T3yOGPX8QZGvcPbJ6xim
gRVmKfc/fCS7kSwSn56w07sWV5uvcFB4b4RKyb6Zu5ujSegw6XBwXEUzlpLnuySKRU2gVf3Za7x9
MT0J8m9xUUqp/KA0AwPg3Gc66vXG4clCSq+cocbw8sKLyN/KKtazsHeNVJEtr0f3U7yVu7gC2CBN
eTFo7gnofKAQBanIR9PLyKkQGeNNzwAu0lVc+dbKXM6Iq+fmcXzP30LlZdfFACdnUmWsXSSB2Rj8
7Ofa03gEQ8Gdoxvgd1OgxdONgo2Ix4PwLbXR9r6bbWzhTJAW285RZhuYZMAtpFtGGhnMn/zRKVZc
iBkI5RAjQRt3IzjQcWej0qAa4BAL9KCM9wLgezIV0wwp6/Fj2fmTIjI4Pzuevn5PHh5bbhdq4opm
cMYmZZ8uZIgGRpAc9aS15VgCmYwhdFY7Km7r7ygkgExz76sB1vOg1vDpZK5RtjL6i7s9Bi/1NTgC
00+lZB8b7RTTgKawjryl8SLuLrudy+7aQHqGWIdbOlUXwewdHK5KnMijZT70O3+3AM3D8lvdDQWH
SubjYSEOEV4X8NLPqvygA4ebcr5pXgB2kjAeB53FjgrJak+s4TOmFQKqN/KVsC/NDXlIpxFc5YbA
9PGk/aMskN3GSR0UtCdzURGT0jGHAC9kGxCcJ+TFKdfDabL+Uu4Lyf6oCN5LG26qiX2koTcOqE2+
p0SlJ4OgChLGkRi4jD9BY5Uz1S3/njiZDh1lSnDXR6C4nIqQuoHb0G/uw/s/T4mv+mPjb6O1rp8g
7pKrcoSUDJHtd66XIDEfE3a/nv2401ANW3Gj0PZQZ8j4Xc83zGE6DIpwTlbkZunWHu3lVBFt+Kr5
MHmgRoO/mIHpm6IBwqG61KiAqcYbmg08YdalmKxafQ7fKsRk1aLtyIasZOO5G2a0tjNz1ZPK4eZv
ElOujjXTNjIVgTdWWwKAwlb9fkR3J3Vg5bOjEbLDsJ8nbAIwtqt0LFUcG/nMGWtJ8LYgWA9dRmKC
91t8Xd4Ji6zPz05AoJYJnRgaYLSKjDXn3jlM6HnwcY/+LISkeZJQXm5AQXe1Nx90iMEqIiScy5qM
LawI0DUorgDka/mG8h/IZ/WFK1/eaUIb3/pMMb0sFa/EZPshLoRCgq3eSZSiolfKYK9nCLQX/8Xs
nPsfQcXpcpVtbBOwSGOdd0QSgGiIR0OX46E73Y0XZHW9e5hQEiHOwSjDvHHNjjHsjT0KsO9K+zj9
oK+VxQPNbGqv6RY9pwzgDfl0XEls6O0B1OnoCiYk33PHpx3aHMajO8anAfcwUqQKYPcujMA6Vh85
eAhesnuHfiMmWbn1hqJmaxJ7qj54xmODuX3RQomzyp4+1qQh2sJ4WxaYQGpRO7J/DBaQDFcx1jAj
5VU6RQnWKb/wRU4E8S9FQzN18LJR1u+NT/ojx41w+PUuiSaOmCq1vOEH428qaMHGiwAqgo89BZPT
i3oNszhmwDU2xqb4NGRMhEM5BjCXhFV/iLNoBVUsY0Wc1c75RedOX4Lkw4bWDSfkNRbpxspE7ShT
O6dn52m3ESgaeJBKC+EithEu7kGipvka3T7Jg5l/CO10k8ZTIJIk6kIy3RJ8JKFgma0aOby3jFG8
zGgZOHgrPnITgtXmT+koO9nRbl+OqDU7CH4D2ymiNfQxyCHeGX4Y2cTeT47ET+JPZrYZAeUXVMvP
+E5/D0HqCPlZk0G8Wfg4rGLucmsAsehA6Eej4bUAfI4bs+9mdIYH7MsnWJtpL3lHTzz+I8RTNrS/
UA1pOQSdPlyTygvcz+5RV4XL1Rpp1qHSfqydc0ufHQY3i+eAByVoBhpSLfMuxKl8jw0f0vklY3Gm
rFAf99h2xbJXR38knMdF+u6ztOg5XNgmKUQ+9RXu/aqwkcAt6IvPFhrh4BTzYnCtMYfSW3VysX39
IqT3tTZDB2KNMAE+0M2z88+j3Kw1LxXJcEMnHnqwq3WlRJjgspPXN3+YUNJLkSMS1TAZe8aaHdtU
PCfOE+YUtj9yxx1ALdxm1Vf9ZzvJvHLmXJ9bwjTNvR6AHu8yTxZ1I4P+2A36YVkf8aXjYLTLvnhe
BkGBs1WrIz8y3EeUITMpLrsT1a45t3lUq6qd9+SUnYvIYVhTDJvnAA8TLQlH2VovZbBoDYcJLlg6
p/+0DvAvLh72mB8KOn432L3Z+Q5dtMNEY2b4Q2hym19fc4eaCQ5V5ym6cArM9FOdEDllW9nms2Qh
DZWaVwJmR25xeghW49uiUR2y/CGIBU7mvijAez7xJ6gPviu3RUW9iqMytH9oFVA3jkfWcg0nzBBX
riIXawhTNWv2Njyu1GOUuT4QeASLwXCEdaa6RxWrKPPJ0hniometNbT3AWCQvnjd4I1uT77a6jaf
sMF0mYDVzS4hBaGtqUWGnAqVEiaJifqfL2b/FOmhApJDiACiiG1Qtd2b8Ukg4bU1IAeGKVQMZaJg
+5py9Yc4oWrJHPKBURHabN9vmqnPIHm/rI3iwjINSmP8kZqDvpmJBnOXcqUIjXTEQ9Zh7Mi4qHM/
wwVY9jJnb5OQ89A3LEvd6LHWr+tIIaMRytCtVOl9Ui5VpYczSj0uzQEh1Y3g8QV+EHJxDPABMEqG
fjFNb07wJWhDsg2B3Qg8dfaSdJEXUVe7MOLbuZ5YdmmmHUDPOfk7KdoM3LN1tReQjuvj3ElIiKmF
fnJ58tkKskHN1h83juuou51SYFqgpUTs1Eqq2aJ+QEhcpA0Ohp9czijO5UHvberY6jnA2dIMNEYA
jsfaoT+Z7NgIyCMVBjhbB0bmhcORffNgeyT1nvbKSKo/YqVOtAEemyYHvmZSgqI3ScqZ7cbOIuh8
agjFd+jQEm4Q8X2GmWcJLwbJJKt34X0oyvH+K0J3hYVwQ/SUz1ndhMl3z8y9RhFSCj1rAtL22+pq
KRdxJfYP11eBGmniMSX9ceYIoo9iiAcreebAW82k7PS90iD2ltRCA23MOEmJ+gPYiGE0o1i/V3ol
SVIKeEmMm1szmbJ/cbuCKFTzFyMw4Ggha1g+4srW2OF5TJjhTNXFtuGcQN1cgQpKfLxJ1w6w/0Sh
H+0FFAi2kOXCVr9pktdlGlwj50K5BYgwEak8gb97w8ZBU63V4SyKFT27G/LFf7EXBtqNgYzRDXSy
0teKgzZI1GDOyon2YpPm06Mzv/uDa1zKEWgfZAbGSYtZWr2TTO9/OGqIf7vnm5MvNYaB31hdFlhD
EWesAsuuFNY08kiYWZxrn5aCGr02aBsWwx2OLM3BoUnzhNpos7l/APXNoWdJ7v66nqqTGZuGCPrn
n6pjw4+HhgbxhfVczIngLZRv5DfUQO4jYKqQjjrpblQOWffyZTIMf96PJW5gVWcpNjN17aSomVs+
9JqEkFpqa5IPYxQtEG8JX6AL9T4E9gGPMHhk0W/SfaI66C03ofJ0b4M9YNacvSlj4chJCt7vaM3x
qELKFgJBlC9uYoEAZmsXGFYvtZGw3TR/b6kvG/ioiUWIym1zQPuEXxhk1Mq0ZKatihHIKJJ9TZkf
R/vTdMCNMQMs2cVJJWSdxFFlfGfsgmyHJgtb8s2deOwgiKMBVyQVyBeTgrIzTGpA1lLq83F00zcx
UxRzmVSaUFyudYpYX1VKdlmkTic6Fa0OKfHjt4O9IOAERRs4hnFIrKXlv3knmmzBOgQV6DbJiRVr
pjmM4ZG+7yzxVReDPXfaCPDxdptJz7yYu8OiXk4YZz9nsN/RNKPOXfrUFXoYRNvKF0gDfRSlQSfk
a+wZKLUF1XZcC20VNF2ki/LinpV6yk8lye1zha1n9UaHJfHmMGQLK1nx+8uiK6XISeabF1Xcn7DC
RZ54mWuZrmv2A39mUxiN/7Ck4dwLvE7joiB0FldDPpA2NAXgVyNv0syqFdWRCyYuJ/2nw0cc/RGA
rU9meW1lnI7iR/buahaQ+wWZCLAv9ctmaZAKPN1Fcmyo0GWZqkNUT99fuWca7fC6dYC74ZFO0gsK
mXyjmfpabWpXWLsPjSEfwgNgWsFGNsu9CYAL+FOZOtBvJAspLdYdNchwYjckNLkuw0ozKyMF+RTH
g4n9V+6W/yZhUb3tzVpBdqP2NseBme7VUWkpPz8/eBJEVYvA72cb6DAE4/OVEP6FUTHC/gIVPKqh
8HBo/SsyymXM0ABMCdkaCGX6+yq9DrsKUkNq4uAULXHGO1CPYAeKUp3y27GtfxulGU5f0Lut4C2V
LKfMSL0h58ksn/WQmal4UhgGWsHEJMuHc+6hu6I+sICPjDHpq7l7u+W54ljOdQJMGi0gEGINjbvv
ewamGMh1OTOdDp0RffHJ5gBpNlP4g9WQbF7Mc6Abdc+b2y8mIP3duVM/u6bN5XZPcmIw9sKvWjwz
/+lse+kW5lGYTcpQCKCOB4KB55wF+Vp9wvVRpC7XmZXjVzqAl/TH+wTbIC9PZINqhjtc6pnYl9Hr
UQVz2aS9qETm5dTVx3yNly6MfraHGNXJLP8jaWJSPPyz/AuPG+KuTRCEScgqEYALNR74YWtRiSnx
TUukTC0J2Zf/FwxgMLBUA4iXrq+1lMhOTKB7qX6VAwYM6/PNQkyD5XM2CFxBJZl9EHHwPllGcord
U8OwUHmUWIoFm+g64oYd7pqt2d49/EiTH7LqF6enYYKX6cuE6T/yShMg9zN2su1OOMl5GarNftt7
NjRRyZLlLeNqpvFA/rdORbHhs3YEI4hE8vUCs5hwun3S8mfEqBwsmtRcpJ/j3JwPzsNpkcNufyoL
R830wIkk89SsYO+PTIpsspByVD5OZDfLg2N/VMcfvTRb47T+Ta04AXEbptoTYoGH+zZU5t6v7hg/
z1UlSN+0RgVh/RVh8I4gCqVI8lfNDoFS25WaBwXebcIoAtTa8hbVpym7CQKQ/VoYKAibl8/37wwl
7D1XmB3deJkVmE1yyksLb5hng+goWPQ8DUi33hIe1eKclIfh34E/qAwb1Zcp4VMGnOKuP5xxl0lj
UzYNhseQNlJSfcFWkKWsruWYUCVp3lJSof5FadDTYZpSklZia5YP6mmyxKYiKO2w7CZMOrPO48c1
y4jTx9aXoA7zT/4oKiDoluyt5aDVzjH4VcNWEam9AwI3j9kYlKUysH92zMPGwfwohzeUayeMPsyQ
PT7i12Wa1Ujs9mxOEbrHOD+jEDhFfgBStgUqxj3NpdEGbzpARarUYaeBFB+9yLtMx/7BzsexBtJS
C6k6OE0LAa0zBKIuLqGVcSS+n3fnaABTdWc/HBEKIajDGXK7SNDAtL2ujEjxhjME94EJ33l2LuAW
pQyBCri26+HYnMAsO/+RQ4hk4YFyj8Z3sHwtOrvEZ8gipc8dgh1bP4porpYWc5ibpSX15bLSIvgk
RKwkmdLoArP2ZPzXW62P1Q4aEHqHvfMJYJQqHAnAwa005eUreihsLQHilA5kNFhpLZm6H4ftcytl
S2LrjRQ0t8ec3wlefLNwAfuJkTvNSoXv9c2TrkpDNiFS3wXoRrGang2tv5pHvLOScW8nWRAKSgr0
R3lmnr8yVliKwQiJApErrSRMe70mzMBwRSmPQlPayQuznKvOTrlGHbgFhTqVA5AYd4Q16v7zvEEf
5GpD//zz22HU8ggP6RYZR22BX2dPWvIWTdOMYvLqIY5Hv9kitB5b/gpL2fM54xiwXjWtj2Vqwfw3
aV1Ymd15iisH8v7vcDDe9ImGtIFw6nLYhqPcErls6vcWJqSOa0McJmucT3f2KcKdwmIut4tYBAHm
LfRRtZsbJsqAjI5F3MsTZvIsf85mqh8s1EVTkLuvPQK0yZ7Iu+D2ub2YNdGLi5O7g9UMU/OWt5RP
r3tLja2+8nWUqzucpVyPS49Gv2Go2QjcEcfJlsWX7vftM6B8WpSW35Y4Yrvad74AG5uBNoFSFO/t
v9CSC9tQxdI61BW9LVFEUKRICJvCBU8Z74pcES3av4cBZc8VZEqiLs24XDvWryETSaBOL+D9rcCw
iq02yCTIMY7Ke0P+VldY47fAyiJSNtkR7zwa4VcSwlIj7JyBwrNIVDadsYtpawbki+WPS0C/6kyY
ZFEfxsgIgCslWdTtw5CvGSlacpnsPsDOE6pRrJuTBq6T3HWj9OK//JoxYADSdFELRKmpmbKr88x2
ZUuWa8CraPTR/BEMwNXbcFvAXqhJKmLGTxW9rVkTGim1X2wqtuMk1x7zcyA66IQUP/emDnOKIgzk
Rl+6Tx0sZ/8uwF+dCGtL2dkjHLKVPmxyVovUqjRSB/G0z4hpX1Bdr0vjU9KhCSzc0zlaR+5UGOzw
/cHBgdzhtiOVtf29VxsICo9xVvxaH0mxA/f5xLI4CvEd6nuBhD1aZbKleuP+aiijCGh+sUaynI+5
Cnrg8TdBKlRDzsEek6phfUpVVeRleUJhIvhuk8LPnsHpntSGxY5Ieh3bNZ6F7mZJ0dFoSnepIPnf
YpfS4hV6qCeorUPR+BnCcuHOGP5R42XSMYp5q2UuwChbbL7bnP4Flia4YS5fgrApEtFZguYyoE4K
roFkF13dyE+Z3G5lKhNx+hJfK+8tYPUGP6Z3/v40npvzJzopPu8Z+6wbcVGCodOk89KbBwzCmqai
/fTuqZqDhotVo/6w09OU4492F9BAkUTJAvwwZh2ap5xj3Vh3afOP3UlyypU5Yl1YZRZS4mROgvMs
6G9RX9W3h7W6ZhYDUqEZlzd3wH9CVq3aBETWMU6k6wE0PIAxIc/5Oa6leYY1en/94/NeDYbsV/GG
cgVG54Y5Tl594x5YCf5y8wtjB7bC+a0pgrP39rwhx27t76KEt9wDbeFNbgxHVPPXrQ5yKNWnEhgX
ygYlZVBE8joUycBIupCvdMYYYHoWuRQFv6gJBg2INGULnfK/PFPwki/grbORLE4jvgb52ODbhBdn
RRbldWUc4hhlqqRNvY1dzY4TN2wQlTLIdMxAzwGzkneJ4km5lvOiFmk/FL0K6wfq5XbyPfwcv6/v
tjvBSz9Z9Eii0NQNBhjTmAlgzS5GlmiR0ITf2UKL0CSF/WpA9PYYsWwmLnRoknXualDaEl5Q2uMU
RuLaygfEPdMCMsezgE6w5BszVAAawS5LNO7IFAcLqZKwu0v1LYMmaRh2ua4re4X8WBBbvWL1qnj9
i3EXfrQpnmgXmAKGrUNF31Gg4QJf8AtwrCh6gjjxKkcmAriehmxx6Fh7vGmlmE3Xb/2kHrU1wx5P
N8qP9KW37vTXvMyhV4hnYRKyoZ9jYA3QcydGyVziwFjpGFwKjgZHhALEaOz82WEXURE7F1eCIjK8
W/mMRayhiFzb3UPpEdZXXwHaBjfL38q6w9xAgcAUFti0+Y/iLdgjPfq6Z0nRtNsvRw7+o2mfWI+V
7rdNpmeTC4+lrnPEEHfcvu14voPMjT9/AiC0RdEzQl1k7CsIAVawMRsBs5PxcwX7wSvp6uXEx8aD
AwvIp6cNhZWhK02Dgv/VZeQu8z6ivqWBbDzezYKdfL+QPzZww13b8da6ZM1XJAN6sd8j27Akf9QQ
KZHRsvC2c1DuBWYoqlMQzPhPHG39ghfy3TUljFsye1wDKW/M9cVA68mGimvST9mpjXSmognbMxQN
Kb1Tv0olBQe7F/W5Rs64NcvruSMS38BWjYddO2id9wV1y1O3yTVuZPeYCsGIZu9wnDTxAjYqExkP
RlYZf5u+VAQOwQ8+ibyikIvlnY0Cjlalwf7soULJfIJCFczdM0SHRuK0nlbhl4aHLr74jbpMziB3
f+pih9DbcCJu6+lx7x/Su5U87PQzJOvoG7kFYl07lue06RpWShJsyW03E/SlP3FidTzULgyqabbZ
SiOeZDs4TG8C5q+hAlIJvJUCWGU/wzHaoyn38ZdTqJRWPe9hyrNqkIvS7J4aUAMqdlzZYWxAF4Wq
W8N3ngYAnVBi+qT4Vnc1BaiOYqz1KAjN4GcEHceGrMJ4mjdtZR6+UCOE6G2fVjR1BblGNtQtiLUC
P5v1oaKVDQDFNAT2Kk31CwtzSHBjmvPJoGDEM5zzyIJRLHJycXOIfRIgGPye0mKLLudHeSFQT+/2
LRHzknuvkZEVEmom7nQYgbPttOiEsDicqqvG9GfoKwNz0DDP6xlspjMlyEWcaMs4grQUm3yfjfpE
3+BaPLJQ6r7L5mWocOSkOISHvc3dSSoNSSP1wrxcxJYnsCYrKnL/gcCMA7Im1EXW9PPUWiYFqfo1
4gJrbCfFM2wGqFh1GGxgZfC/pDR4uXHvhATZUWKK5RyOTHUv5cEYTQ6w17279tJlznLs+hji42BI
y8V4xc2M7+h0WKbKVM7ipS8Uv/POCnb36TwMoGTII533RMJuznuCgST4r9DHRmOdVJpq91k8KDQJ
8juXB8zBhHoo3Hd3LVkvLcKSV9fDzJIASFM9PFb+47Qogohl6z5HU1UN7tLsf0ZuS2VcJouRDfvf
iRnJqcFOcwf7ad2zXvsnQNOlHSBTDRSHpWQt+VPmtcogy/Xl4kiWlC/bNJKG0knJrMqHzrWYFU4M
dMF5s24uRgNkM/mMLN9nJzCD+7j9Y49c2IvAmRCEKt7urrSU/Era6vGFO27Ac1j/+vzlYQsw6fCA
gRJP4UCcbi14gUnxzxvvjcoCk6FfAEh1p9nThUJzaU465NG8nDoT0ESq9yYEv5eUfXPooZwMz88Q
niJZHaHPGfUzda3DzYfXIsBZDI68ZIP54+BhTP9WopzBjUGxEqP5a1eoC07Urwb98DPvGZNpzU+7
54jdsL6cb7nNnm36jJdv7oUTx5HuNsFLHnMdKCqSPkRCDDpLYfKiGdXj413SuyYw0n4zDLJtgFxa
dPFLbrddzzwY1sWMQJUEXqSSFJNUPJlmW1mY841ZTl2wyK3eeLanr7bR/9xdLdU7mFnbXz3AnoQ/
GPIQMrvmO40/hPkN+3H/9TV6ibplWct0lMAjsT3a6VfBQoATPuKV9tu89XXs70jB8G15aliMLwJn
ZtkJddecYGAzP7/8mDUXbttaaUvU0UdcGXMrLUFDKy8MhIP5412sBn/Pvssv2UblekVi1AZr9pYZ
LdVlE4Z31UunOPqUh4zUqdvR8Anhzc8qiRDBka3/dkACn9Ta2nZE5cDEYRNssTPe75rZL4IlZVAP
1+qnp5CvHPmgKc35jtMsJtFWFCLSXtY8JyiRt+gynIc8Ne8WlL2ubd+zzU3yMRwVVeRIAfvlKSqj
zHn1MoXT4Lo2MRIJI3s+2ATUN5nEYyx6c2pdcqWyA+zk5qW7tT1R5QAncW9rCnbBlesOLwfOnfeO
2g6uB8pcrcmcXSmr1gLhUwSukesrQK9djuSK+ORvT7FA3ycdu/BuPYgmW+YgbKyYr1YyNxYDLD/o
+O8uQkEH6iIMzYKs/zs/EHFJVlKpuRCXnf1wTYqV6qCVIsXAsj5OM/1zV0sfvz+vZREPRE7LADkx
EkcpDzp8Q9naIC04knNosCVCXrUVbZtRP9WoWn6bSUMWfU5jx0DDFdpLUV0TqRUCgMwDdAvCraOr
HaODSwWGBx4mWDHPWnXJMYl1xluENr2kB6joPi/EnWF9UDySqCdmKkbxTB9TDc720XLjxRbcM0Fu
mlPqx7B/lfsPjJ2NxkVVSoX1v1aD43NyPyw1sXb0ghA8nmvbKcFAccewznlYL2cMz0y6kREIrgyj
DQlfIAuJf9K+v/m2aqPV7IV2x/a7cJZMfkRXAKUi8nXdGz0aDHh64yImkAMhlEttxpwmuSMj1FE0
iTIM69fqcBKlIt4ZU14ciAhPbUoNMIzRok3g8uhYceO5GnvsiRyGzRGie2JawKP5Fr6JPb4F/4Ex
a1mZ+UgrwOL9iX/6T7+Q8QreqXGVnjBwLy+ZY/Df7aV2B/Ad51FGQt3hfPT/ftXDKE5v7FpxulUa
7Bkhjq58f9iR1buIT8BRACw28czSo5t1z27AY20GLY+/Wuv8q159SP8rZJqxOgQ5E/sHJHC+cKO3
Xt6phTg0uAOHElyHHlWbVTSR8ssihdVdoXclWUFM/uFmoznnwkLLICBzCE04hGYINfQrD14KT+E5
mtaRXcUQwTd2ng/hWDueHc3slN9fdxzuD0+fSXRf6MoWX1KLZJdrA1uERfv+EnxHIGBFvErtgcLc
u/NXCZd+TEWjtofpmblnTUXf5zrnBzSk22+6ZEVHQ7RrKBU51YVpnQvMOYQw/Eys+8jRWbl/vyIn
C6PWfntmm0TZbIf3W6F4kWDTTlcg0ZZvlyBQRS4UzTHqngNafaERMv8LvjSkrAgjZdRWdyYebOem
bREZgqpf4DFLTTcIB4UeTXTSfRp8BRKEjgIDFQZdItFv7JB8QyQCGnvgrwzDHZZDKQRMsVEZTyRy
aoV9xrgWovkKghzCpBkSiNIeDt3fqY/ZXrvFmHaJJRtu6o3ETwnlKcF+se31+qgt+aeHoEP/9s95
33+Spff5HT5htmbjDhg1JFbREu1DDmqCpkC/nuXANFu6n+g/sSp3efkMQJypbJtlrOYIV5f7lENO
wRMHcGH0C7advTjdkpSXPJavBAaJI9rMvb8lfUo4yj+ByfqbxO2FauMYwFg3G7HhZ4y6L3O1gBsI
lmwf+GymH+Y9QoI36mpYgbg7KUvfzVkD6C4TXDbt0l6nUmcUs9D9jMZOMe0LgU229Xxj8rAxxuDz
SzRH4ErXhPsFi3ufrFCgyArBC9W7kmASRqqkSHIkXHXstoS9OVJTv0nmMBSTaP8PIb22ttej+PaK
TA4HpT89Ki8HDWBvPwc4PUwMbhTXr2f/lwE4/IAuOzoQgVPT7jFjhO3j9/6ztm9JGpuySVwzaGxy
S7vV7NBxoegWsE2tyYdIrV2IKECX3+bwlO0KJ/wWBOLfEpZRHAGKmiM+3+SxIMLng88vY4RCLj3L
w8jncVc86KVOUxzSjb6wOzWMRz4CRAb1liIyYy+o0/aVqLK+T0P0HGo8oRz76vpXaAet7IU5OrRo
XcpbzLKXW829dsl7/te9FxT0mtDOeNqp94YSBn1y0+6HRqSgGPYBzoRaMNZ+NCbxxyTBQHRVxcUC
X0LI/HU70ZeD+80xsQBVC+P01AFM5kDxhvMtV7JtZQvme0/dStQux9J90F6Irv1pGjTDmQudMkVf
kEgRCYJrMxV0MJ8nwWT9IQII3cqhtKTIvCafAJ1khbpW8alzFUYED3cnqToVPLoCeAoXSYHECBD+
+L5PNfnmla9X304WgCPfTmyNYYi+zeO0RBb/GsLYlNEfU11FfyFCQFAmBTbK5qHnDSj0GZIYMEQ3
S098cSe4//F3C5207gruCAwICHYcdVZmUk/c1yMpXb8X4Pyht9aG3NfSdiGzxeQ5KxvGdbcljNry
EVqgsaghz6xVHLOKUD3b088DMrmzgfFRpQiEBDOvEGC9CF82ZbUWwPthl6DxPOhPH+LZl48ZyK1e
YY9N27OKxAuWcUPeuAwvbNwCv92i056oZhksr8fjR5GJDw54UkjrDNwoCyCaNezA2HbYNyuJJLua
O+HLUbhqyuT0fPSoLQvhICBSPkiFIK2zJP4UUK+xP1s/Je8CDjTkQ/VNhw797b8YcZBJpgekVrUk
1xDvjLOHuYv50BSavC4nBZBRpg1ZuYE1KNhN5FaCmV1T42Q6TzoaULe8Y26DYwGW7IAl/i+fgaP7
OPTjXyf0u7N9IB4yGdoQdTvzX9hJxbPbK4GW1LDbMkU1Pp0VyEeRuf88Pc4GFIVp8nppVmsIoBWW
2VKqp+0I0n1ayv4UYQXOnbCiO5zN/DCWxh7Cxqf5M4FWHNw9couSUZlRmyQ0uGH7b6yY745a9jc6
ynO2EvJubZcmy4Uj9eaweKraW2iciW/TdruXy/lesD8u/iblzHoqyFzmP81l4PHYqsNaLtv2xzQL
2D9B4NkZ+ShC+XixOoPABRnfe4k+P/b30eo/9JLAV/FXrzVcc8o9oz9myzlu/W6YfnvFqpsvWjWc
ag1lKUe++FmKe7PUtJY9p8bif6TF+2JDdYzmpdShfBgOJonwiAutQSJP0zEZ8gfIbPB+PsH6Kj9z
wpqJZLj8XdJ/c1Z7Wvl3+joYrPNmv/XqI2QtfG9tL+IZkJo+h6i3V6A9lpcr1R3dLYAOpTD8qhPF
lZPetBFHRujnZm56CRuik3mspXFpWaxrHB+f3v6FmhzCrffzW0m3+d3DFhkw1/cA4BRxHcQ+KvRI
Zl/bTzeyCf7ngrZWfWYhbc1jrjfAzaaG1HngQvk7tTMD/MWNRx2Fi15XP7g/96+cm3oB7rBs+m6P
FwcdI7zNXNyvcq/WwIHpZIO3zSKBaKwOcs/frykUojJVJ8Qy1VrPVbHGrSBp973GhyzFfnFb5Pas
1LGIiq/NElTAS41iALX1RNlh+nkhoIc0692HvvxTD667ZrYjJkIC/tjIwqcG5I15cCUwK+QAUH0E
J41Xv1T0+gFkahJWbwmBZ782JXiFAtGcE8FQQuqPMEpjLaeqqceT1rXAw1zyemrE4NatSZ8umCzk
Y3uyTnFgqb/Ic4A+I2ppMV+25rIKzeX0betJEqXzO4put8YPHPCuusY4o295+OP1YIOLTorIrfTN
LxkaZXyzzzdrFNtxqYnw9SLNydw3t+Jiv4Ic2LJJiE5c+MqTgPVYg59XbstPkUykfL6dPeR2Q2dh
KUSwcxgzZJf+6F5pbCKTfEWUj7eZVfXFHiUggSp5rcwveY50a4gtrWh8mtB0RvvIqrwWP8EuypiS
wKxHgs+jwjxrgmPHg04Ec4xD39/NUQr8BkWRw+rMSM3db2v3TeeHG/GK4xRlKEVa71+XdeYf9dUC
X2LfoZ2pNzU+4SNRCzCiOpksEdP0du1l9yC/qfBWLoR08fSzIDjydYgZEqofkFePZ+cFiixbyXML
kOyc+sY9tCeSY4Eqk4OPfa5c6LvuSxA2xUeQojLFlNOFD9KfkAyKOURfWzb+J8HuZV099VS9JN94
X36f1UqAE44KHaQh/p/wlejNAiVpJMzbsUb2JsAwAS5aqdCinHg9An4VD4E03GxCXsInmJTuW8L5
x/yEQx4Wp17m3cR9vHkCGKahdg/SP6MLHqouGv+OR18kaXCP35SHla4Lhc1+zw5nWki7KgDe3rTK
enOVVFQqRN5xp2oGVEq7bGM/4tPc+pl2pFkwbeMRbE51al0i4JzEFhcRylTskLBVFHKD+DK0A2HM
RH8BRNM3RjpcA74WIYPHywXkLMG6bty7v+nuqFZr0ejn4F0oMgXhMzFInRmbR71mHmgGulaguM1r
ej88Z+iqWBm59CQkTbacdYT7nb0vaV0j1AVTtEU/6nvX7nLL0asd/MzNu73R8Wygl1+R29ytSGgW
eaQVt19WQ4TIEA4uxYugRb38+5ZOrEuwr9PCqcomhuw8y5ToG/xqCg/JYnLkVeFmmpvI2daTLo50
l/vkjY7UWtGNMGOcu4fCyp4eV2kbwFSHiOsqwXNSPogpVnqgVNGXlLE90HebQtT4D/UuIc070a0F
wBB9p+0F00BWSROLRDqAE7zDNsUJx5//KsK3PJoIvay+3+JijpmOriTOq4/RqCgDtv9pqThfsycK
GmgXUk2w6+epQMO/oMeObcGvvSZRDGAROHytxbVPmkeCjpgCy3G5N/crdFXg2Hu8wfcIHFh10w9E
YcTOsQoRRRjCpaognXHkuJl0CfCa84zflHhHwp3xBnnOrQOxFyi9OnLlTKQwoalB5Y2+wG/u28ab
k/sgj9fa5K5tm/62PwW9wg3ACqjaKOg4BtgMnjg3d/MSKBISaGWxMoMLiLaL33N0+ZNO7rZVw8EU
zA6AuhuTXsj94tnQIv0bVZKxtKZ1mmH4wacOu3X4IR6jV0mzAkW92bNbtILVoSkrJCF+O81l4w2r
FrsaWLFqz98HzTpLxhUkocRxv1wOFJui3YVtjSwdHh3GC7u+zPYMxAZ20E1Ao8+UHULsMYYqbn8s
g04B+25Ql4trIpQ7k3RXsW1fmOXaRBOYgeANCZf42vIgInq6KENwSlAfN8DgmUsw0hw/rOFOTcOj
TFfpCvmYU3b9xMOFFImuaokLO3XdJTUyHBxzIuBeip7M8nyFXl2r9PDWvVCn5ZGyrEP8gYTxxblr
R5HJ+H/fCpl/KLKlvXEp8v7jH+dSCCg/JoA+FfRmkbtExiXCJ+lsDZtamgSsT0cdYvbBWJ/OWBQg
0KpLVG8N194s43vmR0idl4Uulb0tcRuQteY3ZqLHJb8F1TgxE9GZSahHdUE3zJY780J6jJ9aw2yB
8mktA0mJll/8HA63h/blIGk4/LDN0H3dJXSyNEeR3bD8WG48gj9m46033jfofXMlS2Gd0XIDS+pI
JSg7vPPxsaplNS+Lnf/wlSJny6XXbjdGf6cjauSuyAJ/NXNRQQWRHdyzVp9yfMcxXs3W5rvKSSa4
BYRghTv9y67sWWGMKXBg6njgocl08ODqYQj50/+/Py9KueboGmNI7a/WGITFPofPWcPbXZnxY6s2
uPO+16zhTdYZ5d/doVyDUO8tQ4WvXDVMBLjvhiNFKdTY69NL8kTA1aWwhIefIGDli0n92GzEpxUw
1vrb77xhGksRfYwae3rzxwyf+bJDXT/mYAlKbQeUUO+OwfaYYaemj023bu7vXV7wz8sslZXz5VLC
qPfIKwnngQTxK0xy58ZXMbYRJ8RlAhS0/yMs4UR1wlTwBsqujiKUudxQ5qfQRBGkZxxbK1fvbDSP
u0tY+G2nHHcrck6tJIeiVyNh8t3GZEd5eK2mVl6d0AG08iXF/5p690T4NGdNInPcaie56HaMQLS0
8TofHSe4E4uhTACL5bIaohK2k53PAS1g7AGX3KTurnf9yj/G2jZcwwy+4bTk2Gz/OT9Hx6SDcLqx
ZDVc8NuzrDk87w4FNm11gKcS5KHMPj93hHNvnkop9TwsKdrnrV/RPcwmZ0lGkQOzjKcAbTzTsgQ2
ueCIVWs90/gcW4lBhvYURAJRDCi7PKuwcHEkyff6P1RLnK/QzA+A3ChhAftRt5XVTbTmozp+0rVq
srviK4MSpzwcFYtBL7VPpXqVp8PaXubNxzB5VwBN0OkJFtrOcWqPox7rpEAFpcRa8rAS1gFyafUs
tupjDZGltPfM1mN++UwjG72ehGamptay1Pakghp5JthKsPuLBb3T5nltbc7LVOHfL7vCEukGGGkx
BJOla+G618T0qZ2hLB6Zt5vDbbMoOd30pXF8lBOkDJ5Dej6dVe1LKykf/9GzM/1Aq0OjxXGfLcrr
nSAtGr876uDZOC/GxX1ipIprknv3K3ty1UaMyhYP7xh69WxPN+pFytogDUTSX3bMg6RdWlOEzrmX
CEJiKatWHImHu4IjysS+pzXRWOTpdgCfGJ9J1GIQLZTnZd18yUBkVe4C7ykC516zy8RiQr6pRwMw
zVznFgqUgxLpX3AGNthD3uHxtbX43KqcuZO2fe6NjyLZiEqAj9Bft9cB+5KcO8P1K+RMWZUHF/Oi
M6efBt0ZiEPq6PZAl3pu7Y1QRNTcPPwe1TQpgSdrWTrICFiY1vBR4MlfPLgvK6kkwM2exhP0yTlw
HEz4kh6TZuLuMckG3qfYEXDkXdSxm+3PVoPiv3Gttmgz39I5ch10DRPxj6XWCexwPezs4iFJN5ps
ZkZi8C5z7XY1rxyfYqjp4vdUN7jAMhkGjTvvIbDxfxDYJ7Rjs7/ZoAHTk/6SMuGA0ispJ34+fGVs
Z6dz3dpE6+AsLV0z1KLLtjAGKLU3wgMOZtVCFza9flAiE+jGgJJSgkXCFuIftmNC9bPKqwCcQ3Z8
kxvEbZ9Zet1qMFtnM0T8jd8WPZSWISU/ifLlkjC1Kh61MZmXb5M0EBgXOUZL1wK0sIYzRvMLfWh+
ztYnX1PCbG4S3eY/73Vg9YzC3ckab+Bt9c20Tu2SUVCHyIODl+WIej9oYtLTKmnF0kJo01sV/h2h
Et+ajNmJzhJqC4wQSf7EUs5tX1WRaRnOabFc2gcrg5nWKj0Cf6+239bNtBv41PyjLirP45MqelGa
+Aj9Bs2trs/fmkbJy2U9lDAaho2xt+Ixc5WIZlZRsqFadL5ldre0W34DsVyk3e+V7tx6IjXA5k2d
2kzlIe90L1rXdw6wxuFZIxlJW0pO6v0lEUs+v1jHorYdT9V7SSeb6oBZpYg74kFrcO/13yIWZ5+4
nL+AGecMYtE2wav9T/M1ZdiJGWWkuw9rDVZQdJ384390/Wqdq8xf/SxspyB8/svwXQBXWy5EnG9P
6VI4HtOF7jC8dL+EyqkO9zNab8poso+iZAWnz7HVXwMWPfMBlAZrjUL7K4dpLyaaUdL1tF2TAfs2
yriIEJdlkmzjbrkR1VrG8rUdPUMZ5qxC/zQjw1HLGzuGgLF1lNzwwZGvGkVrhmA/P9KCR6zJaZ7Q
5N0bFweK5MQjGQrv94yMi+LvLfaZPcz7DKgInHmE4u1L1BqTG3Ynv0BLXGKya+t/+rL4ZhpfwAtP
hvZ9d5m25yMXK3alIngIqlOPnQMhk1ONNcsD4mFi6VkjEr0yTjim9Gcw5hervdVahG/SZF/X5dwB
es/Tb8J/46v5sAjA1Po3FTmvOrK6CSV8KQGOqKvQnYJ4wPDL/GoCwNzYfiO5AurT5P/22VOfhjZ5
1VNcfP1cdU2PPUJk+0X8ktM8ibK37if/3Q2e8lgQ9LsgnrCEWcv8UdKZY3aPKoKyRccKYKRL5T98
5ysbDUZgewNeMipYV5zU7W/Ukzsj4R2P/0Lt7dF655HpGs0NUBv2SFXqssuc6sgDsse8mUUGgT3i
u8fWLUH3iAiQpi80vpZHoIWgYs1r4DUk2YNgGYgwfVH8tCgHCBnULDAPjScvbcWqobIFsOhF2vBd
XnMjAqJpfY4ierOGP6RsbsHns8vt9l81G4S5QVBCE029b77ZDbxleao+2gnU6g46vzwTLwdRN9Yv
g53Z02rqKTWOS3/xG65VVx+unGMa2ceG7DgjB0T0RW0SjBgKwfDLHnEezxQ+pAEKT6relN5ax2tu
hnXs2XkASqiSXxsFKO6AInKYKJQvdNeW57gKSqhepHp6HDmM+tf9xboz7noTxMwykjSt42R/pN3P
mPm5xvHOQ7oMveLGVXfAplwITJgoINYMmm/bhceobXPo9qPAgrYQVTTEnGhQ4ht02LlFhf8pvGpN
ZbVNbTAflA6hBWqO2gVQ7FORo7Iys/0RkJABlecszgSpONUmtbX4sq/GQeFtsa+/Lv3e3mxW3YcK
o683h1bfMJKL8FYH42UiCm38KUrhhet8NH6VQfKtQAhW8bwp0Vv5qwtKbgzieywaiZurLYH+Jsva
vYDKaZRewi7U8mDO/uams4EDcuFa+FC3qOyzh6JqHHuoZcOHK12sjaXhQnSgW8nY4MTMTlSDuLeR
JrhSNDn+okvcJFVD9DrcELpUgMDdfP7uMRz7hDEoxn/zBgPSSFSGSgNzKE7zK2mFJtS7miiTkxcN
s7No01fQs/QdGkK8v0lCI9y98ARW00GX2krNAy3sRF8T+AruFcYqlvUOZ3VHw96Vj/Q5UzgkGzwC
etimToetpfNvNqb70wwMxA3Eknu4Bn0NnBfO8rKlIOws5LlD9tcHzbQdYS6xuZlmj5EoYrIWVZLB
smU4sihgld8PjuVItyFIB6ETt0HhjNizjmbnrmrMnYsHH8cZctqBLkRHTe/56ezTQT7IXMxcQWyE
ZQ6FS6WIEv5lxwf+krcZ4vQyu9M2torv7z7W5L7SikyFKP0tbNQWnehlV/ob/K4Jn6RTMYJ7pAT7
fnRlDVI9EnTTUQBxzr9ygwbpjArw7Qs7wPaimDnM8jPoh0JTaNKXsEdlNYB6hbqWV1oY64AhhuhD
kibakzkAisRlrJi9y9sltpB97rnue6q+fWXPhlu9CejoU8I8p7xJM3euHb68a5UQeu6L1Yogy9/b
6FxQSMs4sDJaQS6qh0YqVzOZo8ppAkqU6GcZAkY2ZCS0rOm8yG2C+L/gUbn40HOcu+8IE32kDvnO
zvbLEKz/5h8M8yEW6ZgH5kwyilgwVQugxO7e7NfV/dRlKdYAx3MyNSreYxOQ90iPsCE+upsMU0L/
/XFscTR3zBUFyKWnrmdvGt1JVtzQubsvXFIzt6Lu5KkGZRQNUXdnDpmLRnMcC/3iXQFFilm2HEaB
CKNTrD/RvD7S7DsqXdRQrdhb8qm0OctMP8RDzXjLr2DAbuJJ+vQVcQig8ryG9hb35p2WB7F1PERr
xm1QFwNQTSApKgl1HvzpY0Ytvwo0r0tF2FEXv49vXX25+50VkcOKbDcElSaz0wmAeH4fLFETXM4E
YEqyUgVFq/QMZf8mytUvzsbk+ICd8H8/n1LG7qMwmEq7Mifm/b49vdnl3Ty5MrMQ0o+sVTbN67bT
CDPsy9xORYBkRr2V6lU9ZCQXyoQvPQaIv8DFolJfeBu+Y1GDjLBK3UfX9XnWi4LYDkF5fSgGF6CD
3iAxNF8969OjiNFl8bgFcAyhVGv7OZ8nu9MVlIt0QCrOzQE5C7E5SARe4eaAI6ALHegxGdb6kxeS
Tphz5UxpuUVOpdJo0eU8VkgBksPIU3Nmkoekq92f2WbG+Em+Rb3UkAGrYRGlVKJ+7nEdJCf5RAoF
t2UpwFP/w3xw1dBgqXV7Fz+Cn96GfxOlJABZrQUbruX7A19zXG4U2pi0NZT1ydIf/TQexYU3Vx8T
BObeIS+MRbdX8xCGvDDHXmRmpcn8ja9h1G5wfYozCvyQnIve0GYKrZflBjw8q9ONhapDmMvK2AY1
cbxRvMQhldFkY12zphYcRFRnIT3Umx+2uh33ExyxXhvtsHQjAwugI8VsU70kaJrl+OGigbweZe67
DSh9kzqJGeJ3ZWqu7AhKs41kkBOL5h/agJfdt95rPeM/hVjzoVPZi5VlCIvXyw9hqbOVSSxhC/tl
3buxNyUV9Dqjsjat06/o6d7T8qW9vVUPXbcBRNOg66l0+h+/FVOUQAajPdHPnCl0JsGASXvc8FJY
luc9/MU3oDvxUNUVY7wzh5reKyHRGhi2iYz+kkA6O18V100CUODG68MUcNS3dDSIQTLYCRayWVDs
n9kbFW0U8p8+BLr+O1CMcUQZ6QAnMyIaShRv6OLtq9Yp42ygVOGN7FbKgv8Wci1C4zfvS7raxMLT
qlCEccQLiyG/ZSnd0pS4uJTN8nIHKl4nCK8Qz1dTpwnngS2jfnFudmWimXsNsJ9gavGFrKv1U4uP
8lWZzi0oPSxaJ7KzlOItKo90ubou/yxSGpv+W6iY3aidukInpXl36kz5DBrYxxbE9AsOeYJkvSSk
ZDn9tU98dcABUyM8M3Bk3BSH+N9F+mdwBC3r7TgA/31AMa/VYL/4jb8EDs17qtPiryZ8KCyPwjOJ
Ef+2JKYD3emy0hsYLe9t0ykLEZghk1pcFp4ys8LT3WOs5OYzUchHdqcoywZoIm9ZLWKvegShzUoI
c/siCzemw6ntFdIjT1dnTvTMGPeBmHfV7BE4YL9qg39hnAr3PTeIx/6tW5OoMHRMfoPAkEp3zVgU
5l5lzwY8ly5Dpa7K/5mhinLT0WGrWIopcrZRKr1NdEQwVAsgsDr4G/Gw33XEvW7ykLzPu3V6FtUO
0SoAFqBtNnSe6v6uHMtpgZEUnXkEbXcCSr9Z83FAppG/oWeDBK66zmTp9nXYgqMlnaXm3xEywWUg
RREM6mRu11Dql+RfNq5j5Iys/IcPYxCFqoxwzvLtBvZp7/q2IIysTUOIQZPMVwZLp7ELlMz94DPf
M7DjE1x2Z65Eg/8byHBbWuC56QHE2cupuVoLdaBX6Edc2DPAbcP/jDUd1QaFEXZ0x0Jfhpbe8I+v
RqkZDuRUniPmCL3HhraRw7i6seW24p+QZnTNKIeOh9fttOxDKhh2iO/xjL09oOxsWt7Z71+T0k2V
/blKiEY17cQtYhMQGGNpCTpA2SU9QhWaGpzGhP3bnQoYlE4QwzRHaIQflQ82g5MzNwW3liAB0p/n
Xdrm15P+ASVZgl6RFtDC5ktXyVt5oZcSqLosLBe6M5/qxNQQMqzQlhtP1wWeoF8G4D+/dM1uOHEB
fbpwDVAzRxgneigq+AwXIcPTIZCAiXSEq+cnKnrGiFRk5u7vN/otyYRaRAk0BO0E7k9Sbpcb6wUS
g9AO2sQUtCMEVezpMB2zyRDUnICslu93fGGRezuoucvPpP7O3ZNJUrKcW5WEHpMIVKLapr7kEHhd
oyqEF1MUa+JErjsptF2hYLiXrh9tEscRIZFmiCWm2SvueHWXcVTj7b+gC7u1miTkDc3NQY/JjbOO
UGz4zhBumzz9h1YJ2uYXu4VnEG2TKl8W6foWuTYPqmpp/OrZrw3sSJ5QR8lnZY4VVTdX+bxEEs/C
hU1hZmBXmIY6DgN1uwNDBuYA5D5dSewNTnm+wAOPePClR8rx6yGe4SZWEr5SnN5II/9ll1I4hAzv
OiWDme7S51hOR51tSaCgviAQvrEJnjHV8BlyX5ckkI2hP+fbbFG8XbhKb0oaPzH+1eMohUs+z04Y
xeFffXaH7iqxEAtnnKYhxgEMwAnGnPxmwSrdppivd3aq4CF1kprOlPSKg+KknGSfKL3K+DVH2Gkm
9mztJ7HYtC9S1qE5RNMW6feSIL+Tt7ukiVP67J9xaAke4p6r1cHBpUtGHrKrvMecFvS8h+l3A/oA
5y/mnQoAb9rppnhAFpPMoObG4NpgCi1Nb025dH1m1hbBUAOzWekpsH/RVXyFncjbpusuNFh3BdVD
LvP54PObdWJa1ehjjkGdGFPpZmXOLdIQovSdB+c3DkYVhtSk1oU3qMYNd7yTU7RvK5j1tftNsak/
JOVMenH0mqeuJ/ver9japOQsYMkpdQi+84SrhKu4CS6n0dE8TzPCIskhOhpAapW5vTijOUTqnN8R
8dNusa2/tuk+LAN5AKMbMEOzvodxBKLUnyEH88LfuAA1cJpuepGEn1G2hfz7lRhJDu5/DT7Vh1Pp
yYRac95aq15f/d779DjDcs4oz+adhbw0BbsIvP5I0zTk1T7vLcflz4LAIXYTajLD5kTT5Fwyc/NY
nyyKq44ZnxnItIBSsLf/w12sjdkA584qTQRZOLbBOKXPL99sSV40ga+gICK/yhi3wMPR9mshkWFB
DiaJECyd6BBMxxp1E0kZ9t4dnqfeOtQtvngcQDy5p0q06JYV2jhZcOaSUNINwlgQ656W2R9z5piP
FItD5P3zB7q3FCIG7PHDx4bjhTphIPRmtr7sGS5BjOdaXPLold+CkYV4abX92RMA0YYPdZbby4Ym
vxBad3DV5H6fbEVktvYXFav8PWFqV0xJXpCEyVfEH1BybFdkKKtLKRt4hIHrWQoGIQ6oqpEYpdoe
T+1JTs/PdzBdru7TnA6FbC5feicnBaImQ5dNaBJeJB+VHbRp9j5NvZGxJlSp6RUZo1kgN2wqIHzQ
3vlaL+yNy9XTh1GYXmW0RIvv46sCHKNe/sw9rq9+i1RVaWAORQzqLvs8Z3ET8Da5+zuNBHlbqxCv
GLxUrlLq/AlI4V3FEA+XW9IimI+GAui7VCTBZ8LnwHtL9yEkjNxleH5ldWzsbi+HC955M3eeobRq
dOuEIWmkntCbMID8LEcHXo7sN2/I9zyX57Q+N1MILZtptaL4BJ/VvISvvkNs7eupvc4k3QBvfUCb
nWna8JvpAUjWNv09hbkbCoHm0uKrktKMGFFlwkunZpcjx7HLZs1SzMf8+XfGvgp64206yY1lkL4B
tQ6GswEgGwpDk+SfsbXK0zsIaqFbODYFbmM1EjOSDFWtInL9bKfHLl6ADwEtTYSd9ck6hUFodwZm
bZPkAbiGDu3Sql6qoazsTV2xYI7sd/JI/1KEQWUvFamV2YJqSGk9J9dFrE9fi/qO2aLzjhWdROVj
kDK2a4oQCB/RhoYaMQtBEY2BVSNzIkIgzdD9pe68YmvC+OzxGAvwH9hf6HfeMcGzF3LczHLmhL7/
t2nopVb0TV6hRP/BnVte/Yui8DUF7uiIMFhI6K8ymObsjb5CG9fClVRBrg86TFUz1zuQ6Rzsg6SG
XkOpOybibRcqBjvOTN+i2L+kvl5HfQ6oNISGqLvj2csBXBnjWionoWOncOsyLXY/91RLAgEnQOD0
q+y0ocVOgMZdf53RJW6RoSyHtzHefjLFW+2RotidKGP8nvWprqUPJC/VNqLpYY88om32OBq2YIdO
SYmclIhprwslKGWsD3rJFMOwIVcgB0Wzhz89bKs4p8V1D40CxDvjMIYbfGJo0Vdg+VqUDEaNwuc+
qACiBqqJvETUZxwV7EtDmWFnIYf3ANcO0wGJzs12CipgUaCVR/wEpM/J0bZOJGVNJHbczL4oJHDY
o1aDl/72NOdiOvLYglNm7KnM8TlEjPjRqP1Bopf8m7j5y761Xzml1U1oJKmiCJr6EJ3Im398mrOU
xuRGgShxwL9b9aiLwxumwrinjEC9aqSODmlZP0byCpigwvC3XlvUmPfegpJihoWaizDQxSBIsM9K
i8QWg4P4pFNen21te39UsYfRMO+RT7uHo1iKSha259nWO+gMB4vws7yFeY1c/KXAN1sH0nGXwrud
cJokC6Kuvxzxhk7KfCHM7l11AxlwruJ3SYRi3EJysS5B9nzPMz1ILbLSfxm2bfBSxt6FPfOlRDgl
oKHIQBs0SEdgvighq0+X9FsKvzYsPm9RD/EmMUkgv7g2qAXzXfYJZ7948pr0fuAwpSRvEQBc1h08
mGn7KloF9jk3vHoOoOM/PTPTOwArRwpPtnC04G/HMhyyIo2slsX98jkiUOET/eCv6FQMtVbBA16+
zPqGRiivWOea5JgzCl/+P5jt083F+zt5rj17j3VuKPW36CEBX+9njpOYKWS27yLZlmc9GmuHLYbG
o4mKRHYnjl9seBzn2LtTSU8gYiIKnOg7v7vX8wcBimG5Ee3uSbMLbsl7SrMNKZS9X9HjJFZEHxrW
tvyj7inX/gXcjvBZUlNC8S5W2TlBvW0AjRMpSa5fqxlf6rVJSR5bhfn27SFQx4fMB5m+jqzoZJZV
z3tWHRDMYCX5xADEZYFv+yGtPGBbmfbm6McmkzZZi8CFfoIO1Jxb6hmYqnx+Ow6hrkbvHvQcith1
NxZAKmaoRrZx03H82703sHawkBio/f/dP1mxYZk2cacuak2IDNQbKj4qG2gBnAMTXeLRhAq2ayeV
gC4r7irqTHVM4Sih2okY8DEHCyLJRbilWKuGbXvzOSodnwxz8UdVW0WiLhWc+gWoqrjOIU8TIasL
OZxlkngdEMlI6ngQgPtvQH+zp9bb9IR6xN8sxIRkkDNogqgo7lX7Q4c5Y+a3XTL0VPSCY0U9yXlK
y+hJi21Kfj52G/cmN2qh42O3GiMjaUV00dxqUcaoWC44Pl9eTMNkLziq7u1bewseU9mlQvrUi65I
1HW9f0A1WFflXsn8GsfIeOnKUGnAXEZpHqaxIRCMzR90tlRKddukUwGnsyP40e+FnqWHrDUo/UQZ
zwCd+UrZKJoq5MtLGc2f7lUBhdSNI6nu04FPG8IzyqG3YTx2RT7WreSGUtpAV0oL/9vU8pUpg7Xx
woB7JWbDV94KMomVgGN2OTK6NHuXZi1gvT1iBGBNzVSQU/zuni5QIa+PTpQp/XXayfQP4jMMyS4j
tlByPwXmjVwdCmY/TMu7pze80aV7BK8AatodOuHuQNXhV9GliMNICFuvaVCd3KJpLlXT6TFv29ls
mP/T9wJ3ZzwnWNu/QKk4eLd8Ds3oey8+QkqRBAnEnuSigVtIll1QER4NkZgcc5sJWQ1G3BGAQ3iy
irYT9/MHsutUYjxBGdIX97LWszqM78h4oxeBR7bEB/JnTPAi1hx1q7/Kge60EUt7HkB8RGpkQBMB
QfxPetFc6j7dtsTHJkxzcBVuIe4P2CO0AiQLMN4E2KXX+SX46yfLeevyy2iJ025SFIBQF7IMt7oK
LgI4w4UpslU4X23VjnBUdIekzrxm5NIXOPSUpaR6ynPgpponIkIlRWs+KU7wBadIkmAYbss613V4
XQ3jKuWSnh0vVYf3/Pti4Al+9l3vrCjDw1b4hxzK+7KFe+k6i8aGfFXEHzwmKSYK3pUMW32UFWPv
3LnXYfMj22VOb9hoJz1km6pLFyhTPmEugsyZG5Vcl7ZkoQDXvH/bPZQLABb0GpFP/Ux+nW61XiB9
FMWyG8hiBNnIMRvKO/zXi8Z9TZ1h+5veyoDlJVB45cP1QyLMsyW5auHSogpsFsNZq7Abkz7B4Ed9
hFEN5q9p1tOQ9et+PG2BhVHJ/XyHL+eD3x6VnxWbnFUmpOPKr6IWJiVI22MWJJaTSOvZwIFQCZA3
l8Nb+ESOIXg/qCK+7gXiNVxQH0yseTguXCX0z7NeZCO5DcqfZrRujXrlc09HEJ7O53V836Xqj4+Z
7d0TAediVsSyn6L4ndUnVQHj4g/RctrYDWXBoZDQkbKG7wnVd/gPGpeuW0nlk7t91uYK6zbmHjIe
KJGuOpqjW8bXjKC27BOoLe9WtVNG72JF+EzZyytpFZ1WIUmh30tHATLbxDMLAPrZ7N98EZ1spsQy
66muMjo0bRbMQbfGYA7L5CMQqy+l+RbGVeQ6DiJwgHyjduWolLrwgO9XdvH5OLTRH3EDMBeY+mtL
+CuTU+q6KJsqsXB/y1wQ2MvZNFAFiQoCuYDtT5ic7HA0JghgVOTOEefMb4qxHf4oLOoalC+bCUFc
bf5wEjiNTsJv5kDpjb5Jy3jUVQFEuKWa1vUOYF2DqkZleI1ilYLyUafcu/gtJ7h0j1Fe/3HQMR3x
YJTYSNOx2Vj3rx5UU5fxGMdTTNUfDbW73xbQF4orC5+eh0naqeib6Ul4dfDnoA+UTn/pX35QW4rp
MmaO+A6MeDdF7mZU5iyI5clTUDZ7VvaagOOrSLLnHukrj/c7xFx+o03JeA3TwSwfhSJNavA4LRfB
jb4Ym49gRHgcOT/BTKL9FjzcwiVxmkQ4kdopKEnFkkpWQCLhoACNlh7h+bmE4J7ppDTZ6jLeV4mA
vGSPaOXO0WWDJIrvd1IUfTw17U19V+T7tRZNt29/BsuB5z+b3fT2IrWdTS0lbXphUZKqJy1zetNq
73hwcsqIpSk+rXMhscexwUxw83qSK1sfUQW8Zzj4s+pj+FNeOjZHhYi1N9O6VMNucYrRZAH6Ogiz
b/RnirYpajNCaRQSAycZ88ejWLxVly4CTqJEjYfXXd3XibLyresB9RMVoxtzAhtDDIy1NFrdCyOd
UrCZNpSBUAblYED0f4s3EGKlpGLDK7IjI4Vko8iR230oKd3sfyc1KWRsJ57Mx/jO8KOLoBW3cQrg
XxZHq+BRNHkJ/DtT2wH3h/7G9AjvZ+PICDwMZKluw6HKeLHyXOFEmN5kh4Qrbow1Q2S9uD8mO0AY
4vfi7IF9pQ5gxHR0rwxiIMM7H8qxEHXzZ5Gt+l0H9xNcWLv/SIp+GfGHkw7qXEO+dHpRDEIZnuNa
uvtScDzPYbybGpiEUGxTK1ooBrQsaUmuFizLeza96Qbj3A31cHPhIoD2od/goJk32LeoeiE4xV8l
cYlhIKLWK+zZc05tAr7th3krLnJDygxP7kqJOk/xKNpKhyCpS5KQVEgezN6vWFjPSFMVfd/ZYOGO
Ea7Lx5tl4G26WZvgQSv4WEJj4WiUyfczLULwLeTzggoMI3xXVnydbLeoCuLsinyXe3NyXkukZfri
pmLpTOq1VGOvWuK5H4353Z3DwJ90r2jsmdE8GmDOXOJcpSqkGCbW7bJj5Z9YSjmoCe1q28/1EIey
s3RbI07EqZd5cRze+GStU2C/YAOtYg4iQ9kMtoZgCcd7EFWFYkNyBCf7LXcVIaRprEHEtYcQtgpH
+1aSJ7aC59bAyHcHXLDp3U8bYS841j5AWnCBVZT8A8aFAl89VcyfQCs84DG0IgexMKyUw88S72cz
NPJs3g3zoEM02ZniwYGIMHeJnK46wkpfgIDCzxVH7GAAQwnmsx7EG1pfAFLIkXrzpEkw1x7Al9Sp
lz5hHnVGpiL2sysa5ff9lX77MitUUoSkrD4mrX/PFc0ZgshL3+JWmvVzUiLVbTcgledOrXSUbzTC
2B30h/sxIUYzONl3Z4e9LbdhFQb/+iNRVnA0Fx8Ikadq9UOwtUfmwGXI3rkx8Yryy8R/w1ob+lcb
zJWOakWDwllqVtSJWbICTda9sDWUOXs7xCD4dGzkfvIVxo1LIXVPUCqXlz5z6ccjKw9vWUD9EkY+
8oR7IK/x8y7QrGyD6xqGYKmJsy/x1j6LXLq9W2rUZFZFaEAFMWg3H9gi2XFylzLnfVyOZpfvZuyJ
MJG2wefJvE5lL1xMj5CgjlD29eJZnXIfTUo1ev/TISCo0QT34fwASSyh+e2AJky9Pi/B+xuUm/L4
JhAxbhW1oDtG6fAfQtmLdz28HAaG8cR+yNehugzrSsFywEldPAiwtcO3TOqBDP7dzamKBdHzY+u3
t4tAE34w9xsMtjJyLdMJl9JhQHiKfM76il5WrJHWDcf2E/1AfvA81PS2KEKiHVc+jFf/7wZsHmDN
0Dde83JwzP2BCGcvXk8gjqPFgC8reF5iK44yle7uCdBj64dROlmcGDsNdw2wM0Nru5KbbtfMuFNZ
ANNxggqV3cudjjCKWi+WGFU13PKGAS5c51f/qBJmlWcuSqPi3WEhBgB7t27uD7ymFzrtIaUXbiyA
P2TGDJFOkMVN1OaNPqXoOH1IVr4D/Xu1gJiL9/MzC3IfOsk9BZGpkEF2K0RgN4ZVfBAZ8cKS5j0r
jtJ6xejW6LJFxupZFDlAV+X5RbrdDTDUaKBnnyReHxHgEwempO/Zgkg/pK1nlKm6Ej0ivC2O8BtH
17faMEo8nr0iM89GdfZCBTJLCzC4uSWeP2X3uGXF6XQEFuTHTrHlvAd10acxwVZWSZ/QtfW9HkSG
JckTZ6GptN5OvsndwUCB+sKWTPdqIuOpFEWuIDLZ8jBFaV76FMcRPa2PgYAtcuqjASobO52Y+4hk
9gDk1ug1ypxMI4gnaXzVetHwnS8hLFrBUW2d+rT6tBnoIOOJIF6pae44eRRoFkt7kWtoB3xBNWWX
HEC9sO4p5zziFzCD2fe1I8MobwR0NUNvN2bpdEbP7fQcDkr6kEQ9SqxDO1knaD3QehQ5aPOa/nPc
UR+o5Ltab3dOhzLL308ss8shnAiK1x1TvYIexQcfCu/eHhFB8HAd5MOpAwb8nvwK0OMNE7pH7Uvf
bx9X7ukkHNGYj9X7HegMo9tBdy+FFyRiImxaw+pFlETZJEKaLRQnQeEp0v5Sv/QMaI+UzcQelhLU
ylz5nJ+LfCpIV2HsTa5je0z3E5ixSXIVm0NQcdgobY5qVzrHVtSMsZIjsg/5LFkvL2I7WW3F1jT6
g+N7C+2JUKPnMTA0KuiN+QnlPkf9JxB+h6aJhxoP3XXKfWY4qL77CRfwZ34apM04UgRRp1Ux+Y6O
XjfJ6nN3YT4p/k40dniFHMDLGPxZ7ykOz1flZH4ZtGZ/gzZRBKs8iqqjrTC+Efj2Gkvfr9wstp02
Gh785ZmjywtorQRtRIzkF7Tqrp6ihSHlnveXWJ+tn8+TXB6QtGIUAZM61okg6SlWMbAtleIBSH/I
aJA8bWx1NCB+z9iEytUonZRxP5JW8L+Bul4jFWvtKbsn93RwJfH54OBjf+p+1VAbNe+gTQnY5WoM
nmbUsuA+zVRRvwKZT/XHzmHP/o99hBcdkjMCCCDvVSlg6AoQ0Urlz6QJWLcSZQOzvFjDgjNpfJ13
hzl/pyLnkF4PAHGphOK2QidW1jQSHh+whLaaweiBIe09ibXZZdFZt5wVBFFmH0ljLSSJT/8+5IgL
PGJQ3pUYcaGqLOiKzWqSd7QiOBF0TuAwhYXaDy3pkj7kp/pCM6AUs1h7TBzFIDmh0QLZC15ni9L8
aEzqdIY1qP/vI3DLlQEp3mYiIwpk2cZyE1JIr40Dz8Xo+3/P/hKH7KeN9FH85Dbg7gDBz+ENUPT0
2xrARAwD3EGrqYxChZND9pPk62KgN0ajKnFBNqbL3NzKn3aR4MDSZ55bm8z94ODkM4Dm1uZPQikA
h+aZkPNG43vc3EReKXWxlKLaCfhlH2CGfRF09rokT4RBpqP11L/Zk2viUCgnKsRUIK1xl4SL6yvw
bvrpas+bV3s924GWRJthXVx/O4Yqlx0yFyXxGOwUieALv3eodW1q7qbzTmwQGybmgXkH8NN2ksa7
LKZxiXhpw3+xoJWn5U3K9sty9oAH18SCshYY433ewjPocPPLUjdiT8QZUtYClIxZ5e4s+eCRWYAw
SlQW/x4iEBSwvUKiVfjLB3Upj9/GGx2d9wnMavhiG/W0n5hVlDyexjv1gn8kW5XiuUpsCiDcvB2u
vrPlaSaVFcUy6zSg8KVkof76TSMSfConEqcQdQJjCPpJBwAX6ygu27W5/H7UE02KNprNt14f25Z8
AIQJKnlqDnqG+fIWi5EUcF/jxZNHTAsQgkyF4uIiEKQPNyEeAkZ9uN1gJDxq8NuINBiQr/y0z9RP
5wnVmmNJepOwqLqNcQ/1PYvv9EV7mqcS97XzkELpOEnIdsad0p33IgPjBjAYLrwmhHmtwt7k88L/
OuWRi0UlsVCasYxbjRujk/NZtSirBw9maae/K5m/1pP86TipVwNjwPF5Ns568OY2rveoFRnztAxs
Xv6rrJJYraJ/K15KmPxYBm3dy0IWwA3/emWh3051HAX9VzsW0hCMYojn3f03SS5BoXKfCLjdzChH
J45alE/GwsXb9LZL99iZQrPyablUbJPCJyTUpsLiKD0BJWtr0Uql96ydLaNJyn+Gm0wmOcrLyEZK
dL50YK0EXtbJs4yqIn3fG0QHB7So+xGdlFudFTTQ0Xyk5tluIaeCRQZyxB/Jniustksl2iaKt0Ea
7oFuCoCospjQdVSV9gHzvkNsLlHtDHtvu68EvZYw6zUHBE/KeEuX2WYx/umqo5J4gblUd/F9/byB
kzqZa3nQbUqj996iFAPILVQkkA3HOuUBsEvtJkvb8m4VgTLhQx2pZaT/iUT9jWPdQbjXuxNQ0FFq
iTur2z/08UyEyJgMfgidMAiF7cszHW25pmm5PUqbZz0Ef7rcgcB0xwhDHMeA++zexC3/C5XFIko9
Rgoesq5uJsUXOwUn8SzRNcBC43JLso6rmgBrs7DVhSfLFR2Cb0bg3ebkIJaAXnXs6ZpVQ6prBF7q
L6bdm4jCtIngiAQBkUXJqehWxB4Ucn5WMDFQ2AsZ+GjPCfc8lbIDXnwC21+XzBgimmENkUoH8vZB
45mTIhzhIIPtkkWAn0C/ri+I5FG2vrefuGwKlOAMQKYuj7jM5qrosY8TMoYlZayW2Rkvleaf8YyU
RGIdhPQG5iheo9npnWsmLEar+LNBy6uhilqw3NFpce8TiirAuZojtUMyK605Yj35O7gJmtu4yrCx
sRbigMJsUHSyf8si1zJKedskGrcaoloIoQIvGc9VMqQhk0AYCD188TECdDvpuvARkey8YbLuKcMw
/7PakevCx/OOtI+EQ2TYxJoW9rQjj9dG9wGa9XnvHyUgaOtv0t/CNZrSApGRoEsd9kIBRQYFee3Y
FpXFRhoKKJHe4jH6NBhEr+fz49IwjbZEutHEJ3m1Tfr/5y/S/4AplMyvrWtD5977Pmx8RIinQ3iK
eYEBwzvMWNrIpgNxOmVoCvxfCeMmy6kYDIRKCdH10Sd2v3ULoIjm1OPucT0t+TtWj0V2tou4AgN4
bZmSnWt2q0CdWzlTJjt9Jx5BDkVxPpnT/Is8JWJ1a04DBH4VkrfZhlydtP0sSLxC+rEa8kROusHf
ijESyvv/W1LVFDckKNUUzoYRDPD16NhAdWC0qmHjtFt7aFvxF4UrmBIMOvLZgJ486LD038H0up3P
DU1KQPleJoiMu9m6r9K3LKJiPMGViR0KZcS17aAHj0z5Gxpj/QL9ySiPdKl2BtvuHbQdy26q6JtF
r2cv/hUy/DN5h5ENxutTAWi6N8+rQrLy3/E3adL5TAU279ACSCDwbxHrANoywoklAYR9jHHQd+AY
UahHZvY6gFHouHCbntB98SUNq0y2JOe7N5ZdHmSJW+YBpDuo1jGEsPpWi16u6ZR5VAPXGE2qYX3W
nvINawPvpPlQMvc4BRov/ptOYA3u2DUCVVpOTf9hMHSgEQMzC5I3cOBqbya+aB40ala+06heUJ10
qhunQh8dz718/MVovHtnjPQ9xAN80BbcxlZoQoEDU7d96kRzf6L0PKxsOryCExaoteFCK7S7lDJ3
+7Go3xjjC0GobinX1PTYWSsFApzALMxDSY5CJT05rahYztpiyYtZzxExOIQMR19ghrFk35GY4DgM
CrZbTAFNH5AatUuJ8GLb5vdOZZFRUqSHTlmiOsrFv8lz/DXcY5zeG6+cjdk1FpUNsEQuiMSn8O90
xjOVoFidHp4dzvHF/qtmVYFnb/LR2YXBBYi4A3im1poJFlMyY0FZl9HHZ0IDdk+e0PxFApiBnIgX
Y1B0y5orimmzQGfUPus8sLw31fHkaszbXiOOSFyh6U7bufhx6ztpSSm9ZehfXKScODnexhcK6l9f
rSrXhBUXgn1oWq4RYOAMWBjjHNRJ5ZUc6TKrLADast7v2FHWyuDnprxabXwucMaALUHi/MKr5RZF
/kavT2XI6V78KxlH2dfyAFbkp7gAkZ1LCegj9NQ6AK4QPNmZGda7rWPmSFfZox8XawgodGGT7sUT
4APEUdeY7x3AUZ7RIaME8Yo4dJN9trlKg58+bU5lwcJHptMkaQdXPbNRoz5BwAMUia4K+SpHk7sP
aWlyyNC4S5cZ0D+49M3CZ1GE83PDSFlKEry6S9F+ueq7bo2odqAvbDFqDvb2cJPSit/U2sVaFCiP
4FN249uPXpQzMcb4F6gscvZBM9/LFZOUCG+KwloxazRGWQ88E1VfKI0kX4T+bzFCci4pr76epFNt
DncP9p9Jap7/pIA/Cvy/rJHAz/9h+fsn/4dTWimiz+EjkAAd4GBtvd3QWbub+sQhqF631pEyEitS
f26BuOBU31MHEoLxGJvKogDruSxZM9SCN5KdGfK5Z7PiEDx5At1hBC4bYXRjePHznQ9hkiDJk3Qf
/uvJWTCpEdIbAOwfS8cuRsm3JczMLGvOhPpYZ1DYM+HT8Z6ya26m2vzVxhnEH415dCLvhjCdf52H
5+UjSLgSfedZH7ggRBBPIEdAODTBaNLQDJhggvazAu9uetOvTxUx7CGaTabQ19ZP9IL695oNdx60
53MCYwm5SgSGGtv1ELEIgs6k1cMDRlerKx+iMFIocyqZu6JRnYKMricl58YENeax2KUVv4089Ava
NoE7GjIVx7D7I1nx3Ztr95l6gGsyMUenktqfb4B7MJvKS2EcjL70bcOjuu4sWXaa4ZO2+CnWYO7W
cHX34kUsz0rJexqpc8Mu0IEnekAgRPZXG6/70uoMB0YKpTNh3gV4gI8gXcMKOyL5g+cgpQSAj7Ol
0qHT0hIJ2dJWOpgLEkByAafXzYFiuDZdR3UmJmJE0aZrhsasmnLNMtwlIkSrFDWcvxY9ilrk5MYi
aPccrjywuixMB611nBf4lsxlzuaLxP6OzQwglhParCPsQgVLepdBEGC+8roNHYu+7T/v83gy3mW/
ku0CS25x26MFWia0v5S+UnCuvS8Hk3dpLsT/Z8O3Y1tnZfsPG07Swv4IfHvFeUXLZQskyZgSJf26
wNjIP0RyKNcBYkApyo4ZpdGIHvP2iZp3IqjeXBbqJ5gLM0XG3/NPmcLN8ktSv6fV4QC9a3oZ5mJE
kxuw7je5jWD+5KJH4bViX3OLjtJYNn5CXxZntU0W1wO7GJt5BQS5BRoi2UEbwGPhj/hlGgf6BNYH
BD44RiULoh9TnyPgcYp43UmfMCfzNSTAEbFQO93fPL9dWI8emGGlNOgrIQ5XMEtr3Sl6v6N3IMDb
QAb84a43BlHg8DUAckkWYdMybsWL/5WztSJebIAQQEwfg9eBITSGztvT5fRIgqmgMeH0tvQRXSqh
NJ09vMG34zAs8Z/HjS6/B963/jQM7gXv2F3GnqhI0080Ghh3CQKE0aZW1+2A0W/vfbIL5NMph6oD
Yv5cewutOfqrZoYAUUZSRL29ONqNoU28yTQmKlp/Ze2D3ajtb0jPLnI3GlYemGwtpwzfK/TYuqml
jvZUgCuQr+9ipWIVXV4AR7zMvjDDNveQsBUel6iz+0muI6foBB8sXyYyB2r4qd6dTsBaLXscQmrg
3DZGw28AxlJvc/9jWdLX+tU003vtFylhdKIvj+7zcBEcBr0D+c1EX40Oct4kiDX3Y9yrycc3G645
A0E1+5twfrsHorXzpCDpnhE0Q+Wu/yBaBXlLm1/9XYZNVaQvj9UGSFuMPlNZsaLRLb92ZkYQMhEo
j+xkAbRocRMSn1hjd8M/tYt5u3qq6/F+FRFvgtcEAEkurmAdS9ShVJ+kk8jo85eIrm6rpXZ80JYZ
MGoCVuu9eoX3fLGEqKMYBJe2cqIyHExau9EQaySGI5mJU47scqikVndMghx7ohHWQDHW1IhEJcWV
/eYcgIoXdWCi1DYk70X3fYWrJPcCrMqVPzDJT950sYfdSrq+xHzHJnNbsJrEaOLKKodxN5dabmkX
VgHE3wg2r0pDOsZJWYohkj4sduyxovgA40DJYOaJfuQT7PuM1IWDYZV2QtTZskDtOmp2QcR/Xdra
kepAKShhU2SBNNrE3QZ0fJhrXxYEOCwl4bbYepx6AaXAnPts7wyaCjcxSRB10UVU3A5a+8nHZBLb
oLZAidT5ne/T0vg5+g6bZQOc0PVkWA261d1mj3BCOGUfEToyH/bskVmPok3nGrtaWpvf0j7SNiS+
/yBo238MOPXxVRtMyjbmh8qTtJTqIe5DllbcR7rF4HnP315z6FyPkNyWLylLJcnIGghY0ave36aZ
/JykERG0gHgy0av5GPlgYrTWP55BGSzrbFVZ6Xwk6G2QJR9/4T/aX8fi/aA1JPW14uBLLjVLhX07
C6JkM8htLpat6RBAZcfqkV/ikDq5GoUO3thB9EhfGQ8WZrJRMmOgmptBC4BQIr3y5H3o8A0SzwKV
+By1NDvJa4HlYHOcBfqB3xIjLw8PxqNgAv5W/Q+eSnH0zUFmHQpN3s9r8f2Y5XTUOdwtxRu1vEq7
rX9KQIDF9UhMotvn7SvrzCVSmmFkQ18PlMv7aeDZP8OLKxObnf76+PfF/2J6oKn63kdfJXXL4tBO
YNvfim2eUmkJ/rR2MZehMGe9woa+fjgDBprtBiVeL89BBxpGzuWtew27LN0ahi7Od0xNc6kUAQ5o
ROiK5tLEwmLWJyvyUoU/oXKkcdBulm5J0p/qhfZhM+m+wkvtnphwx353vNJHakDh4Mx1pJYx/KZF
gEaLdPJbo08SsF6/14bgZa+dRJeWKmmca8pkocFq0sTm9Qc3PE3HtiwsNrdyORy6o6718Z1+iIBh
DwwWGEV+ZPA5zQneXZzrzxOfzg6MTnEU+vKW+ls2fl1F5dRxA5Z9b8CXnvhCjokMAk4Btzmg3X+z
tz25gMS4MiG1z7f4yv1PvjiXffWmDJDuyfjqk6guPa+jx9nOICmnwaXiNH0xr3tITNwGcCy7qB5p
jsUH+J1onzyRYG0cvG5egfTHVzPL+xawXn6VMVe4GPJfgn1+NeJWh9RsS7mGvxsP6vPPQYc9elL3
tOi4kgNlgrzavfE72nwV5tL3nw6ebgHtkb3rDzCoPcGuiaU694bY08e8PAsOuBxTAU1FzL33PFnz
sjouWtgTqZUhJzamgw9/xHSshlHKNn9xKzHtG7TUd62XeRTP10vXC/wsHcXK8lRkjKe2fQOGWI+6
WEqThjNMFnWBGMIlF+tOobFuF5CoJImTZqu/ssSQEjkz2hP45bTxSygBsyX7Hm/CUehVXwKqOIgq
220LksQN7u+vovr4nE5AfHuFooz4rd6gwpFZn884JITFE6jtMlS9k5oiAgb6MO9ZanbrxITeSYPA
m3I3Z934FzweHjFL2L5szCQ/kzAF9Ok98VRzvBdljf8BPFFpkG8gyA9cw0sedyRK97lncUNavq6f
tT2aWB1S5taQ3XWUpyrlv9bVOEeJWvRVUiH9+l7zgQl6ZCyUuU1V5qtF2+vqPEc7hvgWyq3rxhX0
KHCjKUJzJ9wQLC26yAub0VH9g8XFSezkO/YD2fzEoGxli0XvqR9H1zvbQ7UpzZsjG42XbwIAOsY8
eDvtOS07NAvY52FtIFItQUmHfTvs/Ob0ore0Te+9cZ5UD5IO/JiiL30LsM246RTsU3qzEtBkkBQR
saoRfsPQWjVdnCnkuBqECUr/lqbvIzvIIqQaxN4n9dS6mieFyGfdd/XFPs8iZYFCf9O4iBKxWsCo
Z+2lTAQtOV2AaV8i3yDM3P6CebI+1r/YeEoysVJ9BZ+sVewZq+/M2z/EY/MPBKJEwrZCiFucLBBt
ekfFURmzpHpI98P3RtkAWhS5ft4c8edpqbEh4le1EGc/2pa8O5N60TH8jnn3QUVXwTT8EqZV26SK
SGHGuRvSk+qZguvo985YsF4SQ8+wqNuDNmx6VEpJxEuwJ55Ic6UdK1JUAhEg8qXGR05deBTySrV/
3clnJUo6tVMr9JA8Q3aCLwS5wTOE0AWwzZ6VVsLiEND4sJKC2elyymgIAsJ4o01pBqjYlE9B0oAp
xNPnEm2EwZAzkJ5VyYArqEoZi6WROqC60bFABi/+WNuuddnyAov4uEE04OL3n91jJSvXFduLNh/S
Y7WJw1RG2cTdknr5AEewExu64S+ODGW6v7/FK9QOGTcDbUuBrLyT14P9QWyJpHe8ravfR2zcQ4CV
kWklxrZ3sg7ojMhTgzRPb0iF7b/AUqO+RImIc0Axuy6ctvHfBhtm0MSMN31u5PbvfMJ3p48LNkjF
bSM3+mKNH9EsxXKV/5AtARTe0/g2d5PYfq0ZL9vPEvA2Gkk/SB+ZK2oYyV5f2j1uztec1JIWK9ti
8MYHJWJGE1hEBbL2ZfLYQQLzKJT+oNyNy4vnUBBAEDm8hi6CljXOdi39Epl7REWsVeuWHRIYdhWb
IOKxlYN8ViAWmToCzPxc8RLtM8O2Kyp+MzQy5+5dMzAaqJUBMS1cb/5jHBosZptbQ+zHqAxR3LL6
Za9wayMnBp3cScn3mcmGMh+i9A5iiswSbXPChQty+TDHupEgBNUvSlE6luK65ZC1BpTu2Sl0Om2F
pcoym2TQJW9ZTvvwwRRd72gFAfg8orwCeIBt4RjjYzP1YVx2sB5sWhyH/7ASS8wzhowc3wWaDfBx
ycMFOaWtUDGZsg+p90OVf693pVA2fNt0H4YQxLMXq9HdWipgdIxh+a/mq+EtgocyIFB/0NBZgSit
FKP02qoob+pUt9A0bUZ2v8zZv1nG1IDd+ZQ+nE9V5PIdrDv/CPaw0mv9DIoQSczDXSSUJ7VjO8rL
MTo+BRqlv/5klz1X/mY+qGLifD8HXqW077hYzDaswiqXYgMhJB+NSZ2spp7XPSACt2r1jsM4zVRB
Y59MjKZzAFgG172D/PLbB5bqh8QLCejnLifkNIiDSsFHhDQ/psUfOrEK3MFRc5b7s3+M4/DiI3i2
PiuDH6UQx1w739pMuEJKrOFbXOAowH6XqClR6sFRffL4nKfu5vuu9URd6JMaScOdg/qsisWOuNSA
UOPsTz9jsq88OxIKD8h3wvRSXtR9/fTZL54tpgjLJOH1uccdma1EBW3Y7y9v+WUd3xDkDHwLoQwA
edzPPcfeJm/SjUzeYBSjggDLg+f4pZcdFPicmZydDik0eB62iflBMkfY5xkSYdHr0fGRnY9h3bqK
WfRvtkujgYhrCfmRp/yTUKinmsoPH6Vp+T3b6XLCAo9dsVXAz8PmmW+6nmhRqsUlDj4J93MA1FW3
034gRDGf4d58enPXK1xznw8QRfTEUO7DiFOohzdwu+Fs6hAFWA7yGM8BSH4w4fHWHBtswa1/uryK
BgIEz7Gmm8pV1J6rmbGGlIkGbBlyDqbTi7cg9UVxQJhEgyLRLp7u/ySkHRnmhGeEZ/gHBzQa3nzg
ZJO2gRDGAa4vmfXcRqF+tiTpQmHMZrOUdxXvNAL3tn7uEIJ1Xcp9kmLpbgezTUW3VdNdJt5/QpjA
diVRS0ZP4t8hOGrNTpoHmgfIutftmNSDQetcw9ECz09zPXnEhmG4e4s73ls1YpUNA2LRZd4nxHN4
U7wqn+jEIPqMqzdCgukyhxvmDl6x3FDCWZbRbQpJZIAzeOFPGQZgqd4ySuFpPU6NalIym1izVSJa
NWrWszX/SdJfQSZnnmhuq5dlhCCWXldCmGL3VDRo18GirpdbqtAmvUOxjS2R/0oRCTGikRdj4XCB
5sMDFvMl3dXrM2F45hGYa2XfxUyBtDNZO4ArP1Ouk6GDfjhgcmXfknSF++X5vUyl3ihwlq8q7VL4
cyN00cJ11iaQXDdCHjDKoL2nagE0UHJBklYZ7ZGaCUOJv8HCVtvSqQzmfaXP1sp5hjEZOa2O0823
PERex3bEiLsOgmak/WPsu/Y84Mj3HQ0Xli6koAwWp+8aU+vnrp0m8mLXCs1yKew+5nG6Xz4TVghe
h+GgzpXgeKv22Vl26dZFtFi1D3SsAOY8Qj6b7M7vEu6yc/8a1Ssl5jOK9rKTnVvr1b47Q9r5aIX0
SzZdDR9mVn8P88dVzZeaQFstMA05icN4xS/1b9whS1EBY0fTQvqTEZy0BoZ9ExXziON2EhwH6aJT
+wVFaXDwTvoQRb5ExkdqHI8UPHbynMkIx1XjYmf6rveAkA6xGy2piGA8MsV1MEMQhwclWV3m0lGz
KcxqGlXki96hKXVPuPJn6HvGuXZ8KfibLIDnu9/BvFr2E4+RBWnktN/8+OPl7/8rOHR4ol7t4VXn
p+llYQlkOWDQ1xgnlssPaZ+NplIKtTncoQ4H4VPYh4maZTt8cGzqBa9OpyRi62cx8mAsewBjG22U
7UBT07el+PPaPdjMHP630Yyagpnknd+nCwMke4fndhyRD8PuNq+7d4EMNEeGN2/9frdr0PFZzeyl
J2Ve4vlYr0fYPU5yqdPbSny/3JWQzwFqmCg6/gXmRTyDgdS/KFVapqoM93paFNh0ms7X06q7lJOC
/cW8kKExub39br+oOobAY7n7uUkB31+mmAdD95/2FegP/9s6BrJQoldCAZT/buPDnWgVd+we+Rdn
Uck0PbZGM6jDftEx5S7ldnBHCEgW0gQPzd0IfvFfOnaDa7xNcJf2Q1i7QGW0gV8jZEL0kMfNfeXo
OeVfsxIMdGiRHQkXBTUoVsFo5+UHtWFCWKEjB21cFIRy0nDtiB88/aPsei4HP/bTwHn/6QD1H8g3
XnW8h1eTQ2NbehWSPtm8aEVP8ODc65v/lyNUl2r4i+RdQF/IMbTSHNBqBpYihdvnop8Y5qvfYJ8E
jCDFc5as/E9vZNa/vVRoDRV0D0mGtE44MTyPMBoJYuV7H7qP+4yMwhAh8r2mAvG3talSWZsTqAm7
5z5NRrmnmr4cTdjA7cnRWF6k+GQi+Un8BMrtUTZNeOO9owJm8YyYz1XLKGEhiP2VriP5mTyXd7CT
s6fnZZbTHMWBYlxH1C1ZGWw8HMZJpTU7THkVhQAPAlLIB20aMSJjdWL/AYtkHAH1GXJAuh89wrtS
HQ0E+ZpKL7quCZTxGY8pVvZjj6T2VfCtaZD/tU97MsUDBqTU6/FM+c9CSvxCdmiBx4/Ue5WPoglL
M/pxrTmDWRMrVS/T+RNBYD/RStzcEda7XOxZu+YRSGULOijJCmqp1nmMQ3O3VjLRKBSTI9fM+kgf
JsCPAI2BY/rBFHUMZ3W8EuglzBsZUdxSQKWHP6GSckHlJYzyK9vMp4alLe0qElPFeGmdZJ34xXWU
kvfD/rXDijW5W97y6BG0oCyPnVcsHTSPur0B91j4fHGIRLCr2Kxxizcm0Jj7hro8780wjbNlarw3
NCzOl8JofJ3SW66IiHPwmJh3Kl7IS9y5VieVxDB3vqaWrs0jL6GpC4PBI1jCRgrls2cqzXz3T7Z6
vO0n8Wcx/wGwG/37cT1bKKcKJH0qaqaoL/Bi8DQip3rgg4PY4AGxuvnlKmBvc5FQZMHTjJ/oU6KE
ALPq8RW8Q/APobVB+7X2beNfzHKtWlvVa0NxyHiUM2j/aCTlycZi459sToMs49VgEiUtb3TYl7IY
aQ516QSg3KrqpblmPiN0cbuQWMZerS+VvGh4ksbRHKy6Uy8R4f7rr5GJ3U5MIVWlduo5eNcJr/WR
ZRpbmPLRKIRrDk6qpXuPk3o21uv+kgt8R/RBVfhhdem8VwHQx7ZUAOOXffcUNjs/aHPmdlETDOZ3
W93zsFY2sN1MgQc0Z3E8WMrYYNwYS2mI1yCrLtme7V/CRhBOudpZ6I7L2/aEmrXZ/HGFGSAfZh/G
M6kmj9gv23clv/6aOCBkRUXtsDRnOPbIN/lS5IFcpyR/9/plRqt4NSMYrY7sJ6o8Z10CfUuI3Ln0
n2SHfiCkELk7VhfJJKFXPdqRMV3VbRAua7NAnmTRarYVIruxwxxTo8AJlSSMFRB4LtmebQhd7Pqw
YRo1nYCYbLJXZJvEHrpVLG5uJcMtZww4hy14QGB2LDW/jHjchH4CwkPqpB0GlrxIyrunuWF1oj6l
732JKRz2caD7RqtrjvYyVrV1B9TgLGkXFDIbmi5qQJRemxsls0TdqWKSrTNgabFAShn76G/x+0Ms
JqpuCEqRuEQNiZvSIp7q5T3/FikWfFDRzWEfU3ndCk5qMThQhMr6qQGTgxbh/wCH97VMONxP4x7b
TZHEAv587Zhd3VU3oRwOZUpSV0IWNXly5HaqmJXtSnCtAabS7ae5tzGcL79RIx84FVfKdxJa55Ej
gf3+TIoElZFDfBnTSWc61EkbdBySabn80maam9rRPkqOq6w8kRb2Tl6e+eoO4KXGQ8jlokSuOzR7
cCkegdGQ1YWmX8pFiXkNLPVj8uhFJ3I/4/9U98Y6jzitgavFYkCrtgj3V2A8aQYDWXcFuOb5ZMLH
jULrYUIhaPa9gI2Gs8nRDj6MSZDuH4pzGxrF57BQcZCRLTauXuYROhxt2eFuV6AM1P6dcuaEpn4y
XjMKH7ZOhNe+NwfvpSsdZH7ZHgEJ37XpF41EXhNcf3yZ0pi/TrFQ1PAJaZDop+kqdPLT7V0wdCzB
3S0crwYz3f3se4j8bQHeKb1E1olHDqqazgzTyltY0LBSUkV8jmTz+DWdL9kCulIfyf7z922X7N58
j6GpP4mNRigZe8hTpejo3VDB9lCyLXBGITsJFxfxq7PcXLkkJ9xL7VSoyyraO907zWRWY0s+f2lt
FrHIJRk3f90NnQhMBL0QXRl1glqeh9VvtNi6mHJgZlmqMYOLF/HCC5sWzeCeWSlr7H0XHIYIC50b
p35RHgI/OeyzSDZnKy84F1jB8+0tlMuYQVUCNYw9Pj6j+y9+HjKpT8oxQI04yW+VmlNKLwZUpQ/f
oq4R/f73xIyI1QruNWiYObGbwUyvqNhIjcrzySSAsxGUXV4JsZI5QtczGdE21wL9NJMspwe2AEKm
TedmLufM+a57bZJO/a4YdIuoB2BdqBn5zkHESVXpxMgv9VvziRAaUtm+MOcs2HtuMjHEh9xtW9Gp
2wiTobyvr6ILCpCJt7bsKVNUyBtS9sa0V8uvmXWowxYBqdFDkR5rgtK9+TalC2cAw0dpjyByFUYk
a2VD5TbM7xn98tH3Wqf4NHLDTeO8O4koCgxA0Brx4RbMEvQsoLiFk/hVDlIJf6ID8rJz78Cl+oZK
fHhEk2O4791hZHC29i69K4r+6RVJR971wvatwzrxXRe8cWrW9ePcbtBfPjN5vtHiQcqpP1S/v1Av
ihFyi5uAjq7sE9ttyhfz+8saZvkl0hmaUa3iw6aLpbiHFrJYk/jrtz0WHB2gZxITFFGk8m4gYxsX
bJwaxWQuvgAn8rEumo1f51jK978PnMYUYREVBF03pulYE60i+mOerhmuVNQT1dKjfh3THr+mR0ha
Ri7GVjxtFv02dX0dcGq/FNPHXylASokDU+lOsIgaEGYO6eGVXZAezjNIqbU4W39tV6eLOd90Z6Gm
ErlutNtWBBKNQLkRyV8E/rK1iOh6kBJwtJBRx/eA3OI31tJzNcbK7/2bFUYZ1iWvCq+J9Th2LprA
HF/K/s746WYZTzJEPG0iFZVlRSy6xrfh8LjTSt9HwnvU3vOj+jY2Z7b2oMHQgz+4g5KPOuKEnyy+
fRl5oqInaxXcggmD6ju14qk1ZWwxVBnYc4/6RhEMadN+YTJCJGaHkLQX0iIX345n+87J0a9jQj7Z
6Di6AYRx6y1tEu9CwfTcyzIsq9LdZk1zIAgbn9uqeyvCywdbuTAH5YvW48kUzIJqeZF3pEqTUDVC
vxZhdCQ/CkvY8tmLrnRbIyb1qhrlY477ZLHqN23nR7V9D9PdYiPU8PfjchFTnxBMxXmWKq8Y7F5C
8DHJNaTba3X1h4pLli5yLf0/LnvDShG/CoZTK/RrSO3zjxonqu0tBBqNRWsseARHj/tIN10qK3bb
Z8J8cKc+5kQZWRA9zbllmhNyz7XzYeUNx0jlqht3klhUjQr4PM1Kx/iww3OaE7a0el2kSfK/o99r
co2Gq3lT1PIDDtHHcCY6cDQtMm46uJ5WpeRaQ/kvZ1xmB5lsybaxkjMNPgOrB77YdtENG+8ndZb+
jPCy43Z/sRvjo1MV7hVRsul0POYslljT+QU93NMcXNFz9WL8ig6e1JcjLf3kHho1QsA8a7IL6cz1
nhNYN1dwVCH7DAzqEPZnWY/hE3SYGJXIQoyKaz7TEoTI2kAijTAiFGbDkdk5fq4IwjejKNmbvk73
EySrhNduFZTe/cv9gwURTQmWQbe7sx/ntQjNBb+chT+AjYGgTEyChUf0nbsaJZJaF9PucEMMsO0l
0kyQmcUfjuWTB+WPVGy+/CNLIX7Wkha+B3wXfPGcb8sjB6t0TIKyIm4pg3j7X6p+4h86mD9xxMqB
LLRd1Z5vXpuCScUObgXRA7mo4NK0oemaThgd/45SK5WQpuPQMA3PC0G5H7dVINGA4Qnm6kwpIu4t
NWl13NEX6/lVxProLuPnY7AhOvB0wRJBL4FVIwE7tYmHdwIP1t4LJyaqKkSon0c1KiFqnT4ABlQ8
DaS01Q4zU+TPq8Lil9Ohe1bQlOSveHwS/kMrneyE2k4JDZj90MlEeeiFu3C8gHuKq55aXllQg40x
MfNoLUpbmj2j4cKkYk0dWrGSgRlmZNbhLa634hxx0dyYnz9rOo6iGufYt9pOkzkNzENNPsZFT96F
d8SfuOg3WkNXAYei6FPGyJs5bk7EgLXBbjOwaqsi4HUKQJXzj+IwbysedIVGMrsrw24r+2VABKNv
tBLDlXNMLbBTLvQyE427tuHBBNTqvnwP5WwdvHktrXQBiLvVXzAZ3280dNs8CdOPMYeNjwzp75D7
UKDKiMQLIfrS+Okjqe7Nkdwiee7dRNb4HHNpFaIhtou6JlyWuULc/NAbGo55FTNJyMqUd8vJVvF+
ECW5OeQWIdgao2GsIba2wc12wLKtr4QojjbGPK+La4koP3TR4t9cQYqGWzEJolGT4NP0BIEJGaAK
6Oht9CX/UJfQZcxcsDLln4P2Jswy33tZyVFgqzlpmskya/G2rw5NbkUl1FPFutv84GDitKkOtkbe
RSbJzmQPiDkvl5ro3OMvMTHYcZljnIgq6qw+lIERn/DFXY7HpfSHTuBU9euYH0Xz6617MiR4ZVvD
S+JUh2NuFCWEiR6vTEh6E7s8JXkyMDV6q2deRh2MSifm9LEh2hW3m+8IA9z6ns7vhUwOgxRH1n1q
LGgXbrJXE8KXh8PFA2cucXxRgY0DuIl+Z2VyX+aBd8eq1iAiMt9I48AyZTFaMsW0Rju9sRG+WjG5
nNNNjh18l9ZRLXtipX/JcyWnBi7vuitLNsBLFyeuEVML9EIBQ1ZNuBTmfMeRtaLV/aM9r4n1SQ7x
S6mf+IGSt1mvpf1dU3EpWvdMg+lD9mF5MqSbPL0SKaoaxGVGDn4fPZIh4uu8Ed2wh9glK80ezVRD
PmMPrbAFEWpc4wKDrUPe/1fXXzORw3fk1SjUDpgw14qh0SDXeT7q5M3Qp6mw6Qaj55+BpjahEYWv
hBMdJKMLYqvbIPDmTqgJ6+jkba5FwosiB/+FoKt9F9IfGiGuF2KCOhQbcpcDHLHag54jmXcKHi8l
oQ+r4O/JWf8x7GR/9mpFPqPT2GMOcXQQxTdMwUH+4uGKX6r0/INLN55Ak/8SniDrCcKF1zRc/D2U
u+tbwoWXylUheDywscsI+39HmNzSwWU3kiCQfHFCpzkECYSTkE2Nz8uSYGlfafCAP2qW+C72At9P
yUiHQjReHAs/lgqmCeoDXvieqvVKj3B7TsmW2/mJ3+Hw9MrVFv9PivZdkbA6hCpNZ11CLDSUECLa
joIisl93sgyaLkedNPzCDZDbaT2DH3rCKUOkm5Oarr7m2+UDXaXymMs/F1/9/VwqMO+J2+ZCsIpK
zj8hHvdsLZ5ilmqYvTEFKGUYIsTN5kqisBmTwmz8AWJBY5oHLs0dfOfXG6bpLV9fLTgf5sNPzcsv
XeXrGUPmVwc7ch6rtoID1GfWjJ+HXckXfTWzEYquKfLHfIwljRTVBJgzDc7jIBC/okFwr3VtfDpn
KvY/tgEKhnFWZrtTQKIsRwFH9fC92xdlUTRQ1lSpx41c5GDFEsesUPc5pKxqyguEgBS8jlknSJAF
/TZM1t+c7PdSYuetVL2vAhg1ZW1lNs1uaAZ/YPyvQ0mDn/A867BpMyzmlMF0NAVDs6X1lAM/CG3D
Wvc/X0Gzz8xxrF4vJC4PUQXsMI0gckL5WRAphyJd+Gt9CP8gcWgoooFCke8e8L/HUfl0ilEBm7pQ
cgKlIrj4aIjN5v22I9kf1IXTOYSDmJby0Y/UHfMJoRHYQK7I42lD07P2D6/ltgZ/pK+R0vkoQxmD
KOU4jT7akTohfsdi00wsxSyv9evs4Mrsi0mD/1nvWLyhsVlmeEtdqk+N8NbjlfzhdA+tUiqhFHU2
0uioOP8ULNiiFpEVSicx91VXoLzTnOhKSLEtzSVJ8lThQb3cx34vXZ9BhMkjmGokN1l9W2w8Ik0Y
nEzQjdutIvNkb93ZbFRwbPklaWLWDf2sYuWgcfyNyTIfz+x2GUMjFsDY/HR5sUngL35b5vrGmgol
MHV1fGiINDPIkosjJVMO7nz7hFcQFmH6yWn7pwF0LfAc8o2m0DuYxROiyvwV2c87jhBkCTeaAtRp
woR18eyfbMIq7zTPfTDx8bCmpUF+851Ji3IllJW6vRwej+eefud+RbWr+A4Q+eJ/6XF8Pw83uvg6
pW4ax1bltDOa8Zvl8/TJ+pGKtgKm2Lltt1jPsANMpW8yXCXCY65CnRaue7TXyiP9yrQq+uvHF5cI
Y/rttXAXdlazbhOjv5PXy9xNl/4Onr8VpWOmfRt7Dac8+vD9AemSQcyDF1aznXQVgHTLSbM3q5Hq
BLsHgkGX9Omo2Yg1FcoceT2xOYdrtv6OeKyA1qASugzQIgKY5Nrw+TSfm+f9FI75bet/39A1Z2UX
S7PAGpOKFGZFRNc28n6gpFqN1g9gO8i3OfKk8z/AerX/iDkDIG7q3RcJ0SRn8Hi77nauQNEELoPl
BgJ4miUnfK5S+WCjHLUyd3qlJRsuVCZAvDZNJARSfklov+CjmpZIulWjdSUVS4LK+bdDavxThtWM
YpnPnSFhwVK0EPXwoLm550fMe1Z/OXT+a76a+EyIiRY8oeikQo+oCyGLbTUSnEcotdU62clGU1YU
1/xjHCwXMRpDyr/v/ppqOLjtf4/yDugH+U8RSPhpJd/+w04u0itjoVb+Aumllvx8WyDzRKAmWjGb
4T7gvzBsQflbrgkv6fetcy0tC7eTUKPe+QYHBjdeYMvV49S6CdGNqOfqrO4HABWZPzfy0xMnpFvt
ytLcH1MeDVKXHFghAE/TFVWGUacuQ/AF0U6ppoc/RF5yb+rLE9ZURzAX/qTCD+Qnyf8Rlb62mUV2
ckk+zw2okgVtexjgA+69RMwSOZVqywpBj8LLvGRm5xsaFNzr5tDeizF7nI8VpaJ8Z2LE6AK/uczt
mSs+eBBctNfHvz/fSWP9rVTQgU+hRZCw2gsiwjvJFh0aucqgs9cAl4moKTwin3YJxkCRHCDBTy0T
87T+GcQuTbC8AQc49ykiaQvxQjE2PRitF+VbNW+uV2bzSLeK1fha5tDX6KcZzOQg6IahfigDV3GB
kxHPdHtY7jGDapFbSA9WYaONB4Pty/d4A6SQnLWvNeYLTs6mqRmJr9Eq81pqJEhcglAvBk2Kv5Qr
2Yj7//PDyd2JPFpGo5nXD2EEKk292yOk9V04JUvwJsYZ6Fz7UP5ysi8zqPCSax3KCGS6vjJCgkuh
m4eA9Gh2ZdFzH8uw5Q7qNlakNeI7BaFUDrsCbs+K29MrIuUSMkZYcDZjAHt/B7mEj6XHD9qkaeBd
6REp/dDnP/ipC8OJWHP6pIFuC2ajKtLWFp1Ikv+QwRQZPPaKmVRYnDD8uA5NgoP1ml1eit82+WR2
pqPml9wuGeNHNfXAP8OGoBVpRyIBVcC7jzhnpDTm+gIivTJSOJWicukPO5BwcfLk9zbJKwojbzre
LGFA9wjh+1ED7Q9ml7Xc+kTZ1wc3SbrdnYMGILRbKV8s42mmB9YjA1vKHUF8oNuEcm5PqKfhiY1y
Ru73klBIg7u7rE6Wx/LwU+NFGbGzQchBJ7yFJqk57p9wmWV994oBl6tyZ5Qo6M502iZytIlscQui
Uh87rOpsZt+kaeeAYYFfCtsXlKAy0SttmNFecIHqS6GnL5ioqzF/lrhotgCXoCQ1ONDQQ9cp4ENx
3+mz14cpwAYoCdQFrYXBnArPa+PyXlZzM5VgYvfDetTswa7b0igyyS8S9WdcaNKP5qbjkFw1WaVx
XnK8FU2vSKRTzJtlvmts9l0dwh8lW1B5SycZ8gVTpes3VD9N8Lbf220SBj/WZklrnF5fZEu4AN2w
I53sZ6qpt/1s+aVRpZT5cdlhWNAvsdZtcHMDio90Es96BLOwLbn6o6MBKZOIgbuK7l61aILhyFRq
E43GDnWPerZtB9cxHqsJtb9DErEwHm5BxDRg+4fhr2uv0XOBpt1DM6fkRg9HPtCA9P7T2i0cY4uD
hc4jQ8ed1WGs8At6jwvrlaFaDRI8+BR8ur+ZtdBPsjsQ5EeibMQ4CFMaU2bWgLL7ODtwgKScZ3yt
CPsBJZU53aLW4hTI5or5DW1atIvg8BdvQWqru/O++uHR8lSmXqgOF734okWSEYKa2zswp6cPjsVM
8KhG1fdoHJdzJzSQ5w6hy/0TECuimWc5Ki+vOnkvczyML6I/L9pVSXbdHdij3PWLKVhtTHltN3bg
kTONZLRYNsWAJufP8YSX38RJtoYoI/0pzNfQtBE2HgzJ4vZhKdErOLV+DK/6rJmy52/eoq6yj9g6
fFV4cB0UQtY8x5gVfklQhdH3bI2iMr2/RV0rQCleGonzHRbZbuLT+vOBP8mbR08HMx33QJE7v73U
vMY0NXpA9sMxAA+a8xGhgCaLmOnJRWpREHA8exBb5Vez6neDYRt0ihA62oIt+BMa355fiPn+3Vhj
POmJOB3aunZWr2q7LUDWJse4LQELCHcWcpF/6PMbhx1ksT7E43MW6JIGVJrVX5mNn1/gqWQfDOly
EafMGjH3LN1G2PqSjGAOoqTIQCJi/OHzxcGMpWreItZtRKUq5X2P0ydzQxb4KLrCygwxtBmk+SBw
TdQSpwaQw11bUdHv97sVQSMlupstNGwKq8HV+CRJ1tYnUMCsDcKsgf83QsifE4oXg+FEWf0f4NQB
X2ElGCtLHwhtmiyT0knhh1cZGYQCAmbrXvu5v9fpWl1JDzroA35fcGmXiTQ6epG2y2aix+OlIEns
qDB+0D6KZ5hgyBLKlaLKioSaHBXlun+tNa/5WmM94fVYFoWXQYnp4k3e27nc0faIdv1hk/hupOoo
lqo/lt/D9P4QCklcIl9PjhJOH3DU4sFGnlA/AeAqoLgHHq+RI8ZGxgLeePyswubiVgtJvyvaqtQT
qirIjFLF+myrni9LO+QmFFZpEmNXiOlJKrCxWCo/bcUxZ5Ab1XqvEoG9Eju2nldTq2cYPKl365LE
0dFjSWNfbLTBJ4cm4VoiXuCM9SAu6w4Q6YXJqW1lWJjBlxDRexWWFOyroYpLR3cx8O+AWcNXHQ0r
ZS6sVhLLlVvYiq5THVsW/XQXlF3mItmdlh2ZrfnMd8UXkYHCEAVdE74NlCV4rYA5pf3acZhBvQEX
x+3BAd0dHKajVhUneKblV970ez+WDejL9koRFXGB2raMxwfsdKc2LjuRAq1hj705ZeSQisBfqStV
kutY1XAeUM4akii3oECSNNzdu/fGxaBc0wWHH7r03NrNID/gphGWOlE8afqDmdYuaI2NI45/fvSN
UfKW6aFv9B1JKVtWtWSvJFAaDeSo/J7NA9AOpD++jzOvqT+ZPUCDwNLDRj0dXTDg1AO9tWqXqrkD
vSUrj+EUDSnzbHc8pnvdWybsz6iG1C/qZkrZ9pczE5YF4FC/WiLsVPl9Muif+v+CPPeE96OkYYae
4i/4dKfJyBmzH9NgUCUPpbovjTDVeEJIIaQPIt7i4B5ke+q/sTf/7hp3/d1OV1AdQFoaPrIN6H+z
3O6Zeae+bV5l+8jevoCYUPVwxF9/nEOb1ZeHeFT3w8+5gKAtAY/Fp4ZaGuxpnBw1gMbhO6WZdsHx
iU/nOR76yvVIIPWDTcz3ZWs1tcOTXC3tSLlR4I8+1Y+DaP6UiO6BmbS2I3t666UhOAFuyC+4HysG
bdhoucrapS0nmHScblMGIJ7KD75uw+ZTQHBp/JwlED3aPnSZ/NWzbI5RlbgrDm5U5OMNVbVJgqBs
lqkEt8Z91Q3kCMW2Wtcfw+9QFSd5R2sJ0HAwevRv1mE/VHN/a3oOSki5t8eCivKrTZXX+D9UL9p3
jcQc1iFZ2Cp+yHqI7FjCi1dqn3M0KlXxnzKPOERzjfNxCVauHvQV9M9p3MMLSZJpfV9IdR5wwnhu
EBJDu1FMpP9wkb8nLCKwsHdkzYe4yvzOTSMlUeu894MICPeHdcKDvDjZRniQabkSzruwoeh/G0bA
xgoZtAYKTYtlm3m/7kDLW2RVSNw82poJQBpzKvsZTPaKPtio62wkiKKEgO+AWQEqTF6AWeN/6ErC
zi9T5uBbSjiXwCaeQhNNI0TmyTjFZ85K+1IE6a182pVMiOlG65LPYMeKuj130WX/S7gVY22rPU45
eSRc9PXYi3ddZMjmTJ7rcASdtsBuObCcqDS2gJZ6MTFQdctpO5HIrpkKNwDuCmp+yOKsZOCzosM7
x2sxdShEp1YTCzu9wnZUxXIEDCVDSN+EIPOoL3z22gDIU9ZfsYxYLcuceenrlzUZ7tHICbji6VYT
uV1YWVFQATeAOaeB39/ID66USXGUoK6RzfdsxE5PEGdDEMBuMlW3WccdsTNGd6mur3ZnM/oTQ2Xf
6ksFgbgrRaYLeUrRRSKLa63g6la6faYeszNTUtyvPf+/NeacS01dbeRZtYsOfv0dM2uUX2LBurmB
ujRTuRy0O7XojLHUwbU+SGgUSwd7VqRR5CnH9DNfWbdLKOfB7EaFipGLWjMJVPBTC5PlTs6nqPbL
Q3w9H2DJLV6vcINad7IMV8wXGo6NvPVVp0h3CoQPy0qKtbE/uP/htSRcjT5QWmp5Kv71N6PLlHu8
y5VNmxFTFQVyn01hyTMASbmqFhjz24Ax7vhmykZFn9pIscrchSj39xlSJ9h/iVoywzFp7QZEQo1m
8bPyAQsz0hVdUCAjt8ik5uTCpNwXWuSClbJQm7aCXIsXCc9Gj7RW4NjJTo7C5xiiWQRoF8Egbwbv
Ds+rn1QY8W1I/wZjEAKvGuuEOSoFUTQViujrGNTxuTNdnM5Xs3q6UqrZcXYk0UXVqT5ELl/XkmO7
WjvVJ46e3tuDvajWaJyDi7JM+fiAQaBl/iwz9sbs9eTms/z5j3Dc2ax+XFK12rdZqfKaWiwqkrgl
9xr0dZkv6tSKBt5Xp+zdpPIhBPKDRXxBXSuQ+wLgPfopLj5rCqzjY9OM0t3I46GQYj030ZIFPCVJ
dHu/Bq5MzTSKnn1j/qloodZ7429++jWnVkaz3/mNL5ptYTI/qtngNqb2himlh1JhKcLl3KjFQbpF
LchC9Q0r31PYU1lh1m89ZtbjkzxCaD6jNQh05r8To4IGG01RAYdCmb7xfORKJFmGHvg+zY5Bnzr6
bnAjfsuY/QRUz6K6MLksYQcvdP0Pb55ZFRJ/jDOZ6U9mDsSRWJpA4pVKa2Bld7idwyLPCrELeMaY
eSLEhczHzyabLY0xELUOPCbBbWzZgQhLQJ9a39+wTfPvmEJMPL6+f62c6qaw/AbaU4rtx98wvVsF
/4i5mLZZrOkuje8dllMunwAVbXlLnRHKbbVogRfSnEqoGaiN9ILbaEDlSWnqG0GMoH3eHkNq1BN8
vlnIlQKSc56W+bvClqlhet7cXv2rg7o21z2TTediKc/5sntJSaLgVL3f/1rQH1hicnCEFw8wyoOA
pQUf9C/IOJkKxfwmNxEI+HIZcG+ICqeU/l63lB658lTBa9c+eUeCzXvqXRLHJQQmpw9CA6Kdpr1x
JXSZR1Ah46vczbFQhfmFilC3NZ+yJzKZMOW99WU4yIHDu99eA/jx9A3W8XJn8cALJ0zCxCtOSHz0
BzmtapcwzsBPOwvGiEUaV1Ob/41sya/+gfoJLzKA1FY2yK57rZIyxUXRWEqjo1cbrHix3lSYyCYc
5FU62H/5lv4LI8T025RD7FtYSYO+9QIEXgfIFbcBbef+z0zA3iUad+gCXTygEZxxaGycUMndwP8e
pTcryAAtpLHAyH+0nLO/VOlYKvUPlPpAZ0msmTt6KIdXk7jS6R9lx2QXEt+iuUcYVoDo0DmIbJfI
FqxUm3Euewwja4b6dowhsSNQ1syeu3bZE2kIpRCozAGwfDm1McpkA2uUDkspM/cWTrwa8UubmI2p
BjrDzBxMcvkcmACxjKbwPWgWqhygVKNKNcO1M9JGOGh+T/ry3+Ik5oj1j4uxhkZQNGARY+A+y2hu
E9haBqQu/CZEfaLQRyTvcv52O1DxT5LnMDoJToHk1cxsGLzhoVs8Kzp7Wr2Db/SHlVaRyI3bkM/n
fb22GhHQhrqovHwC7NMwGMmurV8tSbjcVstzQfQWLtFblTa4SZK+Buphmx9LtSdWP7qWXKMLg3tV
gkxzlrPVdhAw7t3LSyXaRtomdRxuLQfrHS9LtmzjJvONv+2Ge6HKhQiChnGPBYk0h2dDGAddrSaV
L6MBBVIYyIqRwL2J7C+aeyWR1ZSq73y0mohqBES6L4FDTRbQTNW9mgflReqKfVzogtKU558Yvq45
M01pZcuNaKlApxd8dOCzRWPJGo9LqeWuAnYadd7J8xbflBb7IvXM0IulIEgRHMBUeNU+92tbEeHL
3P0SsxgDwbFABpm7NfNRfWjLqCO/xZa4OA37EDGFfEgiwmEsfFgZAEOWZWw05CT2bVb9gfH5cdIO
/kgPJuXdZGtT7W0TgL1fjz+1uYz+Db7Wy7/aABN+zEJljKJGjTTJjL4Ng7CQE8D8lZ5WTzfp5y/4
qhs1bp+UA99DRvK2naKxYdSz8pvNSDcgRZiT/YxRP1lBezUrMDhh8CdKul5b6talvW3yCZvn9Isp
Y49AnmZc21Dxq7ciUG181o0kzTCy8CUuWv4Ldo9rE7z2f7LSJNxffhcPI99bQ3QvkFGQgDZW1KRn
aYtgoC0rd8N8v2ILJRiXpp3ZESnZHWd/Q99r1iWh61TWVnCMAJQ6DaSr4oz0j6Mb/0OY1a9t+lbf
YMxkWHJbQLiydq+LqJqghBKIChjizr1tpb48MBjFu189VWIZu+KKZJ0fwug/wTdVK9GePyevAEcp
ioXqvaGTYr+Q34ff5kYpKIiGXQaSzGZmTj2ZK38oxGhj5wvZCybOX9lBUHxnjBeWcOo0KcS4/PSK
N8yCQYSPIFn8dI8LFtwQE3QXIpuZIqpGI2q/Vq7OqFQXEpzb1NTikJlSrkSIR7UUDYl1WPOuZSVp
JQiCElG8CZuEJbytQeRfstGAc0mlB9OT6Du121o1tiTaw+1GnIGWTDdEga7TAXMEYgIXZiymohG4
1xnc89vJTQMgZ+FJ7ghuiUjNQxZXDu1R6E4z7Z3qLowJmbRPEb87veb+mD7aohUocv+nKTb0wxff
13dGBreQiv3g3NIlKDPxLxF7tmOKlnDFIIBrRn9xTKWqgbSDuyDd4eiH8OW5dGDGFWLSkAhRS3lb
lbHXpzpGb2p1uA4igezNFhDszjaf+GIRbz9S3e0nmTM2fPDbkK3Ngr+y0G9F8g5iCZJwRgBMjFNf
uakqPFI2UY27bmFFKk/A6/zYDBTT/fmDwPiPHCkdff4MD1XbZMzYgS7x1Q0MzhTWFpFHb+kC6TqX
caEZ8NhRrm/dKhEgzLCuMpB19+pNTIUG15k4vjo0R3GC8rTMjGB69fvADKF4xzbhnj51Fl/uyPLw
rVfNZnYs6v5JiyB0UR7qXmI3HPVBxEUWDS62XQaSWMIgjN5xyN55cWPIqOSBX7Z+nRxFx3oqJeC8
RhldvwLdyOGf2Kkwi6ZB5BDuq3MAW+7qjLae/ItjvhG5bob9aWrNXlawN0MarBMY76LsLNTkpGUE
QgfwIGurb6aCnUwu6XRUlg9HWzkvvrO6lf9pmkNBULR6FAIzg4wEjtxjzh3U2to/eD8H1CDaJ08M
jr+UIC0l38eEEqxJwq2DiXHoR7dB86gp4MVp2kf3spG79E01b5NsJAp92e7mi45MZNIONBVKuRS0
VrANaQUCd51gimChyLSyBIf+ahIdPuNhOYRngNwMLyu2/cXtXR39XvrT4+912pXY727pJYl+/01U
W7yGw7CHWuxslNa3lQgne/frucVbsxXcMuVAHFVVKAHd6LI3g9QftRgCSohFhVAIXCjDBS1BvacP
ujXYLkP1/CCWCuIYpw78sgTI/TmZK+iNEmJ8WUS4u3NhJMmhPdk9da9noFbMl6feloSfX7P+iWog
nZL+GUfYmQ4bQAkX7uNcOBDlAVYbsKYK1jku4tJsRhcOnT+/Q3SMqSXAo9ML4+iGm9jKI2YcIAis
BjyYrnb25Cs6BaKRhV2afpjX5eyXRul508sh87IMRERwPKiqXTyZhgtqp7IqC5PVysyWDFJDar6q
3aiNdc9Dxb2iTz7wwz3/2z7+DesaCQMoXVR9kz6ljmbFER0GV8KnQxaHCLQobWQA8lI8X98GkO+/
Jm9VZmc80RqjTjjYoUJhVj15soZVfYDIbt2XpfwOpJUZHwtDMFT8/PUJWEk8nj4dA3VLg8TPOVdf
dm+4bcu0SVmqCDgfhaZBO2tjuXvxe0sbr7qhVqYlXXX8gMM5f/BPnCQEmBZNQt+y1xYcPpr2r0BV
NHVarcEK8HjzsBeBxhDFHj7ilSpnBicm6gaxrRCwQasOzG8meJtQyIpck+v03KL3/YNn6npNE0DP
TACzJPV3rA42vzqY4WSvs+ZIEfVI/Ph/jmHbPVT02SvcqSG23NftZN0QIjQnTIb6olPj2eIklkE7
mw6db3SjuK1o+y7x2bikZ9cUg1kCZvzQEpcA36wdN0Lr974wh4Ik6mfVyoFX1GeMlTBGaczYv9kt
6FkBhrO9PKIWVI0SDKi/jZ1tCB9Ucf2a0+bcK2uIQJqK8o9xdL2bRNExFlYPk+seQnkDFbYDDdyr
Ys35ern2IDNzVBdZdIy+Z/QdJRsJFlzY3gLnD2CxHpu4PnJsPd3tSItnys2nnLa/CetLtmeLGd0w
j51BTziDHD8bbzWoYLj/F2Z7onb66K/KdD7Y/V0oS9Hz1RG0ge+f0/Cx60wxbNW06ng32ftesenj
I+H0qoN9AIKKI4WPKrWgJ/o8ilGybba/ztO2NEz+iDpfdq8oamGhlz8zOKSAFgKrYAJQ7Ckr3d0x
ni3c7SXJJJySez9ZqhtSzF7RS5z0AkdnAvAaeSRLTioOhnIUvGid8mqZAhBbueJC4IqOoBiBeK00
bt+5FGXvWxWPtqyibtbpjtwe+UHh2V3vBGktLazMbuljKEGttV84fkhHRPRm/99SyJ1n/00Pykez
m537t2MCfSBXaR2jdKWNH/kIFUFvja21w4znEpbf8geGJNGJut2FQlU9/Ew7ynzCYs+heMtTFPhx
NUpCmBYnv7OhpsKuCAqtIXl7UCai3rtm9SgBUFsUM3Td6IflTWPmfIMe10hy1E6ZuC8cQTLaMmd6
I/pJqBF756/QNJEAWzJ5MygICZGCB8SlC5GvBnQ/x6EaJmi1o0FRz0HPw/63j97Gxm2ZuwIoVBvZ
jHK63AA82jDeEm/iqnGAjRqeqDzkQ11EmZOn11o2IySJjGh2LRcCiXMNRDJTgL2kZ7gAVDlaeEdf
+jLGhPN5GVqy3cnfk1JOWUYeOSLOHutXRbMoMoi5XIwt7vybZ5rD6WMpNdBVkW3HgnG16pVBP9uj
SAV1C5gtrcnwa8PsaPaD9zUab6MfgGiIh4re8wQL/ppataSghJsLAfceOv4DOpD2uWR967qN1BFl
z4i+Fu8n40MeeDHK9A75rbH9fSk7DGvWVMopZc47Ogn+l770dxEGCh5/T1PyBJjbUwvr38J1I5Xr
8tbk12X4v7+ch/TgyGAnIAwnmW6BrFk18dmR9JFIcQyo4RdkpsCgwK1mz+fGXEu2MxQvW4QHrx6C
w/ayJwxwsEVVJX+D3aAP5EHfz8e0BVwGn7myDM97h802KJ05XyMPzevM9PRIMBo2iTFQfyjMTTFd
xFNutcZuPFCIG5mn754e1MrEmNFJCxxw0OiJ6pQF2y8WsU72Wmq8fu12n4XHfpMjN2syLxov9XQ7
NUuj8As5wy1huY0b0t3RMGnFwb7gBhggws8Ic+qchIVqAoWn4mFsfch6n1wgV2bws/jN8TUMCvv+
W/1ZUmRigJaXCdgzkAwa1ftvUKr13b149n4XG8IHUC2C2ulBw/T/WF17shESd4Mo1AHtMPEUT6x4
y1uZYqyDjR2eKBLMndr4btUzQFP+Z0IlCIEjsi0mKB2eN587sbimAd9oYGRj4Bj419h9wpqsJiGJ
eo11TJ2+UoTGp9CsRwdrqHra48URU4Yaq+LtUvPgk6yTafmHytXTzwj42QBXwQfVQAZhgcRdRwbN
KeDELd/iDowEGWDyb4becheisOdyzGCE6PmTNXwzPHkpykLHZh82X72PFZEfyx9fNHJasO9koC/p
SbZZgMBpY5nX0iWzKYN6YLSGyZSJ/nEhG2n3K/cOL5tzT1ci+deDwGd9elBrIhTxcq5cF3NkbjJ8
Vc5PBxcxzvf4/hjjVd0vpGF4e0FvD/p6fBLn5ehTRrnB3wPuwd+YCycv/hmHkD4dX4Zu4aTLQN5S
/1wlqWBYaCm3Z6UsMCOrmJotYR6y9WXu4aT0f7oox8yduDV/IRr4X6kexazy9E6bpagLLGe10aCX
8YcqBappgT6T0rxQ2wBVooe1oB3grL+8kp+dhlpG9G1wRdm3u1hCvoa9oUkqG/SCSNXo+7LM3kiy
n1EAccwpzdtYa0m0uzRyENaeq0fN+0EAp/qZXb3FL8rSyfwGMTx/rDq5IAq2r7X915meekKOuRWY
SkpUoVg18MJgj1s5dZepZFYFLYvT22YnKUeN5Oczv09CFNttlC8hLTfj7B2gxS8W8qE/sLlEhLRD
5zan9yHFiCqEEuwtEctFpWjJoTwWu4x8R3Qts09rXib9SzcJQfJi6X0Cvp2eHY2rdjftLGSCxysL
3iZo0raU/1x7BnjZKumDnk90rFIZ9Re5oFwIUSRORfLDRgPQnfpTc1xOElcFkkjcLALilW6a0i5y
Q7vBjT6XSyFepPFmSIYXaDXIyjgjMc9D7S3FUAmCdIDN9FfEkooHCndbRNoUT4xognERK1VWhvGb
8MrDy1heZzFhNlL/TZBQTG3WdS9Z/Q89Ewq48eu7wt37VROhFwS+Arj+NP/U0LGEjvb46Rd07bs+
GPMcNk6AMQUMZeYIG2brOvx6Q/bf93i0553EzgU64LlaC1Bwt5aU4n0IE3VdezcClYVIKGSh7eXt
KITpwEvbJu12R2Gq2Y/REo7qfr36b8PhZzmbQuGjym9dF2uN8ZUIQdp4dbiM1V0LkVZs3QjTvUxi
jE05oaF+BO/0xWWbOivB6MNt1OPeVFhBPtMWDgzhuBsagKr8Kb/H9SihH43SlADQaI225xdqcKs0
latcNARn6NMdQW4o1HV2jR3zn3WCRhFRILjLQH7pZxstWv0Y0uecUiXafULhymUz3S/Jftym+qZV
JJwiDv+e1gu84505icM8vFJC9kvtkiouT0UiLV+YiZgcP/iZ9Gt0xtmqT3fy7fHwaElRO6vikjA8
jaB/GpysU0a5DBN92JGBEkhunRSS2pq17S1Z8aQHY5kj0BfX7k0N/mHCGiw1rtbKAaT66Qiy7gsU
vmm5j0Em8JZZxv3B7Oe9jZHiRtPKqM5QQMCqWPw+XJHvqDLbVkndYhHM0fjM7bNoT4rJGVeFTdKE
YJ8lqrqbTT4PXON5FtGC1VyHR0I+x39RV9yZG5YQAyKLppxtG0imUJBCOMo75i32LKklTxkKjz3a
QRDQQBkDPpA/Ks+uSjJjkZfpGEzzH45Ncrh5K1FGUsHH279xWyMgkUS4JTALqSeHpGNd2kNGSl8d
6gOpJ9jxb0Z+lWS07zVt5UG144ojs+QpG3A7TL3PQAChxkOVWaLvtVO5fEVJ8g5ikMfH7BZaxpRI
ynAb3crRgHjc42jrUw1PCpCz7ztFzbGw4dqElPywg78b+Zk6xwlSdiR3rdGRtFpXcsyOTKk38z29
cbEICW0ljUBqsMLXpB7IFxrEfj6Kg33VS1Q7gUyh3yC9GI5UA9PdCK0SrR2Ht3v6lj3YhrzFF1aN
zluLNy+Z1xhgjov6FHN51VdS6fSjI+lGk/NsWc21otvhH/eh3OL0SeEnahUm6dZv9bBu8XgLtAlE
xa1uiDlunTjqRzbkw9UVHai/iKbiZCabBZtkaW0dNuv83LiaplIc1OS3ELRr9w5r05P56sX/CVzv
lsQCQcjjc9iOrA1sAQTYdZAao5pYzPCuHvvublE2hT4CzWxBFNYFhZcE0F64kGzwRx42cb5rsQul
RHNR8wh2kC3dBmoR7/wZV0gJ0koPt0K9SdcvwBZtjFbLcEpX8JBt9OAh44710jQsZLkP8fBYb3pK
ZsRvoVnP+uhN4txu4Vjq1XJwht619j7s4N9whrTKbpZ2hhardeNgFSJEZukNp+LChg6FYEhZ1a5y
gmqOvTKVp8jZlqjE4YmhioTVw8uTxjEKsqxIw8oYWQbITKyxHrun7mG6SsHPw7J6LzSUhB7ly7Cq
ZZu/0x0ICfALuJ/ynNe4IB5sVEBJIRL+9Q5pW7dDd5Y0doaJQ9WSYVdhPG187ZPdAkV40ax3Brn3
VL/tMVmJyBtdukKR/kikb1M0RqQM1rUtNCMlZ8v4Ydz9k03rS+WGvYNQHUAmSMoJT4r17fLRHPv5
wbDuZ+0LF4xdSnw+5dPvBlQYKZ3egqg4lGQKaUDw7wpwS/5fqpgxUcVKZIxwAyNVnBDLuDhZGp2J
s4BMt8Y6QW7LEcs7APyIbimFMaEn+9hkQ0oJgYWLyo8Z9K4+IOsTnx9ON+5aLcoszeo0k5nsUjxO
lprxJdftGQPVWhT8XoCEaF39U4ED+OjgH78hWICvWv/PH6Ooa8FgRuC+nRIDIYUKTy+pDK36pI78
L1mz0QhsN9tW3UYy/yeDPFFomYIZQod+vVVC0HaXyhgC4jAIMBzCG/wc+ULIDa+hllB4aJOj5Kz5
TuXSadD/Zpq95NAD+eK/luIrJ3ZZ/6WnDEaTABNK0lA4ZTJcmhdpohAIJCFEXSZaXwKcj2rABeQo
tqjpUAsN80uPm6xxCALz1NldegEQtzGqgi7HSURGmrsied4ef/EMyvLu9BwKFZlAgiGCj0Q0TMHB
xOHikCCVmdxfeaLUxNLvzTz4ZOCx5tPtdA/V/G7OyKtwR9oZE1Ig4a85KGjAjePmpNbi03WKsKRg
JWOHmVtm2AGGlJMt3k/ULp2ajUVYEEZF88bKOaCIAEbjJs6MyUCEp6gYwR7Rcc93Xo9aXbrADV44
MRLDqzQdHbolbQ+R0Sqck9ccJMDvUyZ7UzvY6SvLhl3X53ldh8S/R/YkFRfrDyIcs6KrS354N2Fi
hT86kcmHZjlkjnOUiFnnyQ6QISp52NZ5yx1NTwE41TZbqjO759Ciau0oBS31pFA8Tmx3IBWG92gM
m56QT2uBn2dF0CbmuV2xy9BIdpRDuymAVH1+D0ZzzNwu2uiag87LuKHGiIH9sQrM0ABcZOpkCLvy
fOscRektPBAB51HR2ELxgyfAN1NFM4/P4lpU7lzDSZeP3xm+s4+s6j4gqhfw4G2CV/p/B2LcY8bB
YfoKbrC5fXbnvsFyrw37kFCo4pOvA/EJpO055l8SLtJo2CQ6sEJR6LIUmDIVxVnj1MtmtpyU6QY3
FzWhyx3QEKiDoZJH3kkOIWafUplKxj8zf9XcN4xVBfBuefuZ6IRvhivLO3et3Tcjj0TZrYKY15ck
3ylXsMjuI8Xnq3hUl1G3DnphMx2bX0Gey6/iUQ74gA8L3Srjn5eqhtTqXrg16FvkVjwLBLLH835C
ihNBg3V+8kyrA2Dol72BTZIUJHLjTs2VC0gEAWz5YA0p1AkxXbsYFmfTToWyXQaxor6VZY6+pFqU
YMguLmImtXJM8l0pla+lV3CE6z5RkS+fnYZ0TjOgCNw78Z9J0ama7USG+WIN+2dSXYdd9GFLaaEp
D0EaA1pWUT1U//u2u+Sqx+LEpXMQeCgEihRo5oNc/rGmYOuH2YlfbBcULprFg0KrcBh+J/F1/8Kg
qj9lRaS3b4bC1igaG07mZKb1E769CAwFV9WkSwUAPxGfT58b2v+GXCFp2BAX1itRMghp+nVy59zt
2AUaJrGStDi1hHjhQA3AaOpiwubA6wzULmPox+H9e5wFvR91Uyhe8S6GQc9O7wQF5KhvzW+9ALLV
8OUjTifyiCk+zP5TLY98TR2EoAah8+9CzDSX7tyAJNpoVNFx04VKEaXbApZKEXhZCZ9BnY9dNoBF
+pOvVkUP2HoygJ8MVcgGN05RHNpams4lFKbIiNB4uUbtMowRwq7uC+ELsq6H5qDzYfjHg5zTQ0BN
rrHJ8bvVz1qMPw9ulXImAWwyuDZtLT6xG9+OhsU9SjP5HxxT064xOhVID7DL9c7jnbHt6j+RHSdv
5sSljyUfSEafufd031ErxZh458YRoIFGZ9yA/BCgMxej/nTt8eDD1zZWRdGKM439B37KzD6ZxND1
ZhNshA2IgSftQBMk4mpBrgWN5MzF9XTdgBz2Ir15VzcljpK3i+4qKyre/kBfmc8CMidqpmnVQ8q4
sv5obtM4WGyMSS6udSlbErpgx0SMd0a9UUX1Ci+vReoeZyULA/nAGmJVGAtUUEGj7jX2eFRsS0/n
+JyYtBalz9HgtzZQ0RCP1dgnv1rmLjUGia+GvG+7GXVoSMgEU/U4Ymm9p87YYbvB0FkdCsEvkCrf
Qznd7Z2NlSO4H5kzvDDTs0TMvzz55m5xohwl6WgJZjZ8txb5UdCtE0ZqCfKrfrpTmIzvCLiTfNA8
Sq3wtSTILNUShnh1HhVnyVm0osCpMHGcMoL7wzsTRCkVmerE2Jmw8u4as3Zw7DR0/ML4y7YcW0NE
n9klQADYCK0BU4OD81kJwLsn2vcx9XGUuJBLkoVxcFJceJrhgftm9yZZDOrus/TP5T1QT7d3tRj4
Rz7+DQM3Zw8Pjj6ndDdrza2uZiy/L5yUtwOmhtS/TpT2vtpOktIE6YogmodXSJgOkGLYRojtwjBT
G7dy85egOZ8Ic4Kx1riJUje4RDF7ukjHwq9rGcHmYdirb+V4UT/bRg9YsMPmVxzZ3H6IImt7uJoL
9terxUM0WhaGimGlBpmRMoKFp9SiwumRBL8L09i+iTn4RBaL+YtgQT8LJwrCAfuKZSY9HMeYtj8Q
HfoQmKVYvGMZGRx3Wcr+E9PojeF0/QkirwK6sn8fB2HmMbKznT/qjmBxSsCNur4V4xeM1oBnutNp
K3R4YwxQSB10Djx+KtU2g7j83wq3GAZtFKTgGe9ZkVZGew9JBUMkPFLhx4p3bZMXDO6DzijIW3dn
KJo1UTLDBOidiZ90GpTGYhYWC0xW43Q4HGT/lbW6Vrv2oOS1zBxU7U0qyLIjc7mXlRZRoQXfSiSq
5pUSJe5UpvpHXKQVUUpBuDuBNBbfaHEihBYOuapMgAAKoYIT7xYb0ulQ5c87RJfP/0q9GD9L8RIk
Rrn+C9RUI31LgIgWX4p9mnZ1o68TFk9rM49gX8wV/LzjzPY/a83syzk4g10wBRNZIO1T6j/jq1bt
CuxmK3UDifn/XSIpar1juqgMLJKa21gyOLYflFQqlaCqbtrOUBgxc2/HuC5yqTJM8lud+jqrfPBE
/7PHJepQkB0efmpYV9mnZRdfHDVvZSEl8iS9jueov4kS32S7tHJE/G1Q5TMSuORP2T/YuP9TAKI4
c+60oWsbZM84Tu9TwoZOjJe5FNNcQFzCCvyIIHPgOqTWsz7SnZ/Fnhghzi8vSn53y2zJDHgsNA8q
I44BwiyJgHviCsPRtuxajZkSF+6G10NrvMvpkHxG/Lyh3mIWcryzk1bSvpjTjO6+/NsVydaOFZh7
7Rd1lRkvD45aJZjbZDDxRP8bO6GrfiluYEFUKrXROCh6SeAiAtlCqI45J3DWHA2eMT8lM5I/2smt
oGUB4WCgBRQxDgtzQ8WR1TdLhCg+Dwt1vcD+kVBXM3IlitzkUfIegX2afQhlKl1RQdNNa4hAeyxZ
rcD8JMFc14PUjqhL+8Fj0ZzDvsPQjWVpaR/9YYTlbaGt2+JF4SmgKKAu1C8oyPeJRgYSn4dYuqba
LdRHWD26YIAITegrf79z1cV+yXFitl9Fw/p4Lj1NenXEKzhW/M92oiG7XF6NakK94JhI++sa3LBM
KPNoNMhNYPMI3rkxzuKVmSqZCwQbotcqwqa7GYj4Nczusk5bj/QS3IFg8BLzcBaevogR7nFm2FYP
Qer6jnLDLoXNKG+yEteznNLTt9jaF/ZpoOR0suFKJDj2U45yMcyI4EwEYEqVJg8uhDszInIsfABR
DWpaFbwexuqXZuHvVVYtQLvlCffzn/kfzD8ewj9/UW6wRt73T2BQ+IvMSfkYRukaqHw7C+lcDUr5
zeqBd2gyWJPV6uN0iMCJJw4LekW0jOY45OJRYGu1pH4QNk/QifhJ9qZ/5MGi8ssPxnlwDrUqYVhb
hWY+RlK5zgKwh4NHtkA6in0mc8lqIdBj/z3RunhlU9+rKCf9m0T1V+daQHtK+1OZ7hLCOlzlQkuU
891/sdeBfPxbfCyh5TiqnDCLO0u//jj1rQf3beNfRO0AUw61GcJH7/HgO0Xw9e5AUKHCxPS5zHef
pTI5MIkMHm8NEg60cx3Dkndej5b9dr/MlhoKxFA4fYA2I7kiu0w4qk935GBQNIkmEyxd8E9vPbPn
6ixt9otn46pf0dO5HxrrDPnIL0AD9ZYVserCKrBhHixhpdLpysXaaCoIH+iD75v62IkRfwo+roqB
Hoa1we02BDsm1/y7SeEF+E+J7/myYnlDgc304BTnwiHGjUF37CRWPFCGUpwUgEYKLRp9VWhV1mLU
a6LMqkPoUlXJVY1y9OL0ajqfe+Jl2f/W7Ym4P8f4537syP8YYxh6VU2P+50z5cvlLwqRt/xOAzGX
QOf9AHbqreRJaRIODWLZoRAj2LWD1NwNkUXxh29OWm9/cdCxTVdWSkJafM6ufXCwgFiahZ9Hy0bI
2g8ymlSdPlN02TUQSUxZO5Zc4aIB//uNQD+0yfUlUDshKGr5HerWzNp2aKeg81HVFVi+WmQowRod
/dCXs2t+j8ew7+PhkL40nPSM1tXZdc77s59qogshBogQOTXtiCZyCI+jPtptJ2Dfvytjx71OxT2I
Daiy9nCtEJCvkV4pXIv3b0Wd4cpM1cPolzAyDiNEmaTnMIzNfX/ReOAAse42pjIm4lDnyXTsLtsz
AMq3mttgPVeTVJ1TGwNF3lhc0hYucvXgOEkf2e64e+FRH2fFe3Bi1jEW80XtE4jQ/3sMqFRuqYiZ
o0Rl6nrKBoP/0+FA/FgRDf9x75hbl3r6D2zvzVyntyYIsXdJ/LLuKY7iWoVEXLles2QZ2VC+a9dq
h3ovitoAUXocQV6qNBe3MSHHVvnFf19wqsuniCy0Oh+NCH9o9sZHeww2VglKeVYh+HwFt5OCLZqI
FCwLiOjxWiCq6J2OKdQ1AzDyh0SmzKZ2W4Jw86ll3PAQbv9Sy82omZcZgWyUvCJxZXk00xO29veI
0nbY8f8HP0BivvuuUk7v4pciw24w4bIpHuR40HbI3PZ8joeU7VrwUkQ+lHhbXBylq49mGUs2+Wtd
4iRqbUuVXA+zigrBOn/jsehiPK0Yqu5Zqo2CdUNrV6O71q9uhjMVBg8SOBqHtvPldJCMbGrPwbx2
alqMjJ0gdxvY/cLJIJus3+dl06Kdpg7C8nV4GiF4toksbb6sGDd29a1IstcQasNAnymcJ6CHH9YM
Usr4Q86J3YG8fPg3S+dSbBtuOtF0cB9iO/8pqB6VimMKpx6T9hC0BM6g5iSuVENojBWAEHsgO8eK
VeqvtmIJCxsR+a2tCt4KxB2ZwXNncnfucpeSiJ0Et9+BlXlcjwCSGbPgAbcBHJuvnLMOROWu9r8G
UV4leY981yQ8PCIjcXtfot9Mvc1geBkHZMnQ4g766RRncGTWJRI1VcWeOqbLDerPkOjEOIYgZE6y
hl5CpVHfyWmbU/dSD87P0CEdHdCD4fj15xGXOyP74tWmAYFSk89BwGSdKsyTBsZZ1HbBcdXmndFK
UCG0IQBMW8v3vuZ5Oo3M91xHCclweGR++K8yXFK7oDbe6RgxKZ2lSpQYRc/mJ8I1zd6fD8V9nirA
mmDYaBVX7fGtRXBSFolQUh7btEyP/bMPbEDLc8no9o2N9y6uVH31dS8jI8Htx1r3tfcmUIEqLdHR
Noim3pQt/FPBlNva5aO+K2x32kelHFYUw5vkb3hfXTH6wnGHr9nykI0HhAtcR2IRbO+rwox8FIAg
DMZ/Zi06oxv5Fh8KBckZ/scDjf2xseriVhzBAy6P3tEQf1/e1zNiky5Erf8e7uhMoBVn1QnvQfVY
qFi9lTB/7tblxmQi6dqwTVYCvwDA0HOt/IS9cPXYdzhcyEbFJaL9ZyhP8g8MCzxA+0nxMNt081H7
UvzzGrHDswmyKEFq4Cu4vbtWuhPEhQvD3iUO9Nj6hhARPZMSoSMhu5MW2+3VOXyjJk+5PslSlCWs
ibMCzW7jYahis8C0xWYGvNuDEMLyYHsRU0kE2Pb4cGYfk173x/fbIgUmmGhbe8VyTi0gf/A7RRWO
Tp03YhpwIPuShWe+QOZ569C1TRKzHuWc/h48zXi8gs+3os71R+GkHZUy90uhONuN9nYj+TYFVQOQ
9IgZ5JSsbzuFJd83T/dadB2nR6cJ0E4PFqJOFM08WSI2Vr3UZWc+q/snfHImrmpdW/5Fg50TFQ8K
5ZC+Q/URvcs9l5WuL22TuNNKsab0xSKaAXn2DzRlnBTjcnHSjiOhsWeuOB3wyFNBW3lKtcBmQkBz
en9vReMePc79Pmhz8+ps0xvvCtHKm1AewodQVxapRX6fD0l5wJzG4G+Lg31TtMxyZdMvw90FFw4i
h0SiIHLHocemPkuNRJUxLksCIAqu7/8ON5Jr1LljDmhSBvmvEfoJolIuVWHCRxgJ4VTQ/QNNIbU1
W7HaD9o0YoG+KOMyytSfSr41mPzJRIQV+pKBoKh0ESJzDFwap94QkoYHLaLNNRPGFgk6dSKyJDiv
o264yTv23zaZsuRcFY9da5hXbmbOqP8RNzs93s8qzTsOxMRusONhGWnXpkPNVeMK7NPfvHbwXu/f
e7yEnZMs1tUQW1wYsLzFJJuWd6CUDpKNYcEjkNXFnV2ftHoyWvne4ISz1eA1TOgp91fdbfZrGAgX
ilh+kVfkFa6u+M3TqbjBP7bx9JhqD//ekqJVv0RfBO5i4o9ExNwn9Dr8C7vx6j+yR563oVh56C6w
wE69s1J9m3N20ti2zxC7HSJX7kKMNapLRBey8SgMNh+q/t2SCAttZ9zdcZz4bOE92qj5455fh2M1
ex6461kiA9nMWytT17Ro0UgJkYH0oLUaf5rrQNjfjLVigBmgwuuwipzi0k+gFd/5E7QOBIzBg1VF
Y0qIDW5yrqycemaibXm1GKaQ6j+prl6xDGCkdWp8H83GUkSQaXP+xKHZ+TwIxaU0Vl9Wx+2+VVgJ
a/qRmVkCrslKyBKjB0tGFHPhfnoXNJtdzvnQPCzEJMNBl59ZO0FKgYXUZ5hfLvNi4xF9wz2l9G12
bmgPioF4krKJnhmA0hFebS1sZGI/9ZE1l3wOmOdzBICN1Z2UwdIgqmWFB9QbyTG8MxzAucLPzo76
zHWuOFGzGe1Exc/A+ebujQdhVL6U8hd41ob2559KK5hhX6DRHp8y6Dillg8zym6lEn1mp4bZCsyK
7ver1rdhgryJeHDH6LdjBd8r11ckgGRV4Ttz6SVrz309Dl/OLlob1sjIWZIMf862oeQF/GLOnUms
uxhstWc3bnpJBMediWdCycknDXt1YBgwXhDelEYXCPzMjGf2vXjxhlbGEMGILF5NE374brRPL7Kd
rI1gxQStFNhcwXBMQ//RtPtVPojcnXqkeem2b8YZ8QEJzCqMq4Nuam+1T3dbZ60JDincmLjd8oCJ
CUPnV8H2Ug0e1nzQnE1i297zCvHWbi5dxXkG4tLAo1fm67Aru4lVnqnZJZH6R8yQx/3M8Eo6UZe6
GDAN6Bl9/AJAXui3phhMoma8nKECWGZ+HvigqzLMoQ/pDQYdiAbreC9XxGBy3b9yiyTe+HE5SoKE
JMR3iX8enIPljdauP3CbEIbEqznQA5bpJoOp5v7jZNyY2p8kFhZxESr3OmC/Oxqib2lkHgXsu8vu
TFTykGXDDeLNsrTJuyGhrQs31UxRIAifZbWWhmLLOOlUBqvGdvyDJ2E+CjbZEpmL1k1njhiOxWAk
sTjFIm5aUkRYnRqUNd93p4SmFoTOcEQWg3tiS85Un59gIOY9dVcTSk2BJ7AgDXVvysgJir8CwYuw
ZV8n1D6CuzTO3OBYlPHkadTuoU7vMYyWfVocLSaIcS20cxgsEsw4VxBIOzqgTK1weRSdmtZgxXzt
dUlt26OLS1A9rtZsvLUbl/3M0IwRABgiND0pS4Iltkpy5X78s8ar/fgC1DO+lUc/ktsT/VMLHWEk
n5hozaPbzb47oueZrRdgrQkg6lWXwMXtY2ikPJu06uilvdJl8Q+RHnMkm7dAj8Ghvp2FJIsM4XCV
YienQ3Hl7jietlArekLbrOYSm++HoX1CnF7dyg2XucRBZoHN5Pyw98eekKZWUArtIIStMEL2039C
G99J7x9zb1HOcS4y2cELUtYhMv9bWAmulAQEu4g2TaFc82dbmVuqS65QPMyEqGMaTeejJGoZfW2Y
jLu0smW7CojvLwIc3bEGw65nhPPMag+74aWcSy+2gSejWviSnXhxIS8UfqRLexy6n+vALSTNXVsh
AnTp8iI7L49+8rogtFBoW3gG8FaPaDz7Tl0YU3EL6B6Eeg0YuiTe9SF5zG/QwZivWy79wwR8wuup
EZ1h4rRxZd31G/Omc2gXcGEon6BM6mD76vXrD119W0mOxW7CqNQczKYDBhqIKmD6crwM+iYpAYdW
yZfts9GzbgfmKyK4b+BzXISo3sogF5B+DjxbvkVUvr+FjuETyB0VLW6aJzxB1V4XRHjwlr86VWDM
kSUrMNxI1TfyO7qp1ylS7shc5LohnKP9X9S0KOd8F0XNBq1OqD6/RAnQlq6ARA2Ro6v0ku1zOTff
c0fLc0AUF/compO4xozcpsg+3Dr4LhUHYGmVv3cUhE+rqNQrLUns0PW4HQxHQETTEdX6tFQaK4sl
4ogL8KwsFsIymhpsesVYbD7IW+/I35MjBre7AHVEoR9DvfoOt+HsOEK8myL4Jha2iJwlpo6KbTug
13lNMxpv0y42bZCMF0U/1gygsC30/B2CPWYy9FqyO/RPCTpHBLUNf1BUDVRuRAEFc6FBUfQPtE79
sXt44g2jLGPfMHwp6duhQ70NxXbTwiRIKk+rmdQwPBFuowXOai24glK9zGhPbegmK04swn6/FZSX
q9zsvvL1zrAOQvy4smftDxWqXj7stQZ87bExI2wcqc0tlXTMobksk8pF90c0DDrhT2NFVJQ6p70q
HH9/qJtW2FT/sDHRXhTWjiLbYmM6uqBPJs6mYgxOStxilN+83+uejQogVzxaDiqjcGcvz5+eK0E3
oRUZs6kmzne2SmKmdzFfZBwHcCz64Mwh6J+vrmzPsrERIzcdau4vYjx1Pvpw4LgR0lDAFu/+p3Cj
M3vF+mlW80Hx1dj7kxzLbZNl2qowlkEFcCBmlvTVjuhrVq5DAqAl/flh2qbXnW1GyqgKtUN5rg8Y
9zKoFZIbv99y85Ng6m7Ms4C7QC2n4Nzo2Cdm0Ba92KCtP0+O3g3x31R3A/nM/scxLQwg4TCEWAnS
pI5Ziv3FxZUvwzOQ3A0v46gCtJ+0ezj26NUKASNGSmr70VIN1e8XqhKYduiHotQsQPjjYtzrMJ1W
dBWWxdw/AS/GWW7DqY/JwbtmqIGvAzlX/46/Ptz3bbSbaZCW+L8cKKCdoslnlRqZMQJjd2L+B2Bs
guCE8mXIJm3WLNIcczYAHvvT8RkVK1J4p02upcxjp3ouGm+1dDe238SiQczxcZ4nPSZIvdiaQVjn
eeaKlxOav0/yZ7ToQ00aQ5uulz27sJFzX6w/hSfTQ4PJX82TJpRBqXximOmNbG/IleH5VhPczUCq
LHblEwjOy5bT60gBYbkvxKEaWs+ythn5pzqd0LEyRkIAJsvBVF7Yl+pyU3h3rG5zF71GI0JgM2XC
2Dgfw0712wJRcJuCSdhz8lYqiKRlf0dJgFO7QFxXB1L9ujJ7UoySLGptuuKXn5vvi3wLpmmCwR9g
g87SqgWmIx6b3uaTRuPQ+n5MFtP4XFc+1/oZa273lxx+QnTYjvpxurWhKvdYjMVbkxO/rwAdPl1N
nNh1KXxs6KE62o3k72uLWNM3IsmrSIyCI/A1aCx1v8fcZpwxDb3LiW/naxyLnyYYJmTsWySb5mIv
I3ooWtStnt319gajWpyocz4OGFv9ESsyxQ60F4ehbaaJ8zP6HAtZDT2DazRaPilxTVzuan5v/6G+
UBNiTWfQ57Kwqrgz+sKQhuZomM9PXK5IMgPZBWGrxDsi55TUAIlKUxke4IQbPo0/QW8Z2NyGynCM
SKGeIfx77kmQpgt+VhkeZLfUE9D+o3r8RcqR+OiFBQYkw6M1Ce2q6/o0yGiUoyToWM388WJzj0ZK
J+Au1EMgYM5qH6c1tuIvlghVLXQIC1Os8llCz96G1MWp5Bl1UXfjW2z/cFmNHwEAxF5sBFaFFoSa
fQitZuuGrlWFZXUkUFod4ixN5GsSoyZ1VlQciDXu6SLWtSJ2r2CK5B0/WKO5IuJlo3xQBSTJmn8i
mOO/kHFY/LpHEUEuu4HuU9q1xfFeIDcC1sKOOVj/mbsgl/EsR2dHvATPMleiYPeO8Zf1Xr8vWtXH
UiyWyOJvJIqN/BPVrNR5RSzaimQ12OiIWWYFJLjU66ZK8ZzLK424Dhe7u8fWB0FISEZrbI4ilfqI
shzBxZYbARkHegOTcNV6O7ttmbWNcOcGKqNDMHKHsXeiOWwLq2sI7Aag9XcG1kgBt29keCJb3N9l
d09aJFwYEa04FkTT3ZCYd/d5S7SupC73ode+3eOIdNInGw62EuFB03Mo6OFmxV89zrehef/ISjzv
JhkqPqivwQkl5tKNF4Gcv3Dm5wiQ1pTvjJ3iqchkmPv6BYvKD876h1f9ljBc9CXGK5kXSov2A5YT
nfnEADmW4LDhy6U8hMNmyjz+r1cP0WLe+XNrWhdw4gIRhT0X/uOnnUSD29tDQb2bRdn0/uj4k3kT
StUjsO+R5KOky31hcvlR0OXtxgzoT9igLG0BFWYT2rp4jNOoFYdrb5RvDqDceSr1+rJoq6TJcs+J
os44IPZVyh2Gn0KGdpFZM3S6jX5izetzcq9ij/tmgmIh3rszmuRR3N190Y0qmOwxcrgKSpyQJyY9
f03LKiYjHPgk6uN0d9TAsj+zvAi1AfXDJ3P2qs1F3rvp2q2YUswzTlw52nzEV/wmawCVqOhutPiC
/yssKeqHZdX6BP5FGTCbKLPIjBhyRKp3TaEWoRZzb6rlThFyl/MI6msERZ8pR3OGEC9sNwxo29+a
Xehde4DsGsenN5EU93nT88wYfwXXVjd9HBlafvZ58rK62DBDLT2/0gNtOYYI1GqBmJVhyJbKFVwj
eD1sbB0GWkqknXkf632DZPp2MvvBQAfAmmhSYgrN5at9XlqDuCNP9TLeRwWdI83M8F1VpNqBVx7i
4mqG5OSuncSjPhCGZJzxDN/e7CfL6MS1Num6PesZSzHIiXIJ1obIKh8t9X29yI/5OLBuLb9ED3kb
clCrrbpIAbRups7ETx/512qKlwH8PSVkePxKjioHyb/0D/R3JyhCN0fdmXAbVUPiV/ZKJPH9FMZ+
60KiczHhMi1UBnF2LeJkFGjZSuJJTYIDjyvYLVurTRzilXzUncn4biBvIHrKjvFZp6NFKpa9aMaV
fhpEvllKmy9MTRmtKxvrccVL9w7aXCgmsKqjHm/bBU5xEPg9CJnJOYBFHWxlwSI4+CeOWzy7lZB+
pUUOUNskq4+W7M86tJ6nmAAhi21tBqv0gNEskLfEaMXMYoGVWSYzskVcad+Wenh2E24j1XMNTgET
uLo4wS2lS/vjzck2BAxlXoxfjoUOBqXN/LTYiuGgD7M+eelvubKV6YU1e4zXOYg56Ce0hr/sMTyx
7vCYUDRMD18UrUAYwfRozeKK94mt5gTLyLgYu8wwrgm61VtZqdBsEKoSO0tUxR1yAOm08WTdPznT
44VDKSqR7czt8Cc+Vpew5uHGHmpC9mH48RthJ0bKKmaMHRwFtN2K2xMV+bH2JppH07ypwTxfbrAV
Dt+fBj5tRTgZSI3/tQAC60EG4MFAZ4LBNz7UqJG5oa4slTlYvdHrQkGsRPAWGeoq3Jv5hQfSHswg
0WaO4z7ZfUCcVnyNv2y84hsn5DgUR1nmGQ3o4UmWb5zh9cPliT74iNdiY+HD/2+ghb+vF8FxfCFG
2Tqzni1xYlB7ugy7RrhX3zqjYrZ8gWyeRJhjLLVeLxW2fbZZc255UsE6MKXAchOIHRrDGlsjMvKP
afhDlA9cT8x4JuuJCVOmSojEodX07j/WIS7FP7BbCLdN5LWaizm4mjYphwkpJZyoRgZ9OiGObcpL
/a2L6pGDLUVryYVAIBz2GTcLhAstNKSSUjGu+GaRTy5jWrM4a95p4Kkdc1SgWUz4fG5Z1tet26jk
7KSOgAmBhHx9yIyMCmg7AQ8T909DDw06PY07qgFApaHxBMQ0wxK0MfPGrTE7PSSY8nIn+VI/zGuk
LZ4O3tmE8/R3+LUHCamiDEh9u3UUnigi5x4utROQszYPCJ67KdtTVdVO85KwRQS9hQnQniNwE8pa
e9yO2Ovp+BVm2hxpDv+eUExCjvIgjWgZ/o4KdbIo7e6h6cOKgIJ1I0xg8m4cVExsFrAbP/Of9RnM
xXpcxtqlPsgbdVgSGXl9+QDp3kv4J5mTgCmaz9gjdS0Fe+YsK9B9x40YzTaYCJv2iakMFnrmjT+G
7iEHCBwQq2y5oXibk1JV8ZjoHpDlOe4WoAczMhGmFvM+CRL3BNiN0uANQUX63Fbw7iVbMgNcI23r
2spFHktSWgTYoKTJq5iMYlj+RHNQamR/7cH0uORlxtlMshdKJJt1j6R9b7v7kS8a3P7NuyqD2Gs1
ZOd8V0slx7mBDBoc1TNjs7ZrTuEOk0x7rjP+b1IYBfXp19RzebKGwWnM0fe8AgsC/017AcpecmfQ
1v8xWNmzHaz9cDRH/6FiKmp42mlwsFGUBU9/ROE8MJdLHkoRhIhQpNpnewqCm1PoKA7U8y0bf9hh
k4Bu2RsUuGTRAzrBeN9Q4yLE+QV6T4T8Cihvq6U7FX6vjJF0SjS59ncj5+yNwUpmJZbfpPACT8HD
VmNPhU7p78H7CRMC+Wv8RW0r+OsyhJU2PMNF/ad14DUEWyl55Dpqm8vPUR1HCFcpNGU0o77PiQ3h
HPvqdNhZdaGRBbSB8038ChvHnXHTyYdDUCR+J5lpaq4t3DiXoZNzZoLc+Tkl0vFR58C7nvu0Z559
Qyysbn17BcOohIeQp8/ZMr9o5rXlKuIDecab1pekxevg7rfitCWTfImyglBSeDm/1pfsXlgBfybR
clCs7sl7PaZjheyvRzcxBVVgsKA01aCOtvurOdXjpf27TANyajBvuLCKEOa99BgkaRCnZCza06Xf
rd6TbNx6Kpjs9wVv9QT99bNMql4RK8bgbsLj9LLZdXFPibt433VhlJvLuW0QjEva19BtgqteFXTP
BAYB7J8NvpdoH0DYuLKYV0lqEhJaa3rGE9DI94R4ITPpO1bkNTUvuDHllsV5zq2IgPpjoZFXGdob
v7iGUF68JtDWXH2o7/CxZ1XySUD0PxKWkkMiFbXJx742A3ZQeUT9i9pZmLwAfJqqlOVHtrlAtA+h
aQ6rB2Nvd9ChgH1HMEJbXf2HAth2qetf+gNsbWD0svVL2Uapb8D5+lioeWu6rzTcPY+lH/pSb1EW
29/TtIk89rjYU+Oc+gzzYIygtiJPm+2KX6Eru73lLrZbg7Mn6tjgog7q2y2TByb9Atuot8qH5/mz
/3s6bqqpklgH+qS0JMSRj/Tm31qtgS4z6xjef8lq48AEoAPwunZGX5kPp5Mi4r6S8MRmtihdjT3E
pO7CWtDV2imUT9oBsBhfjJFCa2fsAz+4FLdnl21HF/SeX0mMwB43ZvQT3MDLkNV4pDEgE6ELH31Q
K4MDwxZVtp3IhDdoS8vhR3X70/RMrxfyb0OQzdEpbwbXLhSPmBRlgQX4ZhjT46efDYKxY+yhZeu3
u9fy9141ddkyZ86yQS4z5+Esdem0GN4Q5V1mIrECTPvLqusHSP1e9XfY6udPol+wi6SNHc7M5ThG
+OVusZtDmogHrRMm7kQhLb8oJk+cfO7C2S9XzKlEL3NzxKN/mG3hmvRbZ+fJBFtiWpmD9kYv/o1H
9OM5c5KNEQ+gyh9uhcv05jKjFvkkGWmwfao89JYl4M1OrIy10cZ6G953n3yYK5n7PymXQb+ZGbmM
OYtz1qwjUDYXwtb1MQNzgai6ByhGltQNpP+o/hPTKOuvjck2cAxLzhaqMM0ky/1NpF4IH4NkSkA1
wrMvT8UhWnWmVh2cEteFN3jg3pbufim/T/s4Cv7tj6YX0f5mEbWJIJgzKx6dAwX8e4WYLFl88lC+
wYJV8eq5UI4lrkxegh+vmFCQyca1us3SpPqKfXqFTrA4J68jTn2NEzW45OYuihHkXlZ276eKP6eg
PLP2K6nHHpYfVUUTzXjEXvPGSiWCIRfRWX280977h0qHct48TLHGviNfl4WvpDsIS7A/CHCvOKi8
UOrvbX5xghWwsGgcXKB9qVhSgxBFo6vxTL89vOJ/86IrRiDuSg7dSIx3C/Td4VCHi0LmMfKSOP0V
BZpYqDAd3rV74/3xccpxVOU1j76CfAVKQlk8BPrDjRPOVArNL84hA0BO+Q0/1PS74A7IjECT6BP/
XQf/BewPKvhhzza6JJnWezWhGrOiRiKME8TnTlXOhF/GBKV4gQ8QPpxAc/NquqPk81gOLIB5UTD1
ArtURXZ0nmF6K99R4dgpq7FhaMFSusZ3Aw+hDBT6SKBF0dQVGvv6cNUkK+Eh7fAdIZrWCFNiK6p1
/KJNkg9iHCG1fO83B1fVNaq7wjhyzV6QgqgFrvEY83HgAHYj5KR1apBntqFtnruyp3Ylr4y/GOc8
Pg0K2EqRsa10PggQkUZ6Go5vVpzC6o1wCN9moEnw7cdB9wdfO8AVBtLBdcomD3xS7HF4FatXclQP
WGcR9qYcN78fW96ivU8Z67+izAhdOC56ZTo4SCXUhjs/GCrKBH33untaUxjfEFErC9BpWWSS89O0
E9meoHsKVUJuAnkVJwGxDfj+wrxILqDhYTLVwtPb8cRblyoxia0ppecSW1bOD0NV9W/udHly5m/1
HYcvm5Nqb4uCnV9bAsb0Q5jcw1/E7qFxgQw4OHhfZ20Z5i+HTuVr+6OkfiS0vNIi47ek08SQIRqv
crVQNQEo0pBSNx4m7kL3oAMGzjwUGGmGvVBUaRYKK6CfFFMlxWdJZ71SbesfPcxOZrcs+Mh3ZzjF
reW6UFW0piqEciISQioPwDGSQ4SGIHLbanPvYZBb9LKlhcTvsByRIlQo0raCvDQHndeGmmc8wwfs
rrHQky2QsHxfWtBJIFS+ZBO7cJGelixfmsfl7Z/A1Wbw17DvT5dSfK7KI6YrPbASAGhk4d1gf15N
aF8iHrTL8ck5t5yXwysG4bhgQ5OaHfUsudpaTavzoDA1jgmPd0toVp6/sX0UaIFdCGUZEjf0XhOm
4CPFmOjLx2JnJMVs+q/arbOZzyFBh3uKhsyhLNnel4YETPNwBDCDSMuNXE6adrI6OI+XtrP8oJ+v
RuXfqgXoAleoidDu4lEsd8qprjo/J6NOE5ayEk2RCZzdDHEW1sFdVU1YkUrOksD8Bnm4hvE1vZym
13aqmsTNDOttZ0+tAzxKWgVVvVWH0vSr8JUJxX3D6aIvW7vroN3TXyka1B5jzrX3jgMAmk6/Y1P6
Fg7xGKP37L5sSEVo1jfAb6OQcgW/ZWSck+5XhFu9TpjCgioxns41UMULZbV6tdnpybhyPbrVzaFg
YzwPU4uwfgQ1yKYD6NA289MwrdpcBIwmeKYddaMZBS9yzr+aQnvg7NeS5ayC6xNmifDOxGQRnPPX
b1KiXXz6Dz43t6Aa76ENBGqnJKe2NbZqUKTuA1+VnzNTUmF5xsP2WkCIodJqEX3QqmErkZ5uyCOf
/CGKBQpujqSdOqJ2YKJzFkWH1keZVNJOrzlGpExNMvqs116cBns5qgPdrl8vLlc57mbprIcCA3FS
eVAxxPBEDEfyfGi/lcCI/Vt+PIjyG7Fr/MA2U/zQyjELptDp12uXd/PYI+fFXsF6OuoioSQQU8dF
/BW/6GpsXXr4rvZgEhlmjLu67Sj3Nnxm3rCUyy66eAqRk3sNmaXX7o3ZpVoZbiz4v2jofEyI3PiZ
2poAhLZApSxMBQitYL18W6kyZZU6zYFYmx4k5rvapqjSWpD4m7azw2cNUP2gGsesUqneygm3yBEN
7ouBPh6qw2v9GPU+z5JDSGfKMLQpM0G3qfDcnZv5NuCxn+Xb6no+0sfRNUXgGyjiA29Sl/yu7tRO
6vf25Rnq+CpCTPpPO5U7cnOEWvLFspd3/imNEEuJV0deLBEm0YjOqxi8oEq0aTTo16hEbTglyyuR
Y/9oX8J9HdoHIis/qmtBqLmWKPyBMgOEH5ptb23zuw/s66xktjKJ8yD0D7krNTUc/zQzaEgKTHU2
zIpxFWpz4K0d19eY66ZQxhH5qcjv1ncKsyEf/uQAxLVu2Va/l5tHUYRNLFRYG5ZGPB3a2k2s/bp6
E7T4QN8oeNc115newuRbEWAgnaaoNzBsWRdOPu0e8vHp58glh+WWyx5L7RaNgFNMxoTgc0zwXExG
j8r4P2lj4IqW8Qbh5uYzlV4pmWGUdi3S04eFGOIlGaU9K/ToN0Riu/Yi5UsO6HG56RrmSA6aRVpa
eRZP+nk/7HziWhoZ9R6JYcs5aaCzEwS4+NGjrU2o5D6cjujqFPFqZKp6vqTn0oHIlbM4v9Nx6n8z
8VdBrh0mvhn0PqLk1u3d1Cfp1G3hw+OhhICJQiFRQDbmU8fBuebrcZMJ6MtpJ8DSdaWnUgu+GXsM
TKDp9toDQEkXQHpKuNfjnOrNvHnrZM2IVdzFtOms9lG25v/r8H8X3PwdH+1if6ERfh3FHqLk7Q5e
rds86Jaiv2ws4PSyGDdC4+m9sLPoQs1HtCTt6/X61FlT2Pm7DJLCdWNBbfyllmHVPctsvZ2wPMfL
WZY+lh7iLEH/sFyEUB19tviFjmkssUOYX/Q7M0wtuSU6QL0pdtvuo8u+ztebXg1+PwbIT3L0VrDi
0W+3ylrf6mVF6u0jXGRZiCCF9+0zP2sFyBzYWuvYRo3K1unNo2X6nikrQQrF8YpMDlHDW9Rx2TNE
eHdyJKoCNZM3BPCQbigLa1GpXjvc40MCOt+Rb/hbYACZOBvE1x5CfvynPFfXAA3eVlVKznJ4EzJX
x5tNkMqiwDbKfWu2hMrMg1C8b7HmLjr5CsQ0/dsLylZwJmzvTDC4aKuqm+ys6z4m1Na/FW3hE4ay
X3J1H5/84Gkspbv8wfZ0OJ/q3mubA3+dIFeb8QUUemhMpDQDX3iIFGR8QxR1Uk0G+njfvBU/JMh6
x8G0fc69kgpD9nR8uKkWbooWilDBtKqhqRyVsAuktj571GBqrB0hNvQJEYNaaQWstdd0BMmIuzwT
c6bWijhb7cc0ufgi31Ljh1FYn0Kv4a6Hk7sqd+/CgG29CWUgRxsx0s7BUjIUPuob2ixuCiOKJ9oe
Xr3/++xa/8Cn1e6dHCNb1UcNNjXR5WHdMsCeyC3f9hOviRVclNKkr8StOPZgILfMlJmLhUf6d2Ci
CbI/36Y2iddYgtelA6YXgvHJZCp+r+iWkZ9GHqi4Sv0F05HStT40DHP2jMMb3xmzx72kNqavOEDq
BzxEPCVOPZnQqD9uo9RhGLxgtaLqxRn1xdbnTxxzGN666Co+hmq6o9HS965BD4O+3CLBLiRbw9iw
lO6RI/EFh33w2yUDXHuG6FwqVAedEeDBTpC0k+HAHFGhtXliwE1GZSgQQhkXbiB2Y7fM4/3uVszw
duntF5ZDrJl76bsJaXPLIeKNt/dFufCYrRaAn1h09o9SZdgE5X2T+AnjSibz+saX3da8If3QE29g
ORaMlaXGZfLVv5tQ/QMZyma/F4+pjg9DQiuOKlaGstteSa2DZeZrDO1tXTz+vEFZDHxcV0nmw0Hz
BXmeRaSbvy6xTTJYlN1caHTBPwXrpLnfzQ/QxI6A8jpEfP0NVlmoRWx41jrPxh/DI9owge9Pt/xO
fs0BhNullR55dJMskgjma8tqeD3KvdqN3fn7zW6bwBxYot/IK0ITGdzi4/5zuHxFLItpWURZtSHI
QRHjh489a3N+f0eiIKzYmNbR0ACIzuuxfGoo2jouggFREWVdFredYhNA0ZrRpL/Pw0dWFLrWRgqC
WUnIReBjlLzyeEdErRpOcneKrUwyR12K3QFValr7U740oac9lN+JDG6UvFgexskG7IurdXz3NnP1
6b00tr7A3+J7uD1Si1UL0vEZ/zdnTk+HNTOF51D6b7HVvzOCs3OHp1Yax96kiCyloaALpLEQUgDz
FbS+QJqbfEluPYdzTJ+2VeeAZoWEcVX1wwXt2U5OXs930x+eLAZ4CA96J9ZvNR9fg8XOVbIZnctZ
gN4REUD09qQHdoV0kFzLssNBLFJg8OmUbtrI5D8SJDjm3BXfgcnvtydw1gJnsfTlwVObhOktJZpJ
U+NWxdf0EUDAFymbhD/XQJK4jn13ohmHZR/buxDr92gMA8hDJrAwl3ZP5UkQOEnwJbvgwBQY+g5M
GTBD9N/gSy73lSp0eSpiLyWLqEmJYq/PjRaVIB14UE56fL5Vm2O2lykH+pFl6vb4UH5AvWyEEsqm
oX6Vrz1C9F6Q5/eu1LMlyXNXApPckTYxtpSKEPPcc0YjnyzZ/OSEWe7c57BX0ytBCG2RMaKfvIxY
m3TISOdCkktB8VHW8DQLyPsf7wXZmVj8lbAPa3VRtykSv2IyzYpRQHqS0iXO6gsBqppmSGa3KAuN
sy+j4K2GRnfJC/PiED7xQLKKQLBLyX5qH1iPul82y/iV4HTMgcMF2aUTKO9IBv1Au05BD5wyxoTu
5wnU7xKzw3LVPkAIxYoh1X0M2+t4EIZkWJ6S5g9Hl/1qBGTicD9jy77hBO3LImh8w1yE1jl618hA
mHPKs4cwKaPXSLBwG8DhTFpLJuT4cZT/oDGWgKV1iNn20ywghtFXPvGB6wqfrHq4wOaaHftD8sir
NW7myX+0fLAb4oviDCRI/8aiT2eNxRoxCh7BkFxFoDxdZctjL0kY4M7q4p8Tt1O62VrNwU3NZUCo
KoBBqENd5Oafc9cLPjy44mpVoPymSWBcMnezGPWIifgRebP5fDqGc/77/7+fa7hcikXVJz2K7vpO
VQlUncZIRWJ+RcJ7OSnzrgQwEoOIHOFjy9+c8B6E7nA3kJQj8hUlk7kBHKnjAX+8JyGGEBQwaiEK
EXmokSzIzQO6HzybxVtPIp7IX651uqDeLcxmYRlmmYbwUGGFzzUMaCjqgb7WDo8yJZ+3cZ6WqLR0
WW4NO+2dW2tHwp4GCT82LbeDnjL9OIxnhmrGXL+dYc2hVodMXE/ZaY+UgqcTdWHHWwznQApaWDEY
fpCn5lOjgF7SKPWPaIU9pc6iyzGYNHhV6cK6TP67zmLCklKoyd9J5qpRkMoXBte/I2zl0LJRrWL8
jxIr6DRH2S/zschZiDj2MH+2Yfq7E1FrPHGXutbpPrifu+w1jTi2DicU9xKbDMTjQKsSHipawLEC
SQeXnYl1bk30qgaISlkdpCzEt0FQw5q+5d1fS1FkfZ0jbQBhAE91k1sm06hCks5HoOx91gIOlwFi
LrLX7sw7IROi8ATLD20wyLouXMLgV8W+3x7JlNWKPHrxM4ho3aoNXXPaR3kM3H1bWKS50HzD4WJV
vJe1YbLfe14lA3xGPXmDx5+r/n8z/fBylrmO/aWTzZo3e9yNy3R6RzKExZUkpwJvfqu7MG4CIL+F
aj+kXQTHQ9Tv/v2eaUw8qXCeChcsrr0CRl8jF5nG/pKpSa4qwHafJqxTNn/BT33Bg2blh1cV6S5Y
TENnZI63KGhNzuAb93UdnaXiQFrY5LpXEPEf/NhGBl3x1Zbo3z1TCGLdTBszngBlKGeLKkLhJyTp
SydvbVMlB8V8gIDG9nDyjA++KAP71KP+UWtu6izpJPowM9YpcVIIZrRv/G1GYWT4xi/TS1Hb7cf+
hRQIuZI7FCROYZziLG+U+CIQ9qBFE1xFxxpXICoAi43TXsQxnNy/o5HbhzurBcChSZ5trOkAac84
N9H1rCRqTeai/z9MI2U9kTGxjR7BadCdQ6r1ZLoQMRWZEru0SAoM4ZOgg+qvSLgG7KWrDxLZnPWY
ljmGEcDvxMRj/CqFnEEmiiMFwQbqyDij5i4VdBV/yxAEqQXqzbfg71XEpy2MOKXZ/r6jPNEvkVOQ
3/2tutP3fhzB8n+sYehcwDHd8kxrHpfjvBFltqlmQrH1q+KMekwp6o5aS7gsXfU0CMTCPnxSb/VL
Y0HM0LlwHvptv9/u7PLmDcyUjvui7eY4bB7haREDMj+MsgBBbMpItmdzDQTuI4D+7NzUBB75Hw16
rgRCPqhiQ7XUI8FuFZCSImajHr7YQYtm6LlD2PpvxGzbnMpOgrTPnLi4bvbFgXIiSALGc5pU4chQ
ACpWuy90X6abUp7XmDWHnwbUmD7Xkv1sQJ7q8IwuI0oasO44yUSEm5rQPCALPmGjh0LOUJs72f4+
/TX5is9mg4RexjG/F8RIK9bJiWZ8hLdr3p9hu17ZigO25wG9MXmR7GVLLbkyCZ6M2+nHIxdQE+h5
BJoOxF+6lZgrAIvYy4w22j9cW+69DZD9H6WP9w1KvKQEKZzHfkSuQwpG5fLY2GhTGtJTnXC85pGn
W0kAs5ysh3Qk03EvNUologLgAjGmG+Ej59F1K7Rt1xp0TJlJBIKZd/b1TX9sN9jp91kUu9hhUnLo
RBet1ICKRpxUqP4Oh7Fq0aDrmRfW/PrSnDzekbzVXwuTzobZX3aw8j3MnKsGLVDeB6BbLxpAVjMi
p3SlbQsGueHPD9Zs0LzcPz77iOthltK4y40mP9cijO1igg/e4FFvfqAxaYIvZztkP38wo1+nmEkJ
0kxJSDGp1lbgyTi+JVIyh1JWd31JjpmogYWpHZtgFMzsTx03J/e5W+clyU1089qlErtAz5f4w6Wr
EFb7Q1r8/W/UffqwsiRB0pwoBaEd4ugqMKn4ong/HEnrGp7d9qnxBWdS9EmOIgfzbcqiBMEdzgI0
s38npvkYzr0Zif6XnoIt9KZTcwamnKPbIm6o/HueiFAynxqoSemqTMAnsqbRTWHxv1/KAEE28nlp
l7DLrPxBof2vqEwszn6kLWtxBKX0tSWRtWVP6khK3NfJCQzClRAEsAFLK+ojCRypXJzCFW8MyJ8p
s14T37GQo4Akx00QlLruESR5tep+C8CF6C35afXIc3OEqOA5Es/HJqZfizx3sKpsu0nniE9Zb3TZ
NvBpdhkqE1Mycqe7wzDBk3jxRsAIQXAtHMS06oPrNwD+qck18ElU1devtEDaB62JqMo+YXwWvKVW
tfPpDQDDVq+67Ec/pnRtMJOmy5OFiKtTALhi8YOk3sWEVedxFAlbAEf1CouJ2KtAvEw8irPcwsMz
7hHiwLXWPaibyFGZermsSPb95dBj3K+21IasOjdJCMaXC48qpxWpNl+QsjhV39DhR1jFI8UpqsHa
/ox3KZYK2d1tVqtda3awmBk58drX/T5CDjCP80g2/3DOvbEDdcZ7AKomK5/dG3M1t5YH0uhWqrd2
6DyBHyLbNqUj8bZO/JlhKz6c6lEwlnL6ojRP/RDFdT+7zd5ZpYTmSDaQSn4xkTLDFK/zgl4w+kHy
N8YaOY5R9wngQHNfOKG0xX12wvmiaMSI6d6Q3NoIV0y7JReh6Cjqc92gREFY9ArHEfIAzgR7EE88
DU+F1k3VfbpkIIrK+zIPbfNw4vly2j55aUoTw9EF8Qpk4bXCd0wgGW1nIgt0x+1t1YuqZPAK7jUb
70WgrBNhEJIHZa8NHpYSZcnnfKMr4dlZSLsLewuuNTyWuP6IsLsDFJ7x5t/YWmxNVq2TQ8Ncudcs
Fx1x6m4vrzT8wZybHWCQRx3Vgu/qQsvvLnUYjh97T365+rgl6n7OiMyRLyBTCkB2ccuwMIhM99M2
Hx3oyhNscm1uLkiVntf6UeEZ4vxKXFT31ONPCbLqEaoCQFiShgA4q0+g0aaHc2ucn5LAyE9EBL9R
visx85NsDNThvpT8Jg+tuDnhjnogbVIUqVBrMEEExRmnGJidWU+iGh6cfHuq3b2cAJ+7Jnb4UauA
GMp8Q2/TVDo+KLRPuh8jkvmrNMtd9hV2D4WJpv0MdXNSFZyvPYdNL4p7ZRWIBpMQypef4KnKVrsX
UAzEGr1ikNibS6pQLj7X5ghKv6nrETg4mYIK3BWFDJEhpr0I1aYf29OIUNN9ul65dSCCVw8MF/8W
Hdu/+Ihhcc8DrSLyq1sRr7PVjggbEqSoJgw3AXxT2r4bMuMD4+d+6Xkkac5G13/bGyZWzfBnDjw3
aqF9yGBoIaWz3Jw1pX5Oeh0tg/DO20jUETbc4MHwtaNZ4axP3HNOI67iTEadbBTbO5U174rrxgcZ
M6ZpdsM8At5zGVZSvncsMR/wb7vh/AyvB/cHyf//06dFUk7V71p6tkGMqXR8Y0zSmul4BN0kG896
Alu7ZaWwpto7r+e+RILnLZ/IC+3Aydpiu4DxZmn2hWZrZ9Qnv5dBtYEywpGeJIylonfrJSmy0Xsf
tvhWIRQtvk20zDXZQYSwdgHHrB2kxuW4J21I6WrqGzU6ETSaSRGQbLhIRAwJ+8f8C8lBTxwoYPpH
/+RCEKVOuDEe5Wl1IfdyY+iFHIiHdOVhOs+c9zd/O3edcamgXnjgPkvw3lWfNio2zsy3a0+FG53Q
3OAX+l7P4HHB7175Yw+QiUYWYAuJRIySoKzanpRzOte2lzEyeW8cLks5LpKwVjmE730KuFQOv3ZH
qC8AXVI39fNlQIM9O3DAchAg6vwfXsk6Xr9ZJOKrAXlyDBy2E67vkGBnz9K6bBCkQwir2OGHGh8i
G2BVoPYNCRaPMLvxDy2do807hLoQ7lA0bJ+wluz/pY3WDFv6nKxRboqdVPXBH2rP4ctEPdwf2AhF
13aC3BQDueBHVLHzE0SSLsJ4mYz/UZAY6ISz6ZY+Bts4iGl/jszPm8fRc3mWfNeB6cE1GyDcFycD
f++p46zYNFWTfIhQndbECnsIUjJCWtPMMQaVRec2NoSMhgYjFgftv+/Mru1Y2nAPEMCN0pnpcMl+
1ctV23Etp95mtuBGR9LHKP7t2m64A1NCrFAp87KJZmBsfws9jDxMkaICh6BGqYGmj3eO7mSz461D
Mm5/X1SgNHii4/7NFDcaQbYG5IEG6iQjrRL9O3Wep8D6Uy6z9vjedyVKpzO6EzfD8pHZa8hHXDbh
8IkcFcuhba5Yuv/fCyhaRUL7kWANk6ygbNPUpUjQLEfsQOeASOT0BNs0tmFQLgkSQ9Xo9JB7Yeji
+E71cgTHEDx02OwYVtPIv7qzKiXFYA1dVYDqm7JiMZZzo1Wa6oBV2mHdbAJ101Eizqkxnbs7TyhJ
hciA6fCsVaRSP+4u6fNBZM8sT0Mg83F0GVs1W/mBKyrMZOVYGbK0vzCBsmuVPkBnvavCI5x76ViY
QFk7ASykR/dnzdETWKebWFNg6y1z+xt1Cj70ZpOSX5vucKRQOHh3lxuYHkwemZs9hYE5zh6NmVc+
C1qIk+Nh34aKXWkRfrePeB8N4xEm3iWGDa6W09Fw2fwBQU6MXFrI4nmLZJO3TgpA3Ijb46yqipFs
vGOwnffbqXaTr7YF/wFVVzzvAQu81BHXIlusQ6fWi5xJHN2HlL1eemwOleUY/AKX4/PrIB86GwFt
6e6kqcAjes5WAXms10O6JdGw2HJXXTtrW4xtgdJpCL6k6IkwpuRIf5+NIWBlChrRxRIaC/2UfovX
PxudYxByi2vSCGw1SjHXn7HArqfF4n/omLR4NPJ0/GzxP6UjwWUa++EhGz4KzV9/87M0uEOjx8YI
EYEShQFlDvUOrhAP6SWfDb/p+ax/5GJF/AHxjstzgW7GfnnWXoJ7SKFvyu6pjOBBau90IxUZPmlm
TuArx1pcKnOWHepad/2/fNfE7BwjaekduyOVvk3/u42ZE4LNWmsMrAH+nfIECQQOjKtmkJ3SH30d
jFWR0Bxb6SXZZmkboVv1ryEEKRF7ww9jH8/+HpwbDhny0YAm6jVRR2NRc34Et7LA7ObZwXa6XQys
E/ONcE87uKouMVdrC3B7W16SbUI6Fb4oquxfOI/QxwC+QCKfLDhCQEcLMqCXJ2uXlA9EsZ/erRbQ
x7J0PuDJANDza83bzwZ+MsRQXvAkiiDeDnr8cRSkPWV0j7aPtTIEvUfT6lo+0A0vwSSQ/fdPHIPe
GQKqgu76mB4358snHn+0yZtIV1q+xsLKGMuCx+8Df/q61gsr9lfxB0zCy1sGzDdeCk2TsiM3UQ4r
CZ9TKyN1Kzs/kP6hzLecSyGwuvrkc/Y1BSRO8YQds93+rol5yQZmk4Q/lO6OWyFLBUjYxujYlV3t
m2B2M7YMEZkkzZmQcRZ3gpFJyQy4tySNWeRiSuS/epqdGEvbCglP4NkohuLJQ25QmJ6IsgVh9YOd
B6xX6ZervMmvrXBUtjaKI0tNZJcoigmR/lebBdYjWZscJlG41MhB7afvpQO3fxpgHUyr+LIac1jC
NE2u8b2rRTHeV+ZaUuxfNPl7Wb7lWUEmNoaQpDoZSXR3/Xjt0akTIKAHtEuKp1oDxN6XkM+J+DGs
NgZ5DALaffHz50ANMwKUCCotJNeWtvv6bZfM2TpzzAFhnWchmQNgJlTARWCOr6wRXTS/3L0osIld
eyn/sE9lqs+YM8YTEjr22jjYyv+rpBOZGP6GaHrd55PC11L0u1MAEg76poGHSz1vs/k11p20uYFz
sdumyNHGOX9ixXonIxxfujoiJP2D6QjTUYSRxfZSNf+HL/eEvazrS/ScVe6cD8ybR+LBTCuVe0DU
diAPUbRlOA93uWOX8JJ4YbCDO91dK0kadEjTJKjShyaEh3eV76dmX80nXBN6nyDcaAwm91g/yzL8
g3+mWlXfp8v0fnfdYW/aY719YIB504EdskYVI8JaRCO3ROSqXkSwn3PKHsMcak7dJyVP3NCmSjjv
qcTV0UttFSctsQD/bp3KcjjTRI4O60XbX3wPYUkYqFndJl17NOr6iHpYl2VnFgFtuhz68nS8ZAAc
E/E0Zrgu+iK1Y3tUeO/4kBR7jCOj1shydiAJw5WUIXXpA0kmcRjYQ3LEDsXz2eG6cW+RSKnVSHw5
89+4lr9nC6ed+TReFI9LIcGdk5FBgbON4YNyI/XSQvAfAFrv7Hh0CpK8F+qYWqSVylZPXzCwMR7C
NIpjcPLfPdDqp/5g5UXCs+ltOTAYgprAnGtppGBqYKqFNh9A5Itzj/DXmCuxTrC5SgCWwb9ckOss
gv8ZGOkyMaBDe5lwkpgmOyfvFLY2q/qAMx1bM1N/rGX0WP1xvcPo86QD+Q88PbuVFo39LicFCE35
4Xvdr6ImDiPC3URfu8DrpKdbupyGK/GQ2HgbyzEgydSGmbzMVLxGTy//FlwQ+Dz8N1dRKOGva66Y
s3dyVpTgfmIEhd/90sSZ+dCqIqKJdnpTpiaKgCL/UxbPx9NQ++8bOJvur8xJbf1GGKZy4h28xaiW
MY4dnQBFU0GRx0MwpqEzVsQtxBTCG8+DAfzAI5bXEEr7cYCRY5O2dxCXRNvjVBZ0W62mip1eIz/Q
xc8rGE1kK8UTTz1Gc+rsdODEKmNj837095bohqziUI7+zayxkQekCu+FWIi5JkxcmV9llbJK3gU8
7hVSUDdxzl1vyOc9QqK/I+hXx1Q8CIKcqxidwBmaVgesPPnNQdg4fckseT/vi6w5G392cf9A3T47
sCMsJDX47Ok/6foEhFj5GNel8d4gOTpXgH+78H8CuvA2cBrxhE0NlG/8r3lI3bM1awmsxISy6b+N
Rj2406bsJuTosyWwU/9qqigjWNzK/Mjd5da/oHxrlmj5zcSxe71pnspB10gCxnGy7c8PCLyorIWz
thYsp2aueYw/tQuBeA7UbFbV1rTfFM+LYyxdomyDqnsxwkS5wBRhu6BndsJPkUj5cO0GrVKMgNB1
L9P+QiHUaNBcG+Dk8MDsfwieF+5b6HH9ZMe9uQSsklj6Nk9qH2WrMkm5fJTgWEGTv6MkCIdAqAgW
xKCPZy3nBzxwsjJFDYRAMthGy1y77IZgCYMIfgN6n17zCMwhaazg8kaxur6oTsFql7tCo/y4ZnYr
9zhf3rkepqc7EJGSYgSOLpE/49LbtF7lrlY0PcWUT4mk/qeQ32QkRliQsGggxEOE64R4MYL2GAVo
h/OEHJw9BPhts2+cqhKpTJV9Mg0JP72wLDPSiEuu85VqjJPs647g21GakGtuI/BsFMmXx+CgqbRe
66o/3THBCmlgM2tSqkRew+bdxOIK1efupI1TZzWV8TXWV676NazU5yfy7LYs0cmWqmIhmyzO6a2u
U7y1kl3lTCBwIr87SsorXWKOFpqLvsY11nr4HjJFsZa5sPKV2hwPAfEYXaDzeYZQ0hI4B8YyQtsv
gfRkzz+2CyIyDMqVHh/jVF/egTCVmYUz1XHmN44tc28IGkeHuX/xvkd6vWRRQ59g1pekG7M//zyE
/9ttvAd43FkWk9VyO5ahqk/AO87NHl7L2wTbVdepl9WIuYS7CZjo4+cDC0e19wKJdpiRy1yELuIs
QQtSHUUBELoiVJ5Xl6LRGlo7/p5tcxUhc9F+9odcC9H2VcLy6MhYhmxT/pIiq0ppwYXckCLDMXDs
iiY+kFjC/nK2rmglv2Q+DzGCUrL8uOeUS4yb/yto6whj57Piioif1qLvEgPZuFEG6TFDEL35ANgu
57vrsFqULDuBXUahJClNx983mmjUbpfE0hDGPOUaXhcJw1P/E6251+Vb63P59xvdBORFzfAA9ZCZ
pQn7DTz7eVNDebCM7IINahzi7LZnttuX6u9DL6bdfROeZhC5JDG2cJYT5+86RuE5dH1l8WFcHsrl
fkaj7r26TjZdcVomx2nFYdFKAT4r/JnvxTJx6vLy/SqhIl/TIe/fz4PBNPQHb4os3+jky6CuSo29
CTegYi3yu303jmo+CwLNThSuy+zdXtfcZKna9x5eZrougmbNipmis+Axsr9NA3drXSD/rHm664+H
MtAA6XjuWJDaVsuDnY47q9vWI6ACPOGWmW2CZVYopzRtBSi4gUimaeIM0vj5a3VSyfaWuiZvIabr
scnUvpQvS/5fLHrmlGytNOzYO/nbJG5/l0OSDuBiDc0S44n1rg+slL1qBFUiIVjLXakOokmNZlsF
2Cb+Sw7E+0C/h6SRp7Tv44Mz6KJapwHI5UWWzvFp9/8cF0/k2zcXwyO0+PBqj0BMdgEN7N/QIG7+
pcJ2EKwr9oTEQrtcqlL6PTxaf7/FHk2KlOyhXyqZBvSfDAjB52lZRV/FIVUtxPXlW/S+0HoD/KKx
/RgEoY9G+ivOBEkQTjP8fvhhxMwIk4yo5Z0VgfbU7duvk6zCeE4zauPGqaKqzjEHcAQEzRnXNP2X
jENjcwG+cwHxK0i6uFVoNfVT3ARyYA90XMuG+6xykfsSPmyEtoh14K1JG+hXMm/SvcoKkfggJLym
cHXEhTNNx6MHMLQymXONlMIXQqKHC7BQYqr+fcHuFPC+Io3Gi1tK9hTFNaNpW2TTWDcq1T1hroKV
dFCyL6lANHqqo6nYg+oBtEF5zeXrhF+fNnskocc5382JZnvFWTn8xzamzt9V5CllyBiPGLOmdBXf
Oy/d3SlByoQhLzrdi88a+tpExlquFYmSC9JyqIZ4h7pU33Nc9DBJznGQ4gMOg3kdoE4u90JHZ2fX
b6JJ2I1Ma4KugQ6YRAomwM5snJ5gLe/uhRzVqkU5HkdALbULO/rf0a1XZ2BYuHGnWLPJbbrC9CLq
3w93ykfUo5eYfkYs4lOm5vjAUwMOmXgJ5iK2Xh0pXTT6GCVsijMrwUJ4BQJ0raD2XDr684SWxLvb
4FDW1BPhgscO8+jWz8st3k2PvwQJ2ymv7RaKXUnjt+bmuvGW/VZH5YtfixFtu3ms/xedAgP0fQ0w
TMiFbL4YY+xP8c6Wx7oGxEMqpEK13rYpdKb89RNHnS6Bw+UGmVXLeoTpcsxcZFL1fQxVk2VwqbWO
VVeLxAEfa8Gq1UYs9w/irFP5hP52mCH7WsJiUPy5ekYRyr1TFjEmy/Z6OBUH42QhPyCYl07EvloM
niS+pQFSBYmKk88BDI1sf/VROuoFOi3q/1kpNitQgBvBJRtazKRJvp4vXIMX/L7RvJkgSPPvldZa
0CT0AEWjtT6yLMU/LHXSyNqOKvBwnODSGtbUE6nUxjpg/pGJEFfWRF9NRQf3NzDybtsmR06inMlN
Nt62kjUf2HM8ScngxT7ITAlC/d5/7Oe56YjOvzhvIIvJcE1fxS1Pj6wEQfDK/mh/mrI5Yzfvfage
nx7CCFqTFQMbAm8rxQ+JJuN+zYKxcGHPR/jkaK7GxLF4SuGgWrALeYq43c21VZsASApwnFcLdhaM
iaWnkYgPYv4yyV5zDvhe5nvm2HPwAWVil+ELLrgT6dRSK2xe4a+O/r6VVti3A8bRkZe2iwkkXD3q
v6EeGBsE36qV7UX5pHuglOoQu27n416SqDxkLQXkkn+o1uTmZjELorh2jWASFt0+Aw38z/2ya8Hr
V0No7CxLeYN94HlI2sM7O9uchIP9m+IHAH1NOxKn/rtsiUHlxSKjLVS5E9uOagtfxiflq/PRocmn
9DclF+bW2G1b8VJeokcDB7pWAj6mOKe3+FRIV6P+hzJVzNsdKGlIas0k6YQBHBlPyer7GYOcFmYr
v+6UevIZAuSQ6YyJBWT7kUp/jvS44rj3rQ6+8SLGEnhXkj5KCEA39OzT5T1aJtJzIrvIhIJXWoTZ
/D+a8Lkg7dDy72faDrWwfhlx9Q+Xt6EVIEEG/9pUdv7ZbJW3WL23FxSpiQ42QPwh45N5VUWkagQF
ndwiTGpC27Zz97zlyqUQmd2u1gA1pt/2L6nGQqMCp5GwXNugeIklqSiqpFjKBExUksN8LilrORmS
XL23j3Xk8kC7UwLhd3lijyIc+rStKOjFJxeP2Zfog833vMwItOAnnlImUiWrTBSFL+UF9dxX6V4/
WmKiq4Pwa0piFgL1xb8YCY0n5ZqCvT90DCrA6esYblt57BzcVQmNgUgqTocypveNutX0BshEJvYM
Vam5U86Gq265V26EJxOUZwZAPh5/opNolfOg0VRtwN+esxwj6uelOBWPPOJN/sVrPBVlay1cIABR
h8c97UqIurNH5v7aVvYAaff9JTdmQlOYzPeVFgSlaKlulgGMFOckbXU+PQbCV0ywWxgrpLFzjxg2
9xEmclf7QoERKbsqpMGNLeuo7/RkSgSsozxYKdMuarThHOafrXGMHxT4jM1iuyId5RLj9SrM+wWX
O7tYt8YrVvByOaA6bsv8jemfkqmwY1qnOCd4SAfLLrfghxM8di6paWa3SIjxSgVRwem6a+684BkU
ibyyLWMW+1rp1Wh91pGGsSWv/Kz7k3F6r5NL6j/DaNgLpl/Bx8WLbXKbMa2Pjnvun4kKWxBoWz2x
vOIYsb4sXEY5PPRXb4Vx3R4iOjHV5qXxvS1c3+Fuyfdj2iVOx4mKclRcgrGpmg/SgVqKZcwBMy6V
e9fSH6JNzfNKLLxKSYXxtrNlx0jvEa8L+auosNtUVGtjHcuemgKGF8889E21sUDikkvSfbxRk00G
mjBKxXzNROHVGO87D6htDb7IbPP3n44wpiFsIbRpFhKGeRTDqW5/95Sc8aye258XYg0nid6ZYBMy
kpXgz4SrQa7CweL+1Lk4W4riSIevweyoN75wCBOWr0r/lRWwwlED0kRW9tkOZxK7canc109DuLAY
uZqG+k05HdI1Xl2q+pLmNgZstl2WCh5AyIxWjfV0+sWY1yaCXO5iTBduh4kWFa86AHi5MZzPzqT4
hHf0VkSYyAavBvNlDe7MOfDImpLPbsV5IypMpWQB0I3DO+VCAN0sDXPvXd1gy6j5CEt7FPs3Q2pB
FzeRwlkTX4Rjyl+7EB1XZyTdNHDKFEPpJ2hn73GZ9l5Kc9OTHzMBHQmlOrCFWYAeAwMGgTtzzaVb
iF/16A3WNQZdT2OL8qBSTKQew+9ANhEOZ4kgVCUjUi1Q9klCRZ7SxFs01yAwaSehaDA3tg6Ugiji
yUeWEkDBCTktWKF91cDffHezl8ik2WL1uVEuE3JhDnyW/30RwquGW8VK/z+fX1k9uEXLPaFb4HxX
T7bdL/xN2Klpez2B0zTkqa0VXd1SRY/u6l04bu+6mjpL/uAIq/rrkrdA3eYUFKDbzHb3l/yMfCPK
at/CdSTWuCIou9ELX3AnjTvh31smvkLDLFmzmVFaz0STdUdw0m0eqLTlUenGrqzf+VWj6dDzecSo
6zYsWU4hLgPD7F/KjiJkXPwebS/RCJ24s1K3fKY/0Brzf1UTgLG+LBrdtJ3Se4my0Hucv+tHbQKt
2/yyclGdXQpq9fMLkGkf38fMc4gxpSOuZBGPDiPopb00vFzuZsr+dCmXC/EaPAapjkaeIRUqR5os
CKZ8FOPoBuxclVNJeTfN8rjs5kzt8+Gr2BoOrKBea4ocnxg/tq2iwb8e/mhxuZNjC+TBzPSUssL+
ojwTxLE1dKQBqFwbbV/YUDTSbwQ+WqsdiInj4iCWLJvqljCT3gMFvaNb1hCWWaQtiohgBVXOQKxo
h9dG4zsRrFUq5UHm4B1Ldqb88e+1Tmt0hvaERlq5i0+/yI+Ayz9sqDJ4kznEZjCmCSm2IRNfnXY4
1pH/xnWbTYAwzw1W6LWrFO9ye/UPZ8i9Q0pHsJWsVYRWAwoaEPBtKURFIZCHipCBoP2oH05Ggiyx
RFxxOFMm6DqFnMIjgBA8T2QN2TE0TmAXv/9K3JIUrE+pfIfkK3j3ovAuzjUWwAcoLwitvFr/h7V1
1lfua2uG/Mu5pyenGZiH0Z4e59QMM6OpVGRXMb0p4/+dgVEKaZ+zkcxF9Jk/9+Fbzigr6/kwmGN2
G1udHoqF4TFVb4GNwdk8JCY8HdBPS1oHQrO0q2ij5h0NdqVTibjsTfntmkueNzmRn5GuVpP2GKfS
Z4nA4blnCCYng0zCd/xKvjUGeWhxizaHSw2Zb+ACFnOCl6ArYLox3DxLokbPeSd72dm6dbe3s2Kh
YI/ad2R6Trq8EBN6Zkgt+018RQ2ZjKXq43Ib64B28KBdAG2gFcvYJhqFnXkHvQMf8JHyokfldlwW
8nZfVq9GTVV2RzrdGCfhbS7UTQsXlA6/1B8GvfN+ltbRgXSPvIaM8ksRScn1+8ScGOQmSyte8onD
+Zc49GIwaEVNXNSxDH3jvNDqUmho4DuWaaPIsO3z6AhLe5qV3udB7dstRgoYWA68MuSU5d+X9LdX
NHolN/GcjGlwu6xN3q541Tn8dFQu8Y5ZCKBLjZ8WUEA44G4U0pDzgEVdbODnlUr8Jaz6n/ktuciF
/k4u02gakJ+0CCzHvI91h1l7NjWF8GyLmRNCl+TqBPXx+QidAzVh53Yt1WHdnFKUZ2nzaxkkxdf5
k/qDeEybATIwEplGIu+/IPH6z1HLVR6MUuy+/nrOXWHSynzmbieaOPdjcOG1PpR5DI7g4CWX5bj6
4ZEiB1hOlUQ3GxlgRXn45hx3VbM9y1/660C0tCQBj29lbMIH3dcxOXWVTePiSYOLVcYWP9BXgJG8
1sxqXdHPpogxi2V4Cv+jzAIQdexnSqJqU1TBzZqvEgKel8uhkz+gPe3eU4VIUzcUqwRCYKSc8A4B
8L57W4KX4BeDjU1Roe1gfWqhplcFwTv7OI9RpbCKriWh4cBDqRR70PpKvxiPcIRRcgIhWDaJwyo+
B0alq6L7I44QZVWboaI8Hp45yh07pS0aPeyilUea+qT29t8+nsZFCx/SagtIQkyHXc+Tmw08BZCX
dSu/PXk//xgMTv6C38dMCzMgf1q4FJTEWfIn13HFvYRfq7RF5Hw/LG89mbvLkLKl6J5yuU5AXfUA
xyfW/byh6zVvrvyW5XT1EqWBICBWeA/0Z+a49vcdc8zix1LZO4VDmSRiFxi6j3dE2sb93XqXaa2A
+RQcSjO6/N2Whe3pKb7FCksXqkU93GGpcQacycM3xX9w4BF3xzjjbUFkYKA6enF7M1BHL55HNPe8
QH63lt1vNSES4VFU2gprtgUFyh7WB3uLv/e86ZCueIJ8beG5Zc1mjGD0vkJOlKSzdislnLdOUXpz
SIJY3BqJu9EdGu3FBtFEWv7RZQYRikp5pGRh+02KCCLshjSMDivRw8mdp1rEry4n4IY5FmoRZBBh
2jBXZ+e3omDAM2yAWagv4sov7xrBk0dUUiRhTw5645uIMPHqV3eyHBPKU9IwW92tT/xODLIU2aWD
8hBPfu/GaUW18ndUQfQbhC2liPfsPdjI8PIBxyMOFMS8nHkjhtQjvJ+T5gg9iWuOfx24dkX90hsr
4SuCL0Z4w6Dj4/4EVzE/H8HK0mkI9SBUoP4kFVWwoyRe1dXVRP++j57cjBOkIXXqaG16+x5n9aXE
4btcS/WBd4+RMDGOIO5qwLyjvV9Zc4eSwOBmktfKpjG4WNIdwCn7BoqjejWNQdvxl9ZEFbXUeCGY
jrIXrSe57M8WKznfeeaGi7l47++Zl6AlgnwSkkfOtC3v4fheF+4YEeURUt+HLVWlG6Qlk+IKJ53F
7ok/wBirM0/PwAodpNH2PlZsc0k+ZUz6Rfdmi97xDaHpRUPjZUD2NI3FPrXAjtE1lW3a8HhKPY0f
5WH9sisT5FtAZfy7z0sF3YxeoECzmhr+NTel5qqUrjC7Qd+qSyFbZSDxGhCfuza30RYOAV1jZxZG
wrRi9RJgcFlx3Qu9EOH0mFE8cjup5AuZ+a/x7aN/o7ApaqxLbbhtSqd4Z78E/HIEe0HcdiUU6vi6
betpGXPcyq+za21YrxOozvmc71SQjlT5qtm7N2CpTw/8r5QiiyW0X/ibgCVEfDQfqb4jGJzL/aCP
Lzvl64ydmTFtU+MtT0VOB7jUgI6zWH02BHfj4Y/hSmaaybofP2ryJ63a8ckHtNUiglitIndtF62b
4BNex9O3aSzwQ7+nwnJy75QXq2N0S2ht2Z/0/ya9+deEHRCFbpDoWtsbPeorD3UfV+5nKFyU80wO
HURp4T6U/4ChUwjdy2nvtKj9D+lIGGlw7GukdUK2nCLWcw75ciRqq1h0KjwnEUJKc5n7sKd89jzr
D/MIJl9rYEG8tyroWQMoK3Q6kX4ny1xuuQtVKYYBVDQ7iyY01rnV3Qs7qXWAbchpYUa8YJ1aNdtT
nz8La+VTEM2sFH+uK9L3w3caydniURlTzUpaczSZXBQC4xd0O7Uznb/UUP/vC+tII+QoR7Hu4bee
pfXDEV07F0bDwaPchJmlg33Osq33kBz9vcLrtLSieSlA7XypCQqmpxcH5U5PaehaeVb8NTiKkd86
UABION1DO0OElAwG9IpQ27GtddFDtR1Gdfjfd/0jdLlV4yDM6hsE1ke+1qiwmz+2fNPRW3szBJV1
9/14cRbiSM26fxIC88EnAeWaLUkadeXkAMQSccEQTeUtt+Soc2DCb2kLSWgclzZPOLMRT6jgZXoc
Fn+9gOMN0/JnP5dqcDGIw/26LVl2Do+GEb2cdM3YT8Ef80N6LtDmL+lBNTJAIc+7BF6OizUO7WEM
89FnhFlGLoDmHAljoIXJNpuVDCeO/bjCQNbZ1RnNWERlxpml+jIEMnwVd0nIMoiEvhtrWxBOPtGy
vr2hRI3I+lOONBt7Kq824pj+eotfM1iXrO+1xpbHt3KSVCQ3xXHb0RCJMYp4o0AAfuirpW+/Paj8
nDMCABpiMwBOCPWvD7PwDP2gmLwfTDrP8X5u3u8abGETTaR1FnsjI32zIbQjnX3nyL/PMZRuczKJ
EG3O4vp6lbpUkfqPFBlCTKxXIFuj4bkwLrpcFFWE9w2HkVlB2M1m7giAC9wX/wmu65d9dPtVeHdA
KKma2vuvIC3pd0JtCLksqNwLkVyowrHvfwkPzx4w29/jgPs+/q6PH9lQ9hDwg7Hw/CJt7GYN643e
MOk9ftZBMMC7K8Mxq9NQehfq+sKksJbi9ivgR3/2w3AvceEP9IQKz6Rw+JTTBym0kusaPADq5C9d
L6Srmou/5H57qEkRM7o7w3YWWzLTsblJ7Uqxdrgd4P6IyDu47LVN2JMzABw5pmEfNzAGvemBtBI8
cr/3PnUj2V/ZdtK5bdkOI4+r5axJ75ajPFJ9tgjqJXgFxVtWQeHMcTJzvUJrMxyreBGAKqHNJFO4
XaALAgWhuM17Ibhtz3lhKeeseRS0faPc+Q+7ndbSY75OvQca+IPO00lxNbWBEUA5fFRCNsdD+iOc
d4tShJGzLAqmZHnwjy3vTKfbga2qz4vmd7v+80C7dYtUxkGuDptjlE3uBqusfg37cIXzGkkFiV4z
ystazoPpletIbQTM/53Cyy5nSeiHvi5ERsW2BGsyYxHICswolF6bmxTwJ8VBwVXdJcyHJsEvvIoG
HGWHzVlcS1DpfGizwZJzngav7q264plBpZuk2iYLzJEcxMPCAFxLSdapgnI8tZ+LCX8LXppygVi9
p2Rzm0ho/fwXKnS+oZMoWP7kXqX6vk1Iuh1DJl4HuZCeLhgOVcS5RtO1xKzUw7dnVUsTehDSZ/F/
E/ZecNxF9NqWja/xuLxbg/ZOVNkE6SF8w2d07Y7WqRsA/Y0AKQifCFEPUWItm+F8DnDrhaCF9KAs
9b9welRcLvfNHlvwBhMt/8vimfARF9JKFVjkwyoTuyMh93CGNjaVk3p82+e8bqvF/Zev2hJuwJ0w
a4nPxPxP812m3OvYkbJilEDimdaIBaQW1VfSXntCATXZ9bhE3Zi7oQBv6y0jSub/MKiTOwRFOos8
qubrPF44hGf3fcCLQ2QN/UQEeleL/CfJ8sNBV8GR1jkU67hdYlkrC1C23tJBFUOirDC45334ckt0
aEMIlIEj2IHoaGP6631tSbGAebUAIJqWOvdDZTBmuz3FPZQ3cCEMvXYadaa0Xwdr+PomOoo0oY/R
ejfdUhSwMENR5FjNPQ8O2KTKbZvkGPDDkJ2jIZ61aTRd7AXRci03X5kqQLekSUtC2HmwKt3lUVFy
6IldUt/DXuzMjtgJ88+TlupcZWMEMIYEiRBdZaFhm3JK7DYXBs//7aQoBinpmwrsgLJRhFoDwEUd
HhIFlhVSASCRiJdJM9ZLia4pQmE6T1Lp4qGPJcif1l/SX493yu88yxiN5IVUHKc7v/URDpPEx5CF
Q/yjLk8r9z+Ois4JkFzLkkM1hJ4Oq1PiDXh/tkJIQBAlWeYQMgnkBHN9MLGzQ8Yf3jRWouFNGqH/
CQ06d4aw3VpdTR/4wmgRJaLO3z99Y2tZSQPARo+uS3BKIueEokg/1efNyTdjK+A8bFyoHryn75R9
h/5RKFiWTpLL/r4lF1CkbJj3MOjvC/e7rwhrUfUm2jFfum1ibqQ9wMtYHGGWEaujwsqyuTvpJAsg
Y60V1CQoRAt3QHxpnzdUWImlHIerVYMnr9HdlWQe46HTai04n5QQgzcz+FgH9r1yyzJE0beuborn
OHOxTu8rbmlgHjfFyID3zeM642F+RwV+JUXIbHYQUanQxFHMmJZWi3avAAiO5Gbg176YgH1NWP1v
+6oINVR4nI1ZK0Fnhsu+Z/P2kIMTXlv3ims0a2BRayvigDRaAwCHWk3yi62w8+oZks2t3J7j5cwt
qkMkrFQh1cP+uYRepnZx36ZkXu9aHvZlYipKvnC4qyMzhhiBrsc6K42unWgQGV+uVWXPrWqisnjq
jJnghTYS1aGDpXCesXbyfTJ47ONMdzNF/aAZ8V+FRaBvegJvJET2YRkmfa2Oxk9Wh8cX/3tqQoXk
44gRzuZmLQgbDovq2HbImD5/XYhw22xb6BjGnofQ70+5WFbB6yRatLjHayY3yyqbtG640S6eXtAo
R5//fZCCUGRm8l3YpaCvHNQqUlf+oMgKcklx8950U+rZi1EHRUp0miyDYs6/pdpjF4MZ3JdC1629
c5OvWf+Ng++0Q7gLQgBP1p0IYYNjrV4EOFylF9Xc2N3ympwF/ssjxxpPBR9bNG7ff4OWK0bSO4TS
Z6XWmk06+VTcNvgg0GTRko5hJWemyc/pLqOFJwvusk/lEdmHoOE1roTrkwDwnqcaLx2w3FkXZrGZ
rNYaEZnxUdLCs3sEEgo3rZj/dsmhd+W94guYVneOVpk9AKjHuzy5m8PPHUES+Qr0gbqYpV8lzt9E
A/+hImhJD3QC/1iTfQq/E6jp/EoCll4vnCQQf6MsozoLQTLNDYKEOPGph0/K9H/9+LbnLZD1fbcW
BOmhT5nxRjg9J5uY/2JyMTJp7eRBLGZhMZNYqOeMNvoj9v0kaPP6rVZRa9EAj3sYNuwJzFGrzlH3
NR2oQuxVRkeYoruoIB2gmiYCZjKSVQAASk/MBJOihPsBoMaXSKvKNMsN/4sczWv3+wrO9RrPVyiq
sg84NvbVs0yjfd8lLnRtnAH7XIwz503b5ivmySjsWYna3X1s8ladi9Ni3fPjPFd8PGacgS0ydecV
7gFfdWLBuDWOFNcffmirebaJW4OMt8yU7f4HbUizb4gLVuZcWJHALJNRXkNaU1z5fZ1kZp3hDRyL
jrdd0Py5e5+9pidwOCXFXMn1MfMThWR7Ox1CnLGI2SpKMwDtB63SfmaIf83k/0T6Ano+czzpCqJZ
dGJ2jtZFTMf9mPy8ADeyQ3RqkGW8g9NfJgv73zBQAOEdsZrDNnpaIrjYwQx/8NaebZpP9+/b68ep
U4wM6ve3LHbWWDcej0X8J9KgyY036Ukqs+IMf+u9UU783nMVQ4UZpHfwxTYQ4sol3ZJtxwK8m87M
I3oH/624YQM1lXKCg/sGtPxolAc/0YcW1kx8nttjWuD5M+2rekBxgUmj8FpN0D+nhbCYwu0ouCdu
wTKVGnCWZ3PNW7lq+aNQlbkcbT9td/bCfjczB+0mDJUEsqKwgLsDDx+BDIbwCfECJcnrSHAGSyPo
nm47oVQ3gFy6Efn+MaOnLHo441bk2XX/jyGtvMDd01g7IsFhdm+TDzloG+NPrZchi5wAvzgxCxEZ
RfBfpHgtNzUz3xlQtKtD4NW5K6R8if14/JdvHXalHmi5LEYA5YunmWq7cz+3Ru2hatdehuCN4S7M
HgFa/1Bd8huoBN0eo6cZuIaqe5jh8X4Kceyb0GPobve3EJOouncMCY7haa4RGczew4z2KBDIIWGY
G17i3ssk9/Q07e7nv5xvI8bfxZEz1mi5VEDd9Gt/iJNzUBUtq6R/ASryp40+Vp/ksxqqoho8d99Z
/JAViiUhY7LLRoNeljcA8uNe+9F/zH2ZnqJPedvwEGXQXjKcCXtmO0g0m4Hc7dl8vf+/RV/zhSIQ
/v6Hbg/cgtasz31ee83coYXPYmKy0km/x7GdVffkn9oVrrTQ8IkoBm8wWJJxJudx8Y0lyuxE+b3n
fdJSkKXb9JYKGBuwE1xgoiFMNR2+1RnsEIRlhZ//DQR7ODdfFrkuLCob8f0FUX6r9sVQkg4Y/a8z
ZqvIojQg4MenP2VbJbFL66qdi5niFNyvEO2CgfPvYz+rX3FWPX4PuzQNECJ6kSlIIxVWX1udKiDq
b0VdaeP7Cn6qpqKknWn4mdY7ThOqsqwl33XnvWNAXQyiAgx6kOAs+MCoOFz0iLOj6kBRkn2G6ZuV
GL7Qy5cIYRPdlal2LKb1aAUOcRAl53jyFnh/mSCTB1BZ/uFswL2Ia20Odhqvh6GVnaz4PM1GEO1D
B+ehV4bN2X9emXdr9ru09BB9O6+NBQZ16lu/o6W1PokfnJFnEvlrjSXmAiYPiDn3W1bG9x/lSfoi
FOMAuCRq/wh0dUdaav7cTklYF2NPStzppoky15F89FyHXRQNNYWBXnyBAYgkiurD5PTJEZhH4daD
h9JKvk7NDTmDNpeeLUy1Ulk38gyKc+xUXnSMWqD62boLSma8qNTivhdOmuxR0PR5VtkDEZ/lAD2a
IpdfMPd05ePTUyvXpQw8Vmd+mhAbMtsSK+BixV8CwynCwI9FEbs8B9MigbKeYrkUeTlzHC8wi0kL
vMKtz9db6B5ikifMoXhaqRyCzu1kUZvSRCCUzgqqIpQvJ7AKK/j+0msRNArVfj6leczcv5gFOFz/
gE1fzcgkTcFbwBm3ueyHSkbUiNLL3SmP0a8J6Foz7oePYs2NyEyYruxXIHnUxQC+/3WaQToLrFCz
WUNAy+6RqqOw8wnPwkqcB27zXr5SJuo0OFgRAC1TOKThNM3o/1MQzVxiVN8xnmfP2VuAjHogDROV
E3XeI2ZJEBUTHoPlYZ78iz3ifFq+3R0+EvTldrG2+RZjAzlLOM7im3Rx0GW/tUdTLzz/v9QK8liW
Gx8ZZhLzn8kw0KBL87/GA4+fTAHBzsOzGRb1p2qX3xXCcUs7HLCzENK0LbZ0srHsLZF7UdoI4kEJ
OPrI/BJFjulD+ArZSLI7pVgu76B9ydwg5hMW5+js8xFcOfgtgLd2hY8ZcocuNnDA4OzNCwpRg8x5
wvJV5GhePNAOlwFvnIK2KsYBOdsrZRX6ExRpv0WdGfHCCuGb6geYEz/6Lg2fAgB2VEaPyjo3xIeg
0v8yIY9qo96xZVADiM+yc8pfpJ0N3+OKv0sD4btLrD0jaceXMZjifLcjzU77UHAD5vF1Rk0dbuKn
x50KNopBTtZbKzhRQlJzrrmBjs6HNNKmXw0avgTMb+pcH4U83iJuMPWb5yr3Nk5KUF2DHZpaXKgP
B4t2fGir4+g9j2Cxoz3Lelw1QkjmNSFqtcC+16ps8uNdLf0RPklvu9VOvAW5r7WCVGkHwVqCSMN5
c6dAlgucUP+4+XihAJhWuutO45n0dXaeXKrrxhgffRZh+YrztUVJRR6JHxLstGFZyFyi5HO8RJa1
AG0yLn9pEwg/MrJg3iQiBSm+cZGLEMoe/sB3rrUhWZy23H9bxJntg+JR4QFjY702QMEH+Z43J/LS
fdgcLMh8Wgu7Qn4fVLUAIzS1uNNmx2MSfN0g+0Zo00sq0Cw/daeoDRqFu63Gg0OTBMUwJ39D/C0U
CxWfPpKj7NfA5B3C0GMOFeBf4c8R+vyRMN76+mypz13Vaq5G6QXvBGYiNBT38zlHynP8Ik3+uRYA
zm7/q8Wq0ZK/+tIrZ/LPT0OoGsYxuFO2O/zVqgguM+1QJ5eA/I/6eb/mX74tb5DuCh7CF8K5+41f
iksJGBk1kwSEfvVJqgCMZqRXsxIEAOv8+rXm8dQj5v0k47MBlx9xdFWgbS9QE23d9ZtalOztrIe2
Z9eQrqjwcgpkUNMVYpj1WtSngLSSQdqh7XlnuDxuG3FFGMae5v7yMVnceA1wdQEirBHaMtdIznkk
BPT9w2ZSZfC+v38dWzY1bINbCfmvb0l0JgyfDeQZNcGKb94IAZxzN1t3q6yNiHS2pdN+3twr0ndN
9BDwr89iSv1+slYcuO+kKcfUoZJVi35TEB1u4tqwNbE2xcdF4baOjkGNkjviOrS8BGkSLlF2v7Q3
2kRY2KcjGbL0BWNq3ETHR9yUtpuZwiE4ooE+LagzgAF/9922mFvQ96PWYoTDTKR4OIAWlI/9T2ze
e5OtMlV0NWhUz3vvco+Zza7Xde0BACmM1W3L/pCk3pmwWZdabL88TvoZIWRy0CkdkBLb6v+icSOP
pUHFu5voSnmc11C7Stc82+6PsNnnIRjBmDg/AgMcbCN3sE1Qyyc6dKaBCIslZiSYJCR/QuCnrFtG
+2DKg5B7b+0MZAi8BDE02/PB1JwEc5gJEtEuJX9TP0Cuq/agg1f9CWtDH3+EX/DTxojXUziLl7wH
hNwdqyf2r4damW5q6EwpvhtMal3K6DkKx+Z6L7vXGkcvX1jJcPpR9QIAibCj1Mo8W6m0RZpJKz07
sjK4mTFy9rVJl4QLc1zrIuo1bNUlpCuVtY5vaBR04+SO3ZzCF+SgrJ+60BuekaCkc0bL2jqkkpjT
HccSERHu6TmcAmQC24hC3whiq3vFFkfh0aapqx8xrRTcZEeMKSZmszkGq+1Zapqyb4gfOF1TPdZf
A9HKpHmkAO/Z72WjvDXU+G7sW8Lrv3iIrhzb2VnMpagrTnRBEZOXpSrBSw2t0n0OytyUtdEPmGDV
0Rx2ZfzvKfqMnzqILcUhMeQYZEC6pnPEZtVv07oXWo9qRbSBI0ZpEL+385W4Cer/cqVT+X3WhbZ5
Q8B8zkCl28cqFDchyFciIQU4o+J0bVrQwvesVKYpJYne5wbxZilpXPKKlpmI/ANFyg7Y8guWD2K5
Yfj2YSUlYXnxicZQqL0PP8ssTk2TX+12f21PnHzyypZtVlLzOYTmq1G45E6CGeiBqB2oXMx9LNZZ
ORMM4l0oSqsR5Fmril1V/bgf6yX439m8th1EvRci0jdY/u1U+NZr+AcEOGibFOg93+2qfak+2kCJ
RrjSlaa3tPHliN8iW/JleBesZWSfA5Dtp/VeGribBqHtLLCHvWrDuvFEdhEI+uyDWDRNu3YOCEu4
9ttrw2nlsUVsEe3aVbpEaRYuYAR/0l8oBven5bW1TfFn2WzMSwz3V0bYfIfJTKjFvS9Sn2yLUvZD
d4/X5XsSl0hRwS/Tjklmd/wky3GUDp07yAvotLacvVXfteXm/NP1oM30T6VWt6aB9oQnaRPkX0g/
+t04rGOBfsFfaqF7Z4imqmBrb2FtIfFGtecBiCa1pSn9iiNf9GpSKPLGMJ2qLrwozbnKES/iaLl1
xtxCyKNBRLMc5/y/U+bUJ9oA8BOWYOnePRfMIcTf+47EGnREc7u8sLATzUXHhb9mD5SLpmVw8V8m
XQ4WLs04ZuDlQu4VBxwvRb2Z+ZZAdTZyiM+hJsDreJwr6jgcTu9w4De+3tm7jjVw3jRQorLuzv/2
9rkNWFHKTCyOsLX6zI942DdxZcLO6Ej7x5142nBarXo3qTico/rFg/xIg4fhRWZXr/uDjh1BV98L
HfDFQw6I/L/vMhjwF3+8mLxwyMmZ+l3yv8euOT/nlGxOgnnvdI2qb0GONDKEvvhgANHYYZBGmYYS
GXEqA39HGzD91bWUPJQFhs5DGjeCGUYh3Ip+oAddZVe2SyUsha4zyFBU59jmV1om4Jrc1W0OUblT
/u+wij7GnBAWB7TmIGLU8mpcUoSB/uG8Rhthk6dvnX2br6Q0UJC0RXf4vEme7cVEQ+9URWApIFT7
MO+uMDsfAR88f8/Skl8DDFLl+5Us74wMz7qFK6Hqa9QOkbhG/O6YXMSVMFeHm8VhE9TqGA57cyNb
HX49Rsbytdzz2ektQTH52gvaLTrnwzewF4MWPFKbcJZHYpWqk69oAEXOwyyNU+0gNqKGyTiC3Q3d
QhohbkyueRv6D/2PYqC86vXiHvVCB5/E3T813k/jE6t0U/0aWbJgorgyYtWrAJTDGLcSX73GgHH0
4jE34qcsr8zDJDBZpctx0uIA3wcVxMqdj9xBCaMkOCCeSCTO+yx5L09Zaohtyu8TojpO984vOn+r
/SN2vtuo5pD6tdUyzQxoqfaoW4fK+dlG8XJEpWyMq1kQNcE72luG/VbdD6Ud9BElyWfxvV4+t7xk
g5VOQZ3nkWS1kgNkhAMIzv17gMCrVT3Bn7YC4okzJNivlQJ/Lj5ec8NAfXx+H/ScT+1lYd7e3bAq
q/YETkYT6JI7IfW2D1KDCAxscgfNztQRuCJFN5RYwpc27+6Oh+AfPxuhfJuw/qlEpzwx/OCUyUT+
jmNY38gNrL5KyeINefEB0pz1pGb5XeBR2umQG3jqHRge1o8+dVeBGUMRTH+AvUj8MRkU1vBHcOsw
zyd5PaqJXLtIJHlyG6WcPiuJuHyPkMPsDHudeBW8hM1vpX1j6GyJzDV53XnpBRWFF6R1zkJ3Xea2
jwILtIXAd3VKIhIrFRRpYA+HsNv6D+cekvFsRRP0NeOj78YBwMhyt94XoO/ICCEEqRGDxkkJ1M4i
OIL4NB/vUeqqS13VmrhJh1AD256lGz7vFfudjyK+c6mpsiL4qn+1WDLIx+BiggAUODRpYs7JrcS1
BBR+fNYdznfYnRxUxr9r29JL9bKUrY5ho3knq5lcofKoYzJtNpyQatos4YqKnNsdI2STMtMkPjZO
t4/wsYi0FFKS7Tr+jWqS5pDUjBZ2K9dUqh4/B5cFuKEqO6bxVm9MgXMCt2CpbecP7k0AvZTJW3wk
lugU/Bja1YKDfhWw8hWOxTfZL1iDNaFjiDgrSbN0Qd0ZoD/mICtw6VeaoV3eYYi2SKrRy2ortNQC
DYuOW/SEcikyp/y3P0rdJ0tBnAcfr5LTU4SXg/DjEIYw+0GuNGMpT7Syidsamx3EwxUi+6iOxQn/
BQ2FCQmbqT7TNA8i/OF7lDvHdqFBH6d2IUnEqyehwLRrXxpNFaHOGTWJNIGhn0dSxnl+q9qxDjyf
S5WrjWmqcrub6lPbPLgMYkGSea1sRbGncIDiogzVu8TVoE+5AWgScS26DbGnsEjivux3bzCLrAyk
+aGd4P71WT3lnK7bWnxw+Fqmygwhax1jlSIdQv3NpFn9eIOxbx7Vr0FYjlrioVp89Q0WlJl0Grrx
FK/PtTR6kxgulwv84JeHKBdXO2wESUOlOB1ogNc+J9aP5UzqXpVoscMaWpRIPyif0gLILCbAPfrl
1MVWhCxLWkobVfAftEiDebu1hsEPee1O0dGIMqkAgBBeRY8P1VFn5Mz9FIRte80wZ3Ea6YNd3PJn
vS/zKl+LARsFWSB4ve1gHF8lk4TslnlAXsvEKW2H2PgFp+CAYEM4UPbtpnSwaqLm/HeOVCwVF8Wu
v2TXwA7GC5b76AhHZS/4e6KWUsuRLvlOscVr6CVt1zW88M8KqMcHdekwa84j9oXiusd3VVhAub3C
WfF54E+vbaQsBc9B9vB9dPzq+gLA0IutqkC9ajxYu0pKXQQcC4MaQlbUYxYQ1a0sy2NSZa1FYwjV
4jXwatQThNW054m0KRDCklRtoxjCzJeGGC3A/kXT9zETsKKG5LrRjxpDYIXyfNLNYgAHf3UW04cZ
/y5fXv2pZvmVEfzTvD/bG1NgHizcvuIR6iiAW2J5x6/m94E41kmkD8BqXwBIYuLvFXBa1/hm1fxk
drNzwxTCBdny+aMZiN+vSMX6UyGRjs70wnSDlOkAWB6EYw/79RzFIhCufKAiYRwFMOaKTjZi4oIS
z+qqk6PVh1Wh4YQ95iYouxYWunpdoyi+8Hnb6Eq3TLMMQPZj0+NMUSSfZri6pEGYb95x4ZsVxYE2
JO6bv3a25xKqoOwrGPkU3SF4qiwRNRWm8/0eY9bcddrNEGMBTnmcdhA6kyxkXtybvIXGBJ/k4H8/
ZpeFubBPPaqtZ9792OO7ckbQnUH8fVDTt3ZCxXyIK/COw8I+6oVb8MdqMMazX1ThsDFNLzvr+qSx
A6zW805ZY9JIsWAq7jb0c8MkXyVxqY6AD9fB4axI0hRk0DfGtd4HImo+gszb2tXI4O3YDHwmIeoQ
6D/amfcq42HXA/Nwy7tbRdfE/JLJzrr5VwMHjnkYnG5LI1e2m3dMXxuLFQhMG2B36qOTMAXWX+mE
DnhhguY5J3O132s32tYe0/m8Ymon4J7QrE5gE+O5ErOF6ZDgtQxscJMGfnI068arz/NVw6uAmJfl
BIy6jRUqrrqKBWKXtevB5pZccXopExSBARsgwpCIQwqHBhvDce1rzH0uDccWf6iX+IVdQrMSYgPT
3HQrzdFzUjMIrUFbk/LqKIrbxH+dKZozC7kaz04icO10E5fYpFONPuQkEVMoNYKuxCgHmXwbd5mH
Oxc2o/WFXZz0InpEpTQuS/wE2nj7sEL4BsjKnSR7EjG+m7zJAhfxeIZWJIK9kFby+eqp/JqVifW0
YPlNRSoGTCu8cnRVP9H8j6ZFNNngI7nZ7yvY5jaSqOeHeAWyq+ZtZTFgmlUZjsqRP0/PhtP5pGfu
Vu+1jMOEHnNxfqtYBr3pQp/lGE8rySwDdAkb4pyJ7YjQLcnUVodhfuDDspq0fqUAzadLBrkKvKJ3
l67AaF8iBR/m5ELlP94roZFIUwjztI+844FtKYZ6/TmTm9yrgj+PKzEg/jaelDh7M6Fbi/7kBTfN
zrHMiov80O5CzlPmghxegcxmWotgMcQCKfJuLoyamp/z6WzbbAYmt8h3RD3PVkTW3e3kVfROZouW
AZpQ32yJQNS3A7RyWVgldNtOWgc90Npqb1LU8yQQhlDoGPgSr3y7VFeYjzOqAog+J6BOvggPw0S/
Lpt54bODgjePXcXKWWr4c/ZcMhcHBWr4P1gViBk0o7wSfXMpKpf9H2ZiVeoU5+Qxk2NSoMSFGyFz
8UF0CIWnzB3hmubneysnNrqgPR7nNIkCn/s++zKJc0BZfdEHeeYRpiWieMCUVqoUi6nGkKGHOiWH
PwLMi7oBtUfj+UZ6rfIdaQ+3cPROI3unWuJ7YlPvaTNOzZfoBruZ5UCxBChQ0OW5fKo1WUrh9u80
UXvTwUFr8q0IrtSYqBw4TPeqHLf+lNgK9EOZu2iC+TexVzsPyiWNkSLsoKD8TAWs402GL3bzsMSs
1CSHE7fnz1kSlBzYth1bLehMglQWBZiRBR8HRThjHo6qXklWrVIZBDMwDCtwEkMEKwSBLelX5/WR
flAzEkEMwuhng2VBOaWfsKWSu2cckzinevVa5OtJoED/OG5NQJouOMYRBUiASBEt8JnEBsJFaVjb
Fmtmb5Ezfps/YCO+pD5B1n3517MgtGcGgUfdviuQ9Z9bPVMPfzDDBEB0BY5ev8seJA/xLToY8AXr
3esVvdbTQiCEJeE3ip2iu3I6uqcKl6ITKRHv1PSXna98AU5Nn36G5OD3i305y2yptU6kpXUx/0dJ
a3Fk98cPbhQnXeA6GqaJygy70stB2qNQ4k2ssnsTWWARceUkFSULsxUgZ3oEuS64QsJrL/VrYLGz
k6vPnFKy2yjHIM4Y5ezbD1Au4DyZZyZ/9f4eHpchui7Pp9WM5t1B4Dy5UPqXbshYkCR8pg2TIWk+
5fXvgTvbo9HhchQNvsOvdtLsA0pz6dqbHwZLGAo1j38eROl9LkfhndzDCgdjgh5gqhipwyjc26HQ
YAshRLSIlwLrk9pIgH/UBIP5GgpI6VMcdzg/uwWvT0isGkX4HYUn23Zb/YiBlMxElKdp46eHJmW3
E2cgSlzA79XVBszuKcCFOpZP+2IXRHiVBsB4NHCGDmfN1iI1bQYtQ3AKRCBDYamI92JrOZ8Yf4Ca
HPANmGdfq3K5mYOBrm/iK1pLT/vDn6cbpiJsCkchL0bpHGnjpT2wQLC46IAB3d4Y+dd3FWFgGZtu
Ac4VJDj64nJRY3YG17yhaooguXmIfRUlmSekBZ7GSDWdNbgPtb6ctYqDNZW/32tgs9ZQtumPO15x
3p40eXwI1RC8Fgv95+SvRbWdUbpdsFW7b1ItN9zuS4EibdOq/ijZogsa4hjMmyRVPxpUcK1PH/iJ
iOiI8o1j55quiok7nNFz2QvLSrlqxjCv1zfWUnKr0Ls673ssqrbCKcIsp7KIauqBou+tAQzIuckN
Eu74moZrObRol7lZiEpkEw9Tm0To5/juhEXuLO7rgAtDHx5hBSKV7LnVle1ESPku5zutBnQpncrn
u4eAcPaPW3L8/23jSzjxQzlX2rOh9FQcmdjkOusLorTSGTLgSDrg3oFzJ+Zxb7R4G5szKPzMeLMc
sLkwxHiNsQf0SWRfPD3DUVOf+vaD5fplED4BX6ISZmqes+MM1aM5W2Pl/uH8EWJdqLjnqh+DjMaJ
F5ZGPCF/uRavEWGocx5x9cVtHp5UB29RuJrCfphSqDsh/HFznm/MyiIoIEsllL5aQyf9g11Kj1EQ
MIRM+YqzrA02DVARGcm1leawOSWZb7WqmcGBgIegVfoCkU+IbTXVk8YHKGk8gua7sYU5r5Yn52I0
jcu5h2N9AElEqbZfnCWytJQgBlrhJlBPP1bKYizS43If+9PvKBZegXQe9FmmiuBN/98Zr5Dr7jea
NFlnV1Q2aML2eu7MEqxHhLW12pPnvawz9CGcWTTFh1E2WmfQdZEyD0F8LVH3zOmbmNW/s3mlxTYx
LWO9tlq2YM8IjAGdSyDVZHD1b8yvlU9hdZCzzyy7xl8XgcHLHtUg/7+WqNmOEQxy+kanupci3Qe8
V8czJop/l1COrn/rmGv05YvLECkTuPOEHZWKXw6SeyKwaaGC7bLYr41XmhRwlUZp+4QGk3JRXc7c
vqck0Nu5rAb+t4XWnXInxe9hebV93sF05X+ur7dMCcIYriyKzYIb8CFL01/bSLmQVsdK6UK2P3tX
/AOy7TgnWkCzvbPyguHg+PsJxtl7EDNbl1W+my+bttWRAkUIeFzJLOFQ/WJUKpqyDKwH1qZG3HrM
5NbDB9i5I7gqxhieIoSFk+kwG/Z4kc5+rGUSDmZB2ZuOpmT1bTWeCcXyWc+pHBJWOK+qJQIzDcqh
HQlNGS8oXnqhhSE1cjM2yuHaL5dvEtQHAe7fTF7SLVtnMZBdV5W0J07gU0PiQPk2PWST1WdZ9suW
EGDrbcM9s88epSYryhKO3Zm7BnaFfIPyML8K+op/wPjg1TqGwI7lrNL7bTn5VgswEbQnzni9WZZV
xdC2yNLFbSA9DU6OzlbuNrtRANzkeUXMM/m0krFqKe4xD22csjGInPidEQ6qAfXhZY5NWB/Ex4bi
NVy7Pv31Mb1Vr39VPC8oAmDOfeMuij7A/UnlKpHoCKIAu0PidlY3+nB9cooootnsFDygiTqjE9qy
Dv9lPAzJplTyDNzuYarRcV8SfVwrjJk2qQ9lolWMFG5MmeLImHiMcbtWLF701RnMADyGsYE9wuzM
WqzotjuSu3F7MxGF7VNsokHFBRW0Amjzv3r6tOhLvI2/bFNCfUrmZ2czkI9yNwmVRUt3FxSLI+LE
vyrliodQcW5GOn+MXEcg5y6Oz99XYZ6N4r/wdnNB7Y0hR006JbxvqHq0+J4UWDNjrFw7x1yKwGyt
I8re/Icakn8TF1BtAsCZLAA2wb9sh5w8V4q5/tWm0gO1736W8ymDelnl5NaDDOTudUcVJ03yUrcR
52wbrt7RScEmKw3Mm+G0sjGXsE8ytM7y6ssYSSUuptDe6ddd86SKRXmeDYtw1UBeAl6g3iZpDsnz
aWIXT9YatpmcC8ZPs1f73C3IIM+m7W/z1CaKrwCwStyPKB3XE0foYNLM6fHrylM4jwpaGLVn46u9
181GnbbEWcEHMhKbNDVD016vZO3AwU6aBkGw2FDISky0VsmgzAdS00ox+Qe0bVCrwcVXaJ5raZ/j
gZ8R9sY7yFJzZ+d8kPJnzEBQn7OaJNwkV1ZrTzhCcx2m9+ApEuDDXS/ec4ucvd9NnwlRau80e7BJ
eaOwGS91B5aJ6rd5X1W7pq8M49zhpeUsEzip8QGIMITNYt7SAIwRoAC9tQf0I1UBESz3UY7Yutz2
YZRetslss4O1/BHBwXIDXax984UMfb6mrrCrMqiTMo72U3BwbiIbz3xRq6jqSMutSImTDbud7LmV
j9wEUcpM7uYNhqRzV6MVTVNJztP/aggYt8N26RwDXJSDYTQFbDyw+4IUXMccXJhVl/I9vE2mzA99
CDv5tzWLMiYwlHtTagq4+Og7XFl5w61XeEvcUW3UJ+0mWVA8RX6rFHJBmzpaPum3A5ZRHGiGOivn
vrDJy+OBFsJUne4/doOzz9G9CPQAtBLo2c4Nr1Tz9dT/Z4s+MG5JIjbMIY42gm0PmQjLEeVKQZjh
qz9C7fNjbrwRu/+juBfDds7vlOOlYS2b2ix4DbOdZ/9IS9YGxyMN1W2z4oKS+O5uWXH1O/FuGIPv
ByicYSDdfcntLUi1EjcUEZhUDV/jBQjQjVBfjehESbjKLLwJQylelUFktppcFePNEZijPlKZq9UB
Cme9yyK0/Mi2j4a4F8B1TFO8JXX4z1HXGUWtIn6ghG++W2Nhy1l1mMZXTplEsqBEra6dNuOIsXWY
dXHFT4u8z/lANKRh03vkiPjBnkQmfmxwR180uVTtFhtZNGCVMwPy6koKO9SRvcp79F55/b4UxpQ6
cBMVQkSkzqydDKHTMxkX2ScFLNecpz++BmOVYOs1GrnBgqj2YBvmKaDzvzOxonPV5ee2h3fjD30M
Z6PiV26xhS7jqJzpXytWffm2L5XNRC9EbXT6T0EpD3A1db913Rl+xOat1SdZ+rlQz7NLIf1sE7ba
KDsIlAW/ienS3Y03WPmc5KBzOLN1K1PErP//cruw+w+lb6lz1k8hDhNPCLA8oENj5wi/KzfNId4X
et51TVAllPQRxsJ23ZiG6K7FfEJRdcnXczWUX5QKCZ79BobGSCLa17ledwd2USlwUQH0EJdRewjA
4+novgD3OWqk+szQ5N+RjA7qONPD3IA6QE8W04FZzNxUHvtSJWFmOHt6A8IgjAX8c0UDr2x0mFmm
NVdrKw2GgNxu+9q2xTusMNYDcQ9EW2g3p4yP8sLIt+zhbFkF5YAUTMyi9fjJSQvy5fBoNTNp77r4
5gfLN8zCR8+Z4EDZ6cPnV+zY7bJZ5JCls1FxQDQbmwsj/au35XgLBkpiMMdVpVPUMnbBYJIG2Yij
WwxOMOhPOviAQ2zPVK68uSCeLQz6XQI3womOO+vdGbZreEepZ5E4t0Y0U2rSPtWLw3pgmA9E/+WK
yj+YwyLPHK2f2wGACtdfVykHGe3rmHCFTUhkcEq8Ybi31EZrzdMctOUYHsMqbseYUe4+N1LS7L70
+ELXJpKo+Txx6UJ4+K87K2WyrSEyIEgtQ84Hvw1wYxhkMtfd+KpBgHSmsIGV84FE0gK19FhPIm7h
MpQ/dTnBRoJuFUdGNtT5kBN/+75O5Qxxe+wLZ0BwP6sHuuHghF6v1mQYwbB14vgLrs9q07DGDnLy
GR7rpNjazqKO+0CaxJCOtEpvTIldAc14OJUDD/AkfFL9j7Ft4rMbd9wVnweYNYddi4CYHlNDL2eV
uV6jpvXgW31HE9ZbCSoQoZsS7RmZzqX/EQEoFlAG3eqxpL+LtLWRORH7FZrLK1BZ/XMF1B8iyvwo
JCM0YaXxZ7q351X9CDV6g6a4eUTM04c0JbmZeKEYHMp4DLHwuTzYTJ2EwXIzGaBmEqwWutbnztFX
SkEjuaKp981St44pNXDeDeEsjZKgcTh2EzHidRNPow81swGPP0MfxisKuXUblFC2Fd/sle0I6Z5Z
euPds1Nt6sZfVypZNCTvOIFUlkdX9vl4vpekPy1QPYaDNA7OVaVSB3gs9hhOk0qkd+qTiD9ybQVr
aeSUr+RqU01SiNQba8BE+WiEesGYvvWOKaDclt5290nt8lJ4g4fiTzT7kyNIqM6KxreWksUPsIiX
+Y1HcXZkiSuj9vmmxfz/RL8tJgTCq+NLaKInhZzRZaXSHrrbf2M9Ef2COfDNxBlkbmBG1nWmONw2
DLXPWGS99eu5YAIWrTCpOCPRJViNckWNIP2xY9buu3wgKi3lIA6PlR4yU2cWABbuzQmDD76qDY6+
gxzlE3q0sKsxO/eOsnq/CZFNGP+Toj1Mr3weJMuWNUQ5Ka0UPi/the5l7FI7z4aEKxyMQp5dZTH2
UmXNkBxOwxFXEROES43IV8LstmYSuYC+O7khTynAteENx7HJ+dJ/YglKLFHZs00Y2jVltBwk9jT+
296y67Ota38ot7mCSKIShYFJBrUrkFe6WArV+uebUvWR1vddd34OpDtRHiUcoMYSCDaGRWHo5bpG
WHkhS7sDEySEMpzEUSB9wGAoOkxh7LOgKa0L7L33r7L9w1WpQWcUzsAE+McQABXLX61Mm/TAgwpZ
iS41evC/TxKBlq2JYzpmR1/74KcRr2juaLQO60rDk4wsIH51qMOpheODQNu9kqWyoJvL2pNhAS/A
DIrAtEyB/HPgt9u0edgJC69TFQTPr0FpkSqAihl8BwpIIsE0lMSpSSFGg0xOUKN/9oSa3yFrMmOT
gmqNxnTb9/HiphSnqZEGgZwvVfxDXa+RGjD6ucCqSmd4BgC7rry7to+5kjcgGmOAlfJtb7p+fYQp
s5LDWYtY+rTGVufrTLWk4MRXwWsShQNwO8f19jNohHv+faqQEVLIBRsmft8gOOpEc2QTVof/J3jn
EdC/hH0J3r4khpUDFLjG+jXIlAEvrnJZsfYXS+4fWuuuzc7nu3hovnzWyRMoq/jCitqdPp3kshFv
cpf5R5o1ichGKA3ZApgdRMeWd9SQ2PqHsONPHkIpYuBTO6gTP3MKWXFWgBH4iqgrR9usMUigbaSf
7Fo4XTVE4Y8cQXCRIp+agaY9xLt9KjLq5MNJ/gqv5/w2wO4uXmp7XE17JvxfKOJeXgvNPjMOOIe6
UEEUHsAio/WrjpXsDmB/dCkqDU9FtlXyKtG4Wb/31VUyHP+KflDbhFG2W5zjAZdxeKsX7/HUekrU
lpLUw7ci9KctNBbxHYOEY2dXPIG410zLQeB1XASAuSXDGgOv8Gm13vikkMmClO+kv0lE42arzChk
+JJP3zS5OSzBfMONIekkmUjtUD76aGpbM49DgPxEHAPWrX/rrW/rAldsXtzRTwmxrkQsK/kEIUsf
BFmakXRuy0yMWxBcYua0sUa8w8fpz7yylIjgCkJdA5zMArlUEOSETMB2G65SU0aR2jD8wyLmZQwB
WhIMyVQtEn/dvzbafWyRWgcUa6DcaP78Xd/NAjWbldkzN10bVoOuQ1FBHvhJ48dsmvzFw1K7fi+S
qy1J0SaMOdOr5o7F/yRS5CzRiRCF9P5pN+Os/EreVGlizwk/h9xCjjxsJ6KGR21d0BgUmvgM8pYA
SwR1SScnQuQdeh6oTcxl/VQqslSYhtJt3XFjVhTsMkgNE4XZ9tAIiYzy5apVD2cG+Qed7uxKtGtZ
hwHFm6Iw4sSCyFAzAxx0rYeysp29zXkou/OYZoJU9q2uHwxiQh6biuVnUX/spxid57+nFfvNZA2q
UQKACKukqZLhgK7SdH/Kp2oXMD6MhdEYxVedDZwIBGv/aLWFJtrYr0UU5pxoXHJ3OEvgmOJfjh4Q
YVrAq0Kouvpnu1yLnN+7hAyGf/jOixFGdhsXnBssbONQeGAc6CGNmcPLjkCUP3pCafWjqZ+cOC4j
ncsfJwa7GswJXXnSypvCkrRg+Rin13RL+t687VeA8YiUovGUb9cbByeYPsPyBt0gpEmIFVZWMjkw
QuyTSLbjJHU7GKt62jjvR4aKiqUsbbd0uU/e86pYs+uKE0j7P/vf3DPte0/1b3aQARrcdAJl6IYG
cmab4PQljHPkmlz6ojcKnOzxtEr038qtNziwUfUsCav0kXAt/2tBRTwDiOYWTeqkxOjzuouAsSPl
p6fL9ZKn5/IrLL9gyL9lNKccNeweghjzkVWSEthELa2abg2EZOErUeC1EUn+z7YHmGQilN4XSR96
6dsaEdAEozAy34E2qL8hBgzo3cFQ+zouAWtyv4GgZvPy6Ha2uFmilHmDuYHrcItO+fAaz12NYIWe
zfZ4SptcR4zGF92QMbAR902YgcreGAbMf4grOiYVbxWqTewdX7geuTHRskb48MEt2oUky9D4KdQy
duw+LrNcZnEImYhxQXUUNHTn30/FWksiXPRFA6c6SLBjb+c2WZ4nkTjDVBPZXyDJrQEfuN1nzRnQ
7goWLVmlMU0fII0/gXQLS9OpKnJpfxfTG9gCfSOAlgIEZubIu6WPEdqT6YvNHIJrVaAjG0oNbszc
AneucS+JG01eDj8h0y4/jk/a8G1PM0IRqgOjjCr5AIO2/WRnpJBRZ0WbqxD5smfgLhREs5ZOlsIi
cX1LgtltAAla4Ow+3MlNPRbnqsKlNcUmDTVj2BkNi0bbBWX9TbXPW1IM2/TScyyOXSwGnrwPyIhv
1Ofa/VAG/S51AYXJt9k26qw3NlCgxqkYlmZWBE85wa+s/4KCle7bSVL6SmFSwBWb1L9blYp/PJWl
Mkky3p9t9xvAl+F2Fnoo3JCAAow/Bl+vKxk0zalBjiT7flcWPZgtZ0rnzQkDyU+UtW+5+vFx1LWx
y2zAt4uoINCM8aNg2Wx7G7d/KSC57YppaubfF7vk4nkoJffiKPgZamoeyDo3Fg9qm3rh3oSQ6SO7
i8pcdW3v+/Z5/uEdRiu8SSRB9mAT84aCMNW/1FmL0B2bcXxA3dCBqlmPQBZBNGIYHCiSwGJz/Zlt
vWyfgNJoIhoGTIBniwhadYj+ALOL4zTgTSyiYspE83A2XZmlGWCfh/QIGrykWtj7MZJ4Wu0ZBa6e
f5+cx4FF4SoKc6o/bd5mz1kGNA2pcCD4SNlA1dmrg/u95DMhyzdh0m95Ndi52tnlAhlRu3e1Ad94
+lNALtEOn4/QQW2jXrbhrcPK9DhoBn4wyDdsvJh5o9Njs2s3ki7ndiO7hvtvPMlfi9h6K6r9A3D8
cBGRneWgdV3+PncihtTe66Su2KgApvhHMwDloFQSIdU0Xr9fqI3s7HHIk4FBOdPZO0I4ZVe39pP4
pzO6hoh72NE3zjeGd+YTwlUxu7V4BgmL028lR29dn6VcsYuAaSnEV1jxxvjmQJSqKhe93WvSicYv
ajBybfKI6UwnzWCi8WTRON5+neSaPef3aC1kWVUW21z/1uouwrzaibNwgfRK+x+07WhS74kRS1Wu
7FABUE4/0UBFtme7eAGxNmq4vShwuDdssPDPeUZuljLkLSQBG/2/33hRU/FJGQvQvXhYWHtuOzxo
Tv45HLTxK3HM5yG+5tmXJOzyT9fVQLehkph8qOmk4eJwVQdqb+fE765cf3CnGteFJPn5YMHe7YT/
BW28YpuQLhdXdbysGzSGVGjWIOHc+qCzBvFDqcDDUk9ppUwhsbOxSUtWH2vt+ZWxVk+fkdjr2cxY
FdPx40cuybwS3izKqzFnq3bmpyAh1mTaavV9q6Vj6yUWasuVoreb4fMx/E+U7WwJgPrEIY4uHwNv
nABamchqtQhGE4/i4NsT/jnzx9G2mf8LmVtu8QVCyqxtlcY3bLIyz5Y+zgrTIHSoD55kYzMHCwM3
Q5DlMhPcOhjhXt38lM+3QpHdD4I0uhi6l/ktDtjDsYQktkZ9rOVh/Q4hRmu12sVoVFFj0NO8pgKv
qQFH8RzBR7ff3tGuFlK43r6gked79GBGQxl0KqNXVBYpx9/gpEmBNr1AWVIE8PAqH9iZAvnFJumC
jduv86Ds7eaXIx7hN5BbDawa45PsXPJfZIIJ7L5U3GVz8DkUxQMH3CiP5ttcErGXw1lRnfrjyPyL
MXKGBeRSIpvfG0OmuRgEVgFrpO9ispIKv6DFTilzgKw6KuhgZp15qtZf+k2AZ2vb4dyqRHpFhmxq
LkWKqOgb1Ekid5ee+l9SPZyLDwJtnfMQZiJwybGhxcejMM34659r9WFT2SA9oEDpFPQF1fjvNiRT
/D+i4sqX+lN9DhcB37Nq23qj9oP5j8+MJDoyMStw6W8jjHt42lZld/IcNbe3CUlqOGsW5Jkh2l0c
mzrM0P1hUwcmto8Ty6GuProhKyHnAXCvt+5eAV5j//OBzcm7oyS0pimytJLc4qZmYL1+bjnT6PQz
8oD7C1HRiYIPNvrAfKDbEizm7SYMbsOoO/iTlnqKgDgMItf4D2ntzg2UdW6n+zjOQEef1ZIW0eGB
trqIkwW7ZlR0DyMDpoRgF8z5Oh+VBeCG1bUi91XZvftKNvUC4bpeRacJMBHzil+LspDnvb8R8jO4
XLwPAXryIxdcwbZh710g7GwaqtD7wSPXJvuchHgDB1j8UHDYQ0sLuaG8ZGCpEJcwsrpCq5nLdpsP
nHmJOXrZfyrlyTaKSXzkuGzi7ODwCl96VQwD86BudeuF5XMmp89bj3NYKPzYObcQ2Va4B1vSU1G7
wlxiTE1Bd48J8arghavoIz5aCjJdqIHau+rOx8vvChU1WsX/ppDH8YvZg3Nelni00+A/TWRv7du4
KHilJkSpjFr//OMSyYGKbjZAlNJvpih4/LSA4CVlt/PxNVrwPiT7SjDMunkPID29yt7zWsZsKn7N
fHOAHktHi7L4QPmZ0nY9LGI2Y5Ivgz2+IW3IxjchTxMcOjgOpl7YjkAmRacHKIn/uSmRh4IYjzbu
FZacsYf9X1FMYCiIwuFSPexQ/sU/+7hrq+KS7RjcMGxMFJLIhjr2eUZH1pWvAfQqBwCqyFAFjJQm
wJM2vNeW5a901TRzfJiuSlHaOCcKoYCELnfwrNxVfHmAuZ3Lk5gUCAQOPpbAia1zWQxYy5ynMSmw
66sWiscmtnruapc48+QBAj+cU6kbD1uZkmSSPFYMmrmd4l+1VsVwNVZCFGKZk34b2qwXRgHgZWUt
DaHBqjDlLOek1XGdDTYRgKCFhZHSwr6Z5XIP3xELKvsaFI8vWjqQOjmf7J3ZiJlPVT4ONkMg3lO8
86egnEiDsnLBsSCALBEZgGhqfuVpANmNFG/lEFsU7MfzaunmugccmNzKHdAbkxNKHLHXWurSw3x6
ragFNJANatIysUtlC3kH7ut/yyOlGi6pz6HMR7MLkuhMPDq3TCzWFhQmD17OSzLpyZe1l5xZKHcA
mM96Q9RAqUMvN+3VF/6y6EU0jzXfNW7lzq1ZqCSBM4n+Vcjh1Ba6TPmhsn6dAhI7A/TGc3zagyJR
Uq7FGrsARWn3YMyH8XUP5IfBuhHg8HIiEfjMk6oeGgrjVfJx/fcb7p6v6ghIETCnWJCLgWPIaJqG
k680H+RSnrqRSZh8kqEbVDczUbYrsdg0E+QqbVFIm5zpa9DRELRXONnzd7Fig25oK7ANn5hXcnaI
KrYdIjbo5/uIpzXrrJluMVQaD+17CkMz1OdIegretIiCPSxoEJYuNqY5oCGYfilKGOHn+72a9QkA
+kEesK9Idxhz5joVxPxEFjcpx2aMnG+3kzLz8slt9q5MupFLfPmlSk5Lln06MebINGyYcJwaZ+9X
QTpzolr/Rm2D4qVtusgvbB7ubBQETiQHHlhUYLAzYn/ytSMvjaK7EFT7VElSiDK6xcKFoYYwYJGi
/g1gpMxUZLH8qQ+cjB3w9ICnVW0/k7NdcD6wrpsXU6WeBe3HhkvIyBuSOqC+hvyJ/26K3ahVXw2W
87Sc3nc80wE/rooP5YlCrORkn9ZD1Rtz8ZFOtSdAwsWaF8jKyeEkB5coJ+4nbC/1eX9FJWrH1m9O
9DVfXt81UEqekWCavsdEUqgucmFAVtsxamFaF/VkqFlVV/QKOKC1Sw/tUEwqH3BA1eujntVqbVHq
hRooMU/R3Ig9DACpMI+DmP998Vjc0SBTeGsIy+gJNpUuR7wW7e7j3EddIEAnflGNgOW8ZLneR/p0
9RFNHDOyqCDj+fVfegRh0uNsxBDHLrjWeuy2cCqDZ+vdjNlkSE9rnTWVVUpha2P6xNeAUnfejifh
MxuqFSQ1/7/QFnEgN44jQhJYBqIg+q7SCKrTaSxJr6vy3dM+aWFdIWYhJHh5hLXjN1hTrR8Uv/8+
VHGJ7WeDSOTJk7ZvXK+LyPoPNQCfBvc2vWPDxzyTuHcUDBfgtM7Ff5OlTDtKfHZcVVdB5Rczmxvh
Clhx74GfaJxdkqGVc84heWISo/QhLGFBauqhuNXUzigyeFlbNV7pV34rl8H7z59Z0GDSkN1I++xu
pALsmpAi8xqGOn7Sk/NnbqNvmcSyZY6id2elkpVvl74OpRy/k8ThM7GrYv2eq3HZiuVtyHkyPbT1
4g0cuqqneh9K0c3rLcqRv3DQgS1ShNdpdJZiP7ckCWE7kXHU7Tk0uJpOeuke8ZackZ9QHSr+lZN+
rP0phMF1nfdbztDsbi97+AtXU07UXegMCrjcUtZpE2KQsxE9ujLcuiByTokAgD/rKdvNlylUq9Tr
vx0amKQIpHXrvaQS05aJlOwfgTOaDugG0cOYa1c77tkjtU2ugTiA80Om7/cwJiqRUPBC3riL+p0B
XIPK0+7bFWtyKImp0XF7KqtPUuS/090Xch0xkZ6BwSDUaBlGZoBDj0ZgTx81d1wDCejaX1baKcB4
5AJuSwVmCGHQFPy7w6mgPNU4S+ZuEYuEYuVBAWCwN1yuWJ0l64qOsC/1w+moCn7r9mXxJjXRrq8n
QmWpF6zt1JV+hEqzpeUyRP2JXH2RmRLyDGT48w+MZJt6GZ2jpUGQDTW2kwQ6GBBrgfGi2/SEKawD
BeuwLYrbthcn/PRbPTMRSz1CCee8iWkBc97nFv7rP2LwUkKcYzKT1d/GcRCAEbbJcJ0T1V34nZxr
INu+ViCanjgI4Uq2MeGbfgWmBPIr5svChbtYeXMF8ybaUZY9JVCismTS3bNcqW8vDi9z7PgC1Bgo
5wYD+vChoL1J3LHKRmzPgsz8yEx85xJmcIl2d5CJIAEJoo6x6FDYcF85Nik8o9Ykm+uTLE+hGzjw
724cxlqO69JlZINCxeXWvZuLBZpdXtQYZeh9QqKQQIXQbrD/Y9MDOVy/nMFbuX9bHgtpb6JGqOYZ
c3WSbVpO8nrxo74LObdjXFuJwLxieOlwUc77d9NL9XrxHTElEZOnp5jonnKmYQ9l6p8gl/wmgfme
7eC7mKcJhEVVW9sM8fgjqR1JSXasN8h9xZUf/uZzQhwGBjVWI89TQNg7RoolhFQL1KYppAyIzmWD
Iv92xOI2V4FMeQMYKdqFM12NXU1o1SX7oJUei/07TXF1un0A9WkIod+2eknIkGgMw39qcbhhqDU1
whkXreKgFi3tLjpi/ih5snfy269Hg662JbNsviyFG28GdpzberBjr0NBwphGsIWCwvuuMR57n23W
NcFX/+9Nw9q5fnuivjdQNW30r0cEqcIeLEvX3+ZFh9cft44rVwAhIniUEWUEIgoZMuUvhLBXcL/p
9XQ2cjFQk8QpH3NrdoCkNe1JkW6GQoWDrEuBbufDTWqcfiAC5zmAnpKRgtGRGBuxeWPOto6gNk3t
3FmrwSzeSHV+OPCLGjjB6g0hUTyXwRdh5/kuCQxwnqidPmaeNc/Kz+dACXjqrSF+RWhuCgCNSIpQ
ywdKrTlT/CS2QFo8TYuD/QOn5JIWnrW/SArwG/lXqqLt/DtVUFFYlAcL3bbKeSc0QTJGCyXxlqSa
V/wpa/79AfYBZ8lnxTOnyRkHPYiWELFIy2qQ7Nz+yBxtrKWXLmW7vfJ1dFVACLQ0d2QWfJs++ft9
LLdxk6rjYi5kUyGp1N7gEvsP97toHbZKBtozInM5XJ/JlPT+Iqv14cvych/axoUdMop0KK3va13f
DYZEV4NUUi827C0u37Ws7LboM3pa66uwX6I+sqi9xcOMNO/ojmjZbyCfDBfQLRSDN4FH2C5g+ipi
Q/E2egLJL3KRx+/Rs6UdklK4p3LCBo9SuJgHar5yTcLAw3KP6NVNZcZroadxFvgka06ac5Njz3k/
zBYpkZnYWm+jp43OSkkwd1oa7An2X7RaZ2jMeADFXVZ4afnZLCtvfuQbEKTm3wfPiDrN2VxW6qfD
MyMbNCLBZS1tRsxAInSWSjzvnu5D4JT3VbeV0AND+CVeSZ1C+vjIyeTyJbN++FMYm1GwE3A/9Vdd
5FlSdwMNh25vNL6PnuahJKwE3v5M+IiJsxI51ixryc2rNQItHBE4DWKDk8HAaezFyzT/RvAwrWEF
NtlQoaFWsd3hj0M7rpTbfgnKpMvGEkd6tEvAHC1xyHWoXFGhr+V0L6e+Pz9CPZF7uf0y3noET5HG
zjreI9aQGYi/CQsBH8VL2/eIR4OhqK0MhBqOReGNSzxdJk3SRYmZQiND+1dh27kb6egqApb+2OPZ
WExCgYNSmhXc2FrUsx/eBtcFsbA+hlyNPq5BQkoOBFT43rmZvyKTHTeZSSXjPpPUDj/BCsI4v1d+
bp8Xg+qKhO/LTo4ty1rNQK+nffgomhwPYqFzsHwm/AEoBM9exQxyejf2WKgPt6ujNhIEoSqEYv4J
St1YC6cxGnjnmGF6hvycgJ3pGvW+/ssC22QtGmCyPfSU+YN0rTaVFxiaNnL0yy5K3GpEi3MDJcIl
W3SFLO4bRirGj1jH7DCA4NnlU9TW+hQ9yroATqdw7EthIt8Z4Bf6PDHqgjr71Lc8v3mhQspkKeCn
xLGjSaxd95FJ+z3VToFsh2KeZkK7g7ToPoH668I+rlEL9h1P1raEkYnbDFDSIA2E8frA3XeC9LQj
qhUPzerrB437r2O7sOPLcD6j2jRJj3W50Icnn320b6VfYFPGqP2aGZXZ4PiSEFZaQlQnJ1/1EZBU
t/1bJjOKFIv7LLXRiXz2btbdPBgya8dyOwBDFhyYMCtIifrKBjAXRtKrNzc+2hCXnRI3IMB4plr4
Ps90j4bo32wzemupNDnnCrXNu1SIzhFbCLm52eHV+x9voletu1k0JKWATK6NcqLfLJpr6mGWZPbb
392DQW5Zo60qRaD5OzI4hp2ldwVvZjuUUz9IezABhkxDyfSPF8tNTRYAvz9VF5GkUjcV62bHt60c
P1Iev4xwNInlS+BMnGUbqMt0pmppBoxdoCrnx1EdWLps3rGFMmXRAKy6ytK5jMKUrMjUZw5EcWz/
vscKcybWGFtWm1kTFfH7XhWVMvB+RX77EKYsveuNnVucqEKHNLh0PBgOJHOOFnJjhQNGBujM/p0m
3sMH4KmZ6tdgZgrb1bBLiZEoBshfN8iRgoP4gTCyLHT2yn10v9Vn5jVzNhpX5iuNO9/kYC8BpcIt
civRAIY4ajFRWK8b4B3+HbMFVc1DBSY6PU11/LaI2H19Ez63r7OxAI0MWa0E3HBA1Y1/RQfE+T5i
FAUuDdrPOayLbt0gfmjHqIywwM2mEDMlNb006g0I0blxEafMaG8oWcsB0DcixmDc/WNmsos7P1oc
LPAZz5zAQm/KBXbuA2fpa9oSsEMSH4o/VGxDTsAw3ZbPrYySx8mcQjAd/81vBQddnHoKIWTdhpHi
13L/IjtVR06khwAEh3no5ph/KMgbLSO59QwU+/+M4ADW81ga86NSfNz2sj96+73BeoZWxbvEyNgo
TzxG4pMsNDxWjiXtMac6lArsUuHQ0zG7bY9GRXt8VBamnVnXAvB15RMqzsqxvwZOZYqfJ9Tzref9
8EvATDI/+qyoYC+9ii42AZ3n9nw3lj1MIOGw3fi5Dbtf2qlnSZmWvsZqUXAWDVOvkf2eRkLxY0RQ
FzcMg4hxFqO/+9mCrutV7NBPq09XUvJfvj5mzdBZSrNLzehuB/Lp6rpKfxd0+dvxdSx6xwS/ruz6
9LwX0RHzvd4MyrDhAQV4Mmpe2l+aBuvlVD6R2ZNACdShrvsCbdlkOvS9n3Yku9sc7FnMbvSVu97O
UHy2s3HkxZeTLMZkh8L92CIOvuQFwx15aSO5ux63va1K17ASLOwI/1oLjR7BZYj+DgR3owqaZ1NQ
U3c+EaZYmKnYnv/TPV4JiTn3sXL65OEBsiJw94MhQOlmJ/F509GosVcrBn2b0FYJw5KpAli8C6NP
seloOs6JHU/1fdaOFGcks5azq/HNaAfook7lTyG+qnc7c75t/v+5u5e0PzC1YNeFZF3VYKwHyxT2
lPzRQMIBsCLKLVBx8FhH5pyKl/K41p5qUtcsfk+usn37UNRscDZjjJJh8txe1vS66I0y1xYg1p9Q
1KLrFU+ZVzN0jXL0g55+YiHTFC+925Sw7Z8BUa7TiANcoc3iHmzqMCGYZCNZ0IX9agRyVqkvHooZ
vCL+tBUE7oQuH/GYI8tdje2i1QNAY8vZK/rvfel1dJttuC7Q3fzW/4DUut2SLwvKsvtcfiU+Qncw
kOGt5iw9h6kJzqPLEGVnLzWK9rpwNqDu6GU+sF2rd/5U0WR7aP9FiBMUj4A24q/J/Szz09RVaoW6
ZCXXv6UoWTQnmH/I6XcD+KYS1Dgi2Pu+MtR9G50d+4+vcXbZ1eZNmZOr6wLPlFNdmTZZVcc8zDLB
mqgci+QoBg89Qdg0t1gJwqJRLyh3Wn2gBQhfudypPOhvduGtXYVm6qW/gKXVKYBm97CCzBCKogdO
yx6Dk1GJsqNfJWVO66kpTAog4uEafMJ+utWSuh3OwC/mSsthvwFrJxHdT7b//JCiDDu7ED9AmUXz
RkQPnHC7VxfIfTNfhLeXs22Sr1m/Y5ZBFU0pRuPeY/5pn6bNrNgtouseyrDAw2UNZ6CMfBp8maox
u2qhKtfJLgzoWKcFeq0TnhHOowTL3GG5Mh8/qZ+63shVWZOCQaVMH/en/v2HMqjK4rxr++dFd8Dl
6HfOKTgiCqswtEK2DyEVRk47xz0ZuqvcsawTAA1qNP6l7DG6zYQgxxdYr0t1bs13s8/Zdf3lDpod
EwKfi2U00CxEYFplowqNjqSUX9EpbxvtxFOXXPz773vLUOcHGwEtyvIt1Xv4TZ2xv9goEsRlDEHH
6s0AA4VKpAl1q7l5wr9Qxedm+7ufXgzfkZnSyUrT5vdjirn3+5OFZWw4Hkas6xXqmOKPcALI1zue
4wMoL3aV9dtRZ1h0FQoo29AnxFMnqA+weTFJ3a7V6nAA9BNjdhtbGBrQ27W+MpW5385IO0+hwhWm
eBNqdx5yKdhHvd3Du+rKPjzj9oURbfSDvx7xFtXK53rpiXkGkjtgjZDUGSLgbGslcEOS6UNOmZ/o
5P9Hyil9DFfHbZMs2AWcvppBC52mihSqnJaWhMkv7WoYCufEf3uE+833DRYBQlCahAr/O6ZFTmpX
vApxePltL4KSOQZUDmnnBP2vmUTQzcCz8tgHria8O2JDHyGCXrXVvh49tsfFFaGqELk25axYq9N7
nmpRSONNvTotUVQ0KsANJ8Z79dRTug24T/47cxpSjjTW2oxr8kJgtpxP4d+2AO7gsEZSJn4J07VV
eJUCHx6s1cdOqXS8qB+utLeASrcW2XHpEnreiyyNNoy/PjgJn8zez6xe5gSs3cngo670sRgZZIjl
Z66T88SCZ3+XJtoqJc1bcFcf26Dt/qSzz8VtUuRhuZg+CsGkeU5raHJ/zAcIEX9yxsMog5IIkInz
/nByFAAQ1GeKNKICo8Qy8H1CmnhLwFlawyRV4mhxssp/7N8rVjTjDo8/c7Yk+8iKU/j7pRjDnD/t
k0Jp+6B20BCZM74PexlsqQR7K6BsNQKUdzqS8nSZcoUFB9z7uXPRnRn+kPC+yk73xu++dwGpZ55/
OmGlOGQccGRPMJG095n1Nb4xSuu6w8GJP59LddCzefaAhhyXRuvIWh5YgIYOelO0JNXZCgnFIKbp
hhlwsdE+dSPF4J4RAiTzQbL+R9jhotZwocfZ1Pa0SxUd1Xp1ayQeeKma3qTY/Ok47HhYnABDP5z0
cjuCjYYiTcMeV1tHhF79v8rwoCETdELm631Q3ayynxhpyg9hc9GcO2hwvdI26iH8WDLqn6HNy20h
RjzjhlCXWaixeOPwJR55qVGhBWsiwp6XxVBBLKchrSHzrNmiBqr0QloHrEF6ZDzBodOsTlrOE7WJ
Ho0iwLNuaILdAZGwZbe2HQyOJ4Sqd0f0PRmKEGbWhJAWkj5LrK5EQ2N5jIelQndMPJSvim/GB17b
5StCHU2Bi6ljOsjF0OAvklPhUJOdKg46cZhZoY6jvRRn1mRZesULwiuf7z8X2Ec7gzfQLw6JD6dK
A86bz2pE4KfDgTZyjCcpuvIL49tditfPrKghj6qoY3piLUWR3S0/NZV8nsSyOgK6Kz7Oj7X7mBn3
n95J0ziVifyZv3p7SxV9lgSQ5HE2lOfb5tS4U2OsEUyu3khGMlFM4PQZV8wL8lVL4piXG7p894T6
0xvtW3mmijPRe8f/O+p46PCM1dz5Fx3ywX2jAhY6UEZcsgzY/vCBjzRtxT9/hUEibQIT/UQjZX7j
54AsWnDm1/EK+f+EncOg8oQ1R6AdABCIpD04UpgTz1QfhYhwOIVLU1/FkjigriWtDEoHJFAKIDFS
44Q1WzaplP54ZiKQqP8p1b09HL53bzZbUwd81smo97htQ/P7prqiRTE2s8VHZ6GjUp2GAZ5mMBy4
JlzJirl11QxJmkYZj6RFsdMZNAm+BuWvx9SBs3hNLFMd8gcZNN8nQuua7H8Dng4AmyLJvqzRQb0U
KP46nvpT8BlfDVDJNDoI6SyLKXf9G/PZy1UshXcMB39KTazDvlh783aIiyYtReBtvb/q5VqH9bm0
SH0z0mUsroEJjpsb6LqOd+rfDKE5ns18+Ujna2L9BwKi1XziSNl2+8kPzZ2V9NSjfWnEI3CH9ccp
RHbV5UusFOI6rj02Lz1fZEutK5ZzpRtVa76buEtOG1SShEvaMhsBxdtZQfki7pyPtnxhbx3w8Lh6
3j/RRZY3A+xmeaBYSPaig7efhmcRde9odcXAXa+WsgVMGzFKqb1sHOfkAL0dQLRyVaAfzcqhbJtN
E57hSKi5vNUkigiDhrIW83jknRI0b2yiovQOVkJHvHeerx7fEwP+eehfxCOZWGtGbE6JwmO0mxbQ
8wusIRpl52PA48kIgYE92SvCjLAZhPrnT0l9E0HEeXmW9P2Wk8NsyC7L5oAQzdpvRpCnnH77wdCA
QxGHB1/FQrhvBm3shLAFS2QMQfgi8b6eWXhQBynyf1Z5VEO6YMcXyb7FJZrjErTbCdCqmKXtUA7w
wuzm0RvHsnzksYXDgDYFHWS7iaHaaJpboQzRnfdMToxZkw6CfZzwNiPGF2CJKEEZ228ImFqJzoia
RpfQyqBq1xfjK6ELqGFO9W0qr0Ak3+2g7SfZ2W7SavtVqoOmX4fJZijbANEI6x0oZc9vdmL/Wewp
VEyjT8PCazoBNT8HtDq7j91/VHhWM1t80DS3go3Rxq1AppJ3rCyC2DIW+ZJzIzrK2qmDuJ2tRYaY
/QKn3c0We11UZy5/+QBGeJzB4MuvQlB2j3c6sb/2TS9x7Urm07qLvWm9u9gXZitbYGlHMRQtxRIt
yTjRVB/ZAdO9iLHOCjvybfhusDmmg0EhNjONoZCYfgcRERplGHTgGf+4nXTbfcb3h3f670abxMeZ
CMwRWD5F6Hb2HjJP0QnFAxmB6+2GviJ11uyVTndeBW52o/VtaxX1beM0CHgiuKnH+tMKFLoGZc+c
4vTJYWjRsbeqDT3CUcygKu+5aaj5qxvIRZapdRKNefgauTlt7sl/95W8p1vy7QRuRHcUsLZ1RAdp
z0BAQaFueNN8jtmoy4lskLXK4JWtX8/kDZPVxezgoc+qlcdZRgXhBEbPWximLAatlIotEyHDTfTw
2YM45qJcyJT/OVZ9MpYR48VW6IVjdJNzW1fnCyiUeZoLmXpOHhT/Zwxa6iCFTpxv9A2nACuVtEO/
CFZomqnlwA9/659VABtQtbjM+Wz0ZWnsCHWk2GTiCmFUQO3xk31xr9phBWX2Oivnl4LAl2NxbfJN
GzyGG9rkhmv00gFIrCmq0gBedAFIBGBUUXK0UyzC2xD8UTt62DXKCDPNoQUQB0z5OGMkW18zCiz1
0zWVUvkaWdopE91dlITzGKmZS3q8THVWIKhi2YF2qEZA5OJc9HhSGGzjk9WPxrXsqvnKqaiEYXhm
0Tezg/E1F3kJ85jwq9/zarPzyY3dULwaUI3z8OF3XBHDJFv8GqAkskIC7sTBuPDRry1xPevTUEYz
1UNcFz6i3bcxOxI4Ils2GbP3x4sPD43dWxn3upgXJbcm6RV/egWpFXacvCuvq+Gs7cAhGdB6p0KF
9yjA/aVmdvot/Cs1znMNK3Ajk9AVWdm9ndcsxnQVjJYR7QV+l2AzuVdtGy7gboGOPdbalvimmltB
BaRg7X/3uzc66gnKM2jqzHyf3ZAMTStQ/vIucrociy4YJZXqjJkvkQyGyYtU7T2YbRgqQS9uxQ7F
SNv3tN9dRILuUpNOUIUqm+/FjHG7DAgT45ss7lEeY+3ff7xLfLodP9aH+AdE5Bi0T/G+ma/CCr/f
F2J6nUuEN6DZjocYUw2KfKi8iMowq6rU80DqMBVpaTrZCqj+4+xcQYdztFIIJXpssSKGMK6iibjL
xmCcawlqGMccb/wDdiYYDtfmMkXlgfati9/d+7QBfuboL9jFfisD7jMmtN4UVMvWzFcoIyv2XqYQ
Or58JSdqxGjEnQ5BKWi0mvjm8qE+jbgHQJ7TIeNWCoqUvVQyBWOR4QVNCGTsA6FF9KOGLN9Wemvh
g6hz65bXF/0DHclv80uFh8yYVcT5NDY2XLKBgXfPzGxiUnekU+NmKOQJcqVEngpTPOcMti45p48I
+tRbNmoTtceLSHXCvRrzDmI3IGqT+3n7h1EkYWHpgzLsju6+rRvFivxyP3UoZmmby91/SYWAtqr9
oHPkLdULZMjyiJe3X8Lw2H+Sgij1q7E1/kmgxeGuwlGNnWax9wdlqauXdeez3AWGmcMd0K1jLY0O
eCFQvwyar9I5/Ab1JjKtAlN1CiY5RDl0FeajTbG3cMGxBPjNH40jC57jXVfIkbSEKhHXyizgzYnV
SRPEIel6Ghmxj993RcVoG8uoHSxa8cERH3EvAQgiyr7hwNJvnEPI+sDMvGnnnNO+FX6ALJ6ApAJY
6bVMspN6OqjQSZ5070uqJymlviNY0fr3LS9cUDyiDgjN0/M81IU9p2jsUkYOxylucGoKcKjrOenu
qE6u5Wp8IMi3PphpVaH3Wi5d8rOYLfQ4eAEpiR9vPTvmkAeLNgsaDcYuzzCl3bBhyf/qLdoDwzQf
Gg3GOkX1MI4WjUEc87AsMSq/fEV8UvCsimS+8jTS5gkBML6QN31tzEh/OTkWl5i1vzk6GG1fy8CB
dFuPpiwYR1vfN4FBQkLATj01Fv0OJGBr0eqXw5/bDa7f83mwLz+/ynEtf9m2Fo1OyeyR0nRfpqG8
04RSe3Zz3/2AfCj2kPzWTXuSdOMoCVW7abIQvTWH3f9WDOwXvRGeEJzFftCmwaJyYkpp+IoSuox6
eyySAeHjzSAl0y73kiVvBCZqj9Z5GUERIJAKWO5FlAubLv5pJs3t2bQnHZtySswerqlWtbyEl+16
rni1i9Y/kB/tFfN1Zu4IlA9pHXtS+q8zsNoGJUtWMR+wmo26By66dfDALrwhj8R/KfoKS+3IBkTr
L6o+GUtLGVV0n3PxY15oDjqBv9SS2uySOpZqTjwA8LM2PoRzqfgHlYkNj6arMXsW3fZz0X3AHN2L
q7OtLTegoFo5hF/TXsd2kRS7GyMnKbMmdn/a7NajUmxjELXkKg2hj3tYhHIu1ej5iZz9MFt7WxGp
ImLC0WwV9FLR+7ZQDD3E+UyEmyiEtGouIZqtep7hymjjr+5OYgyPATgEuR4DQLAEwrCBBVlcfJjN
7u9rTrUbM0jxsHHaMnRtpMo0sd+swxAA6glYtqTH2lFbGmhYQSMuscZuY6JH+AseX6Wolf1BfVkG
sGxE1O5gyoBrhpdmZDzYvx5OYbxYXbyWhooZsvZtkxZcf4GbsUMsDW9rj8odOoWdUI+OjrptQVpx
0Y/LoibNAoO/hYd/+SB0KKNucyMMXN6tdakmebLb8z50sif0cLQ/fww1bcjnKGxYVAuGshFIrVGL
0KMF7yywxILOLpXY436AV2vD/qx2VBlm/ToGfvkoghN9GXgpdE6OdUk/1mtjFRgL81lvSPyzqzsk
p79P2tkMy+IEOU9X24wR1SyQX17XSwhIAWP3NJR8lbu0otzP2Hfh+bAAm9JoWRimisNlimAMu9WN
hN4813GHAoqVcyf94atbAct/nc6J8YUP+SxL5lV3UdPVL1P+6fz8w8wBn8wqXQSxVi+xbYhZ19M6
KRFMPU3PitF982dTsJEbYeoSK4gyEa2BCPD5oVlgWjo+Q3Fsyzco6EfcxIo+esXbIBL19ixDtG2N
KXsdTNWK1Asyy+Mj1P5cdHp4xFaL1BVMecIYfDVRCbghwndIe/EMs8N3d2YogaJeWOh7H4zeowrP
Pro4/Pphq1CGm0MW36xsa9RNUct+ln274/ezsPQG2UyQwushcYZhNLgbidfM2inTxMTv+vkjNzvN
4vLRoq9cVD80nExCEmhjqzLmdbEhq7W1426rlr097K7U5GQsf02PgVSJ6/+cA9UtIz6IP2CuXXmj
M1VacCuqtNogAJSrFuGdShmie5SAkmpJ9/FNUCaMeraTXk9UEqf/VhRg8XGDGmpPhPE+leRi06U7
/b4dvO7yRgRavYHfX5YjAfGvZsp5kxNdAm7UiekVoN1zxp9a3qXQnkYolsh3jV0+xnDkr+MdkkHT
hFetvV95H7b9G+9Vv2QF+yvU+QmRraDFT92tS+6EUVEoAzyumtgumLu0pBfk6KJ4HrQx2CVKm659
bn5iZ+9fNfOB0ArjM/L3LB8uVAX5MAg/5lw7Ov+v6W/lba7d3huovqKKmb2mhMTmtuiHvIsOLQ+D
Mpr/NIZbqZV9mZtwJxqWpoFOvRu/mabdh0DbkP7EleuRKN3d7aXXc1BolariImwcKQmU0GC/C5Bx
rtNYgX28X3VobDb0bS2j4/c8S368e5rDIv+05z9TnPd3YNDa8CBGsgoUqCFuzgu/LgaxEMdB9Boh
kHYFrtdOBZXjz1hBim2vmAd/RIVVcaxljAz0Uj+bJG92BB/sr6APsgq4w1ECnWDhr+2jzpJkXpq/
O5pQCvulBwlZEm5WBKXTzieDZiLuYOk8ITDumsENHP9iBvgfPlTgo8h3r9v2aw9RDo49pHoWl+GJ
hWpvHFR34H8as2ks2oXzqMTztiDI2z88GS9nMPol8m849skuFmd5I3yHQ/Yteuuu21ZOsS4Sn3FU
6RW6ATYTE8h5Z1EcAMnGBOH75eXTIjoHFZCN6IzaGfvMN5t0xQIynx7AazXnHlwL5yk8YuZls7Vn
ws1J3VU4ZopUSUIaoTnVFKrFQ+9WmH+JBsDdbs9j7yoXB3pow1srT7PvlsBLO/VOm3Ps5U+MXTCb
tSsFzWLbVV5wMfaPiPT1+WoWohsOxLI/fMEzd7w5IfkdlzaW+PXq2QObfQcUYyvElmoV2s9O/rNl
9X8QiyPfPvDgqBlcEx9+4T5CqGvn7kLfHnvVGnsPGOSm16ye5FUTwMRLGxrIRBcy/XTRDts/AbpS
7trkfvnwLq1QWpbnDtESe25ctGY642ES6aRSOgKbLqNMyA/rum62aQDwGtK05u4g5CTvpLP4n45E
TTQUlo9D/1qATbtuW9e3fFCxEzN2uZMh5OQIYSQtwZpZ2qH9HR+kGc4p2UTwoFEx26B+5riunHHU
kq6SMCXeqG7BPia08+A874ausi5ute378QypzPRNqICa+mcesPFm1bNwzrqeba9Jz2Cfmt0Szsab
mX7dI/tZKkS5NoyhEwnMEmLM/0/JyVMuoxJFZM9zeOkq0J46/vW2/GcnHws4GLewTtymgUhrx2Q4
XDCTMT6+PLJzuoLpWdDOiKq40Ku3vlye784AVByYZKC/DKx4WkOjqB+/dxILMyjJU8DklGSiYBcJ
2x2mI274SDrgHsi51/zL0gnh4HeGmTg/+X38R9f0kTvddJS/bfLPK0oaxc2rVI+DXs4Rv1P8GCsL
rxNn/SPzULHIu63tLGpt3zwCvsK55IyLQyWm4JQakv3O/134HtBCqoNzI8+yaxEJh7iokNn9M54z
fofnCyzjeEVXM+L8Scb69qu/P9rkOfIFoE8vIVUWHSjTc9jyTcTi8E3SF0NvGglvWDoxOXxilIC6
nlsEUN8hCpP9iLI0KHgE7GffLFh1BT0ioXl4cmcJbWI63JdXOu8TRHJ0utgVB4PHrxxv3hSDTJj4
NF6bauLCLDVhXqYyoMZYY1azYGlb3YL4Pv8iSY0xEg37QRlTaLMU1mpDTIlNLOEM/0+d8amuf/Fm
gUfFNnKVxVoZGSerD9l5WSGqw/s7mlLDF6C1Z4Xnlv2KNziwXtM38yOxUxNhclyK3l+r52z39r7H
N0MvIp6VT/AHBeaDDenlZ5RH6pysCq09QjcPkSrEtn4MvHEElCygiNVhG+FrC1Jltk1m/8MBomwI
s58zeTzYOrcuPhlbCrfY/l8mwVaGFtCyhdI5+A9HuKqKebqOiVUskZ4XiBCHYU/YiDV/E05wX/Uk
WHGynTLBy9KuvnXXyMBkyNz/iES1mG5zqiGx07G6LlE0W+7ay/mu4U9SFXzcfzu3U9FxaanOrYw7
I8iQzIBQnoiJdgLsCv4ZRm3DAjyBwI4QLfGxA0ZcFFnwRsyzl/c1RAABUY4RMSpikI9qcOPU58UD
lyNlIgF+uzuVKqJPvAL4zivHQ9XLMoxzRROOakx8tpbFPe/RnoDX9wxjNd3jgNtWXar3jkcDiBsH
GFac2Gbz0uizN9Ky7lhA4AmUm0tfHnS5xYy8ccGTFnY7MtohVyOQD9z2RyGxoGtKH/8jJu+UJzik
5w9WOv3wpgUjHTJEYtqvuasOnHTGBt9w8bzRD+B4zTz+gFbWnTK2lSMNuF4xHiiTTEotLPbaIdQs
DysQ4i0gUkuAig6q+C9qG8OVXnEw0eRNotaZxw/s1VlzExGDZ6JGpnxveXy3kKRC3yIJp96LIW2Q
mnkuWIIJO7ABSlTU4uu1xzPjELp03SforjQfM/pw0BLbm2ZZwlY5McqpzRGU3lVfzeVAToMNi5O6
RCkZ5ZNx58ZU6vIZpY71QynN4AbWad4FdORmCKdmQNeitBwxa/76tDajppDW52gGx98HFjbBteWP
BWVgDQahYKiume2+i1cWdpXT90BWaDxEQkzXZXWKf/39x+rerW3/L19OhXtpziboyenjDDn5aGH+
wdi1h8yREnSjTr/Bqy2aq6y6771IcUhAXJXAC1sGUtuCwa+cAXRZI8/VHEBqHjtgvt+lypnIYa3y
u5tVI25iaSLUkQ366TVffXKkOECOdtN6o+d/ObMa/kVrltrvfLUZYqiXV663j0OEvgkzZiu85Z+E
kpWGJPLtVLti5qbS79NkmzOdeOiEtJ51EYoZzNUFwKKg/tU0ksxVunVha10xFCLSurS0qLGtQa6O
yl25l8wxBHlNuxrOPaPfvdJMoJpVim8gjMpppw7wQp4daTNIRNM8irhuUIH22PDr4VZzIj1Ms1wX
PlDQH9RVOs+YNLDNAovKrs8TWW8QghavGtOLnhcoNSxbP2M8BP90rH196DXzVEUSHJhtqH+LzUqb
mIKVd60iNTvfz2/t0eOsAbSp4igcX6SlO+deDByZei10VUYTFxmQF5IvL4jvyErbjzDkCWeSSYMm
0X5SCYav9V56Dxuq9TDoMZi47DqTqfI65HCoo9NpKIGefp2slYJ/KfUlXi30Cgt7AGXvIc+z0bvl
rhdXPfeyuiz7vKq5sQPhW2Blw3IKh1QWUiXvgnMLfXm4GRiSt1OUF/RVdEKBkzakrxUVxNjRqoyx
s4MELhnTwWa0/MOu7jrwa8bOEvFOzmq6V6WKN5V8T37+d/IPYebcxtXD4Tl1DBwpOkEiLfzuec7Y
XcUXaLTMtZOxal/11uQ0wktuJU8fsJcbBWr3xV+963v//N0OtLvjeNMOhpcdr/KeOhfiop9rjL7f
VNf4MiC/x/hVWkaR7o+B62Sh95RL/DostMzVjzWhnOFVxTJHGVDweEz7RQU5YXXLSAwgZfAKTet1
yRSwfDzx3A63SnznQrQAqw/SbM/vfQONC5rqx2dQXQdJgTwGdh/E6TslNhH8AOyueV1yqovjFDf6
A6YAxwf17jbJ22hnXscfycIN5xh1/OWE2I/V0xEQ5Pcn+1LuSo9YiA27Pf2ZnqN6dYjcjPcAqDy0
s7iMcusO46X6kSX0f12ja/6HSoPVxXBzienr+ZP6OPPAO5fbV8vL591OpuWSMLyYmxRC1Lg1qLY5
nF784XFWjUM0KPEfWsRRboJ/Xfcvnz4XDnYUT4kTLLCaxkYBEK8kvWQlmzP7vPuQuH7EwfcEqbjf
cYxlj/Sy/IdDM/2jpVbqWLZU8wWicfS/9jD2LeCP6tuREienXJmcbjk5QV+AlHwKPCpvIHMTKrNE
B3Nx9+u/dA/KEw2XMKZ9/OCgwCki8RGIwy3C7kfJhSJRj3PQjysB5sVtaQB1zHxhj+NeUZWN3OOF
El/Cxl0svI+t+ijh54BulAnTdXNJVVBLWo+C/mrOE4Zz6kKP7Hv+GI+i60lU3EK1+H3VIcgyyb+e
EI/qbuNqoRKqwci0aRXlUZ0Hu/3JANIyLcM1nTm8gSeu2xU7A50DIVhotXyNQYRxTnEkwxPFbI+Z
y0o4XyFITpI0cH+nLIfhjeds49I15ChNqAlbmPlM9llCgbkAn8xxMHhE5nxX/+ZEZFUJguKvCqhA
rfAQOOGqYpEZxML1sd7wNWQpX8DQ0rRZuLcXYE/np2NY0bmv137jmExrku0FbMs5R2BnpkaeJWaJ
SuncvvXIdw8G6Apn+8BnI2Oh54i+d88gw+j51eVrspe1m6QneDW7pbNcAoozwyv5iNF6TM11qdAZ
EB4fZBkSynnQodRBSmrkNkAsqFfLT7di1kf8wv+Fe/vx9Zarqg3m65Q91cXbe9qxd8bvA18+JYqT
kRylyqpO1FRb/EAu7WPBY7IGtOGU5KVE3iwawlSO7/gG88SWXvZVjR56jdjwQzCFNKA3tP8fAk1N
CNCazWvXit6tTBmT9rKSmqLmA1QjS818G8KoXZGOliLDqTwCqDLaVk4/G2zZYdJkSlFvN70DG4Z4
rZzmEIQOSgX4wzPOcFvDinXWNLr+eVz12nrkcYZ314ftrjK4yCOoUNJ6qXtEqc0OD8BZN2stYWJt
BmYVxBiPH47hAoa1v6F2YdyraXMrFfkqnNnYs5PDZbhJtKr9Cchw8p8pBXjwnjsIQJSnkDyzVd6h
GK66Gr6/55nNJ0Cabvax3HHvaXGySw7uKcW+tQMkAFVpktrKNhrdSQI5jgdpMXDYe1C19gukVwH7
gcESaKTxUkWvQ6wK3kASIWYqRCD21v4wmmzIxyLbp8LYzplrGLXPuqiiN8f/MfDsw6nDpivsbS+Q
xS/ZaEJFkCdSGe1OoXuSrAQhmWWYkFXBHFyu9SUA258d/5KINJpLcLAzQQuenOH8SG3qusBMab7Z
3sh1S1QW/jTvyWj9rDGGZ+DvVTeJJYS41MnykrHUYLQYfcEpP5SukkqBeToaYKyeG5W6iPTEjrmB
4v/VLF/0vZDgUi2neLbM2s1UcFlykSYWF/No/MSIpZ/qYRVOUEuMyGvuzeK/EZkVSOcEzX49apVq
bZYhgg7mBkC0q1RTVTI3WiYzUsZwJrvqGkCf0Ldky/VD/DZ//Uiswvjc9bArQt74ehgrcN8YL8il
DXCjjbf/CdoBu8oPmlu6q3B6WkzO6vSJD6Wp7D7VInTv0+XqC9N3rRM13RFnRRK5sF+deGjl4OLy
srCOtjuOjfVCfNZ7DzRzCJZHkbKFdWubQYJzOo96LhkCsnrqKOFZrlK28cOBpwvEWS0B3fpQSpma
USmRCycZVw8Vd9Tj2k2MLxFye607/UEf7njhDFszmUqu0wONDZwCFg6wMih27lMyqx3fnIZ79+4E
bsmtlf0Cdi67jgguL3Y7Am7JjnoLJGFBe6yvgrPqnqKgz3E/b0N0/ONKIREE7ZdroIErQwOg20da
S4UHVc2yaZUljDk2AXhwpFNYe2ZYnImrvgGrENbkYcBaBPxZYo2180sTOf5Qrl6IM2IgfDBjrbB6
S+5vdwEuI2nLL2kdOxM7/affI2Bew6TVb5HQQDKtrMT39Z0ymKuKePKKMIGMyQgkW9jNu2+JFIQi
KvUBimAmN5a3VzjyvVXRlPXgzban3SU1tnQvV+3KXwlAJDM0kJj+POLWlu8pHs5I//85pJsSyDnS
fR93VW70iZk2JHvDcCg+QHSgYhiJe3biuBmRSeaQtJhr5E/X4/p1gDDiF+zXVSKN1ICE2lxjr9c/
kQmtrjOPB9n/J4wPMHC5JTkXt3oNSZFLF4aot22SJ7NMfE9n/tmH+MA3ulQ/wNz6svi9IwEKjv3z
SKq3465E/Ol3mNpSxAt9W3BA4tM5UTNEC/QF6EN0KFM2IpiUj5KCrtpL020Xa9q6t/BCihSCL20T
A4YpIwSICBptkP616tqtQkUHKc+v9CuqUJvEOYpBgrGR4zjetTMeFSfW+51mbYCDyiF4KxFNlCIp
nnzReTmArcCbxKQ18S0kIxVOwwOAmrZpxUmlrIYschumUoVDNo4txcBLWuDVzxXUpMve/XUay9nB
6d80Hst9+zUTmit73Z9cUHOH6+eevO1pckHL4W9XAq9OQpqesZrbi5tekQab9NJYpAbB6UA/fp7M
k5zPOTO1h1H018whq0YkHgj/C+FtWBdv8+doa7i5Cu9jJhCISqDaer1V4/RbC4+nR96fLYWUnU6O
7KgdlobkH5247MiWiG8RnCXovECvELcaVqgsjLhMId3lRIg7/EK390Amzsbe98IWfRYHqwfqIpDa
DsdtUfIxpEoklDQEidFj2PJlQOcmWCIFfD6UPdt/AjV6rJGRHBtpdfjIPpXikxpfOa3Eobr2Rego
IjBGvgcX0D+NThfNt84ru1EsfIxnU9Cfuirj/UN/AIrA4xIZhcgQWvxxnmsNKaqJeXhw6WuXmkAP
WYi/lrKlztjGVo6pX+C4I/SEagUaiREBm4g4gbnIx+vV3BjHv4jj0b0BcWZrBGOxh3y/ybLQutA8
748sllM43A8orQwdZuO4m5j00Q9NKEMuBSPsc2X9GamFUXABgOAi2DL4T2tl+xvwaGEjtJD/KRU7
oZ7d6zUCZ/CPL/nZHTnyWSQPmwERqrYMoxm7TIQx2YP9oT2YJbY0d68EzC24kCW6yKRxVl6tn2VM
H3nIw6t+oJadQrmUu0coMdLOcjJhl33TFXP03g17U7s+yslUMrJx9Ai2bnQqW3DOdVE2fuoL82QX
eTJrcg01P5wJTFfG62wMKFo9IBVQC7ffae77iiWdeLFM3fjPtfW2pQYKaH9aEnY2RNTrrSfKn0q6
hPwjASiVhy53Wh+Q7t8qkQiI1a6oGh3vqui9KhlWFrnkpb+PKimZPY26H22ZgOowGwTSbvHmk+8B
W7s6A8vgJQo9DPBntg6/2lqyNZuHk4S3vsrVg0S84dvEQYU2Y0YIAjY777k1Nj/wALArxKQFlAMl
ND5zpqQmY5FInPVIX56MxzfIoDw7AszWB5GZ7L1jUIrQTFiUfAWS7dHaIRhZhWWrek6BbKgHFtiV
3gkrYFo/yoXxfZiudpp8e84zq8+pHwWkgAbCi39CNL8p9wXTFbw1AAOOIUJhHdJmp0ltJWHypzCr
mvVUE7VesGyRKxyDy5tgURrJnlw2OfNfi2z74slAEZzQp9Datbwt8uDIfCGgWmC7JXgXVzYZ4VA3
velBIEKapz+iGNmwYvHL6pdwWWJTG4EVp61aW9IHB1Vum+JwP3pvoligYb4coVh4TxuvDxpFKgwl
rn66eNph+KP/HxZUfZPylRvoJk6vqlc118VB8ARFnn4n9XdAHkiClWqxsA0v5vQqEbc1levWZRTV
TxBQRuOollTgbzChcPNclEYRVlOuZleGUrPZ7ZAwOgpCgGZCgQp1tYjx64btYwxkfUp7RN4OmqMV
ephmfKxv5adr6/AMc0q9rYJkT9AJ976Ck1ZsCG4Bg6CkIw+kQtBfgCGcEL2cx23B1dUBgiK+uG9V
v5hiHCpELUw47auzvzGmbM/RAxg4UiBH4kqh8M/Qk2XIocWxaj3Sanbk+STEu3Ekucffc38Ega8N
RDp5vUU+qGRZYY7tCi8cpPQteJLPpzx8LK5ktdU/5D6mztRfMsVRheRwFna7AlxronUAmFJg8bxu
KA+7gojNnzSA9gkaa0VTA5YatKHb7lv7dX3Mc8I6LVS68iW6kst53R3pHcsEBeN6PiANUWTvJawh
kr9o3r8tN+/rG4fuJVyAAmDiJ7e9jj+IJNn1kOZe96Mo7Aep1D08WoJIrPFr2kuz+r1Q8Z2TLnR0
dBA+SIu5/rrSmEk+xr5cvbI8Gz03tg0+Kstp8Nix6TUPGJ8451WPDeO047cSyXwoH57PH9l1afvc
B5XtH5bZWTo1hK88TWxTBDKZjHF25/cIn4YsTMjHZx8BgogKDI+2ndtQDKSxNDkxdGdf6vevfyph
4ZQ7EQHr8uy6Y1B3BXFY9ta+f0AurIpPHboOCyGQT1z9NBTpB2r02L0h8qRMU5j6Uu+QImjfWCN0
btDT4Ls8tSNYsaUfNWgzvKAvuLyOEvWm4ABqIeZc9/6S7qhzjuwXCAC6ZnuhxyEZTqUqY76FnI0t
4bguIDsv3igF79YqqGTrvBRzMWFOqNnIMad7lORWXSnfO1eLJOi5ropLwjUuIBZiP83iiflOprrg
Olbz2mVWm1UdTN2+TbK0iYdLkPdgUORLFlQD5zaB4dEfHPhAwPOWEOq3N6+3hPA/SLWehbDGdJ+V
hvyV6rtlv0luvF9KSokzxuB1qlrg+oArDBeA7kPgBSJqB1/k5TBx5Murrc69g21LjmIZ6Eogl2X9
bepuIyDgnsbOiAmT0hA+g5CoB1WVEaMAkfT5gOpz78t9mZKRHuUhu1rNvdDhPevVJkQRPVYVwK6i
ulNRsznUw9lWqtZnpOk7Up2AE5dbAMNqPV/JLZ6dHnxhqGm/nDot4h8ihYjf5Jg9sExet266lQd1
X9EWN0KrhKzq65Xa73b4KzaL0KlmpnGEcCqvSQtQYdvfS+8by1KiQf153yVvrhTK0kITtVXOYPWW
0jGYXt/LwcDOfQO/Tgoi1wnIT9rfICmLKf1tswMy9ub+uPDj8zRjUaUDlMgM/Sw0GesX92JLPsqf
KeIgLUYr8qakB8mqdl209N56Q9mrJ2PO0tAjrBoms8hWbFqyeyKxBJpZOe4YLHlRSCcabyuSVfyB
hwggukwfOxeD/gi9PsSTiIby0bY/aUkz5D2LzBOf9H15Vas3c6nIvPwTS9Vw0TDtGRt4y10xEyCr
R4h3vnv2qgWySXhQO/htBLVyZJpH0Gtc3uv7Fxn9L13yxHQSaUOAyLh9rb4n45oOYddjwRjeKiOG
AZVRZj9FhBgqpoudWzbHpavRO7Rme2Zk4TR3oB3wkYlFjYRckNVC6r/5iRtBfNw+vwOPECXmWURy
QMdD2DBvdoXi8HqlXDai4OIESpw9jjCLgnsReLlX9MXh5++dmjmbAUIIdweNuPLxzUijNbeWFd94
4+/7kwsBtSF4xtBFkQA5ddUthqEZrKS0PI6COVvd9pr+rzIYz/OJZdTB+anCyV9GisOIDGYU5LYw
TKibeyYNqEdVDtdFJrtyl/l6yOZOZ0tMEKmF8XYV31xkdw2v4iaL0yOY6f+J675lBHqhkIDNlpRd
z5ok9FbUda/vnffq4RtL2YKV9PRgDCjogYxcYE/GOqhO6MoN+FP4obnbXbNFnvYYbQLlSXqXexyD
w30CEPOdI2UH4/B1pVPmqsyxbjOA8GebuGpGAwT5hBZv0z9NemoL+mF4XVmIWwYTpQ9OpgMh0LHp
GSkZQ64RFh1WfeMhPPPjNLxA6qyebJZjeyc2QBAA/Deb9CfOt71WqnQE/u/dhCUTRVjQiWCV7CKt
z5VE3ONN58IhfGgDqM4ggASqNZR/DJRqthbDpX8JAPCEfVtkxqo70qRs/vfgl7NfnEQZNRRjHySo
sUDCxTlQYfbCwowUM22re1UZbIs/nsUEOOm+/euuOFuuwpf6pUl1AYoaz/HFhCPMdDoDTtIbZ+b1
OfW/miuqLqAZVaFTbHx+4u755nzZnYsD5zM3wVt7dgKbAKqIpksUtJuYVxA7ZkuOIRMIC2DnMcB8
aNvoLibwN5dWvGkuXpgXYL1dtPZOKtNWkaYc+OiNw/uPEUq4BOCZMu4f+zZfTdbW6PpfutuIJTO/
OODWwziLxKDQII0qpLgA44p5FgDwb9gqdNnDHACN8BKzGMZozH+yN6YdcCNZAruKOU6PS06+5SNd
dqdduDX5aGJhm1Gp+BYbsd014IjnZTuIN+mDkMFruRPFUq8YJRAi0WMqliL4oLMXi/j5qG07EQhX
0ah55dhsac26miYEBxVrSy7fw8oHk9h12pc/Sg9rkpjSeLxfl3ExEZRhg+3tYThnO8eCTRedjPER
mHnbPQMrMygZkPUVa8sXeUlXCLjtTZLdJwxS/GH/dgm665iB8u9jr3Pk4j2usUhuBnItKp7n3ITB
6A2gIVAtOqJF75KMT221pI5EfQGH0nmDHXZ/dS/GiLCKE3W/YCgbOpRdK8WZzDDPagdHKjd3mTT4
UZgATvaLgA7irrFeHdHySmIxXtxhLHqWCAKPOK4PP2q6iNK8HbHISO21qEiKKlonM0Ocm0gfli0T
XuZGqgXOShAnHTOmkqO+r16po/Rl04zFT0WGmdsZvqmmU3euB5TKqRGUpPmSu/95v2oH7A5PHja9
LW5U7Mk7fylSnsFZpcHNMdptub9Qgwipv1vSxl7PuezNmkcfo/dsLgHcHODK6nyyk3oii18KDXID
BDaG4C76Q+fRnsr1JiEzjHy1RZF/Y1H9TeHWU2cguM9783eRjQLRAnDPyd32QynFlcHg2IYXVizp
YlAgj9HHkwHNKi/WVJlxG8GDPZlxKTap5EyFkAcremO+wOH9gk9nSeeXZh4IbPhoy782EMA7NqTp
L82+UkCfXS+L+hpx75OYtUd7d1zmCKvQ80pQuHTQzbIsGVwKHa5SDmKiB5JIk7Vn8b4nbWrkLQnY
zLiKxoIAz3NrFxShQvJjipWSYvwo7TNmJpxrCv10fk8qprUE2w12MRUnAv6m8/TUpaBNAVTxaIsw
7ZGt7Dh5wU2kufvCuNELHDSJd/nZNUhyOMDw2t4le0FwIPqqBfg3YlR3uF3qC0tGueFeO4cyVvvw
G3YyhCq2VjeHp+NkEeU8v2Jl7BGnaGz4SgRhL6BKtIYHRlTmLQzKag2FqYpjG46LHWqH7/HCVRFT
tCfIznk/9TBeMFQbK/jnjtCHX8TPo+tkaFs06sb78CwJv0bpyaG/9C4ZFxk9NhG7wV04W5umjm9v
gTNi7wiuaHMPJbXUsMtl8UPiW8Me2371vQwWO4ggV0Ip4JggL16AnRBQ/NP6tDnFSOlgy1DKbn29
u1RfOcICG6tYa0sbtyENUW8M2rQNASC5LpYdcf668yhg8M88csZ9l35rinjwHlsZv5uHYDK3OAp9
Xs+0j9yjTXAUoNnkwUP9qAqD1H/agDw/fo8JzIAE9UL1qL0TR1Lqc02Irlxh5yLZRRL1g6FO3+BU
0+ndVbS9ozXCVNiGGDbxmXQbx0BARL4kYrZZBJ5nxIEpX9G3Sgl0106VDTrchbdB3Dr8i8fUsmyI
3GbC0aR8k/m3KxWTIzYUKxJLXc4OVLNy8oPI4iIacSZAAGB5NB+4b7VWk0S5v9DsC58kcYdomXnA
aebrFq/2jAtGlgpj9HCrIdfg0MOAE5SjDFrpCXGtvq72iJsm1unG0XNSl/NOBE45pXY4EVhbs3lU
bJ4kKc2W8r+PEpmQ+t9dNzrkUgu++Qcd489hHQoLY/SmNtAOUZqh8cdctYX/7Z4aPDwm2i1uqa5f
rjKWqLdx8ZSe+SiCoesc6Zjl4ynBfKZW3Jf6LEul/5aEoHcHAg5WLNJx6KBPNnJBfy2EQF5YlEmr
sg/bZS+wcb3iMePLPwwEDOq4OkYdDLZyHSdOym+8KjSilOUfxSMKxNtsAjFX/slWryLaCbrf4Ugz
ZYAEiGxW+jn+z38gAvxtaOk9NcOfeJ087ZeS1HGBPJOfwUEwfrlBuwJo/62epQb+amep1iZWaL8d
O3KSAXKdX0qu1AuGxGupRySyVI4jC3FeS+Pr6w/5bUGIqxyAKei+pnKfFfNtY0Zmaq5JfedyHyDo
EtPNTNlgk4zTov6JMNvud6nStHdkuvg43qp/sMxd2tOqhVhLgs2+2yFuNCUvXJIO63tqfugoNnkO
YH8ahh+jqSEMlNEzpVLwPfN0cWfJ9ACCWUfHHyebQAiBDbd5dhCvvVxeZGV2pNiERSdnqzvYLbUX
WJV41IPj4WM0V9bNBGYKQXH4dms9lHzW6P8jxfmA1gAyPBRAmtpEL2DOUULFaiOuy4CwrgqWCI2v
gUuc3b4NVkfeBnmsFr4XUT5fkpY828wyGiFwmj72MmUj+nsqHWNd9crbt89wW+zJ2VF8eo9qozxV
YJpCMkOPp+4rQaCHeHHxxhEKU7z1byqEMA/y/AU5TLH6wnxOYdKG5VWUR8PaogNDykfr28tGfFJ9
EXoPprLoQ4Pw3bTM1WyQtEmiciXwyAhYNuNkhGjqZTNbatH1RFYdZzQACu5ZFhPDabNksyrjPBdu
9td6mDmYcYadXjhGE4bkmCYr7u0zxqXzhsy5GR62x1wrJX/mgYI1KHM+Lhyro60o5IvaBV2Sxoxb
KNAPMRk0uxl3kjjQ0OZWUBqBzhRZN1vC2VqdbLF4i4sMupMMZ9sjWX+1CaUpVFo7Tpnb0UxKrZ1N
NkjRiMs/W279SJvGMU4+aPp2+XGl6mix0reec88vfm8gOTmKatGz00PtQwibciWuJTLtXSKrXSn8
gB+CJw34sV4KobvQ2mWifWNKTdbS0BAFkn1Hg3sYKwTF5ZmfmmkmeCU4UylFiIaWpeZRJOiWx1GV
R2kGd7iG0Ut44XXQwn73iiHUT9AI8NfAApURtNeVxDt3s+kX92OUI3qZwAJ3SEce9y8VsbTM9jYe
XBDkmh/5ssL56+81ZY7Wszp8a7QDe0MnpvWoprF1oABCn4BQTay1scaFXRVHjgfOrWQ24/0l7oni
cZtlJ1IYGTll/BX3zhzR4xB+h/pFbUK1ujVPp1v004PWQjzE4n/H1loB4a/NfItJPV5tWDMpT0xN
DuEgcDzevUh/7ZDRhYwzhMu0kMCRkU11Whay/yGmvK0AWRgXxGCvcdv3K3q1efD0Yy5BRO9sj54a
uXMTauUHuiOWX6g4csdz4lmQdKmYPQRg82lRnJwdQapFzWgpq7/ubPeqkvmIimcCdJ1TggzCogvT
sKFFySeX3uuZr8jBqWY6oZk/GNlPawHL4KiewDBRFbASdk06ETOAAP71RGeLgtGLRVG1eDLzrS6R
79D2iihrV1qXdJAexyyZT5IvJDaFeiV5336w9KGZS1DD3yEvSQnkwX6jsw9iSeLkPfl1ReUGbmnL
vcn7N/DPhwVdfAQ8nu2du2/6wnM5vioIBhW4UE3EHgb0OKTiKFwozYdJtTDXyZUx5ewJRRYGsNJk
PE77D/gyAWZwQg7Y4MP3n3/GniDLzAC9nhTaiGCJ0W8UuhiS9UIZUCUL64c416WtyuTiBwp7kBsZ
zJqOhl1v2TeszUYsdV6Ur6rPmjgxDWAfam65Y+veiyWfsdCnuSEBY+AFpBDBnWKfmSv0GWIMp3wq
1HQ/otP15N7q7bknbRR3K37b33/vkohVaWvFCer9qGbnsmAculVdPpQCth7D33CIu472VTQCx7xu
xNp9D+nq0DZQdVY9aZtKqGg1ohVgDPqgFBj7uP5XJ+e4pnDE/C7UqvuvCwaTVDSsv9r34TGsbwr+
GB/EZPDihrzh9I2IQDJCH+zrMpoR5U7AL/EtD8xFIFu3fGL3L+dJRokCgG8wKZhLaNKwDnQKTEq5
CliOMhtnNCWIjZdk82eNHwCP5VBUrJrj7ycwnH4Pzf8FdLf+6FKnhybLcvc8bvqdVB/iYqCw9FJE
A8WyDytG99/yy7QmEbWNanhfybt4HjBOid/aQCjVbh30hNlTwZt81ngH3YnE+d2AcR8ASj5S8tqN
l9oqEAnJdUJ/3lT5q6rzU6lieKoxlH0XBcD2xYuaq4b5426aGU03bIr5Ozql82BsX+Qn75dggJ1F
z+PDesb/e4nyMmlNMQwKTyuySBeQPwM6aJGRDYGFIWvW69R/KGOl/ZFIl3ZmLchEcKtxBI4EORao
P3YnTxQcaf+34EGjUYjIHRtudWs0DblKeDzuamzCl5csly561L566hhu0YHkPKhtxKA7lBg9aFB4
APT4iHlGRaNOvtooHkCH4N4vygym5ctRc7vuqKE1i7YA6dL8SzXGUGaxbU8qqnfwuIg79teAZw3U
Fl/vLOZ2sYZFMqfDazSTIlP/knWd7qsWI/rXxUHkw7Aft8uXsHBet2hsuqOab4+tPE+SZFY18s/n
wkmYw+EMTeGz0vZ4GxTazZrDqqIL3xMJY+EJqhijrZdr4sYq26oRSaw56BP9A0nxe2VixM/yt1G/
03cA3FK3zIalFXUfKJQm8wfZe5VtJz+HejwdDZZWbH2Yv9lltCDIzE1BPjefCkS59DweHtWCi8UE
Uh8uj+LTDBJ6U7EbVFA4mH3mwGhMpQzqsoo8P2Nx6pmRBxWF2Elhwbc+ECDdyChVrtHg5c/myNiX
vC+K3/G4rKt4fbApqIRppbSJKkOxtFAfrjFvKuMNwD7aiinhwUVzcQzYckD1rlZLZQXcO163OJBa
f4hAzVVgsBCDSkQoCqn0eEzvqNDsBWR53YPvxOVdD09nDP0zPs91qeir65Kmg63v9Y/GPlu67JDp
dmh5r/th+XFOAJ6kjGQdVKlUVJLMhWGF3VPgbmZl+N27UqKAP137cNLB3YO3U0K9q7lowQgCQhti
7huaXWnhxevAnBhfa7pQvUWsN9mqHJ175OwVQPg2Y9OzeWkAH7p2j+IsXUkiES45qoML18UpZqJq
cbaYq7xUEKPZTyF6Z8PI0TxLY+/OHhl1hagJH7gdSC4NUfykuhbCd0WlhhYL9Kx/GmY25InUFqqk
yz/e0rCKYzbjCOFVj1yjhmL8XlpcMrzxzJAKq4ZCIA/TgDVsLQSWvjSWiSDqGN+gkuf4QbsOPVDJ
ink7bCK4ejjHhAQytfo+L5I+rU5RD2y55q0otYh7/uKuY6zDprEM34kI0mGK3Y6ruAvl0xrv3nxJ
aK8erDpqaFaKoY4q9FOw0PTvu4GRce/zQcVjkp2oejCW/ssEFabrHB/MQH/Sh27FflV2KNH1PVEd
fpBMg4MWx3zEfhXAYowaDsQKOatmqt03kun76MRBa3DEWA1ZVOUcCcFU+ssQeZxhdZ3aetEzB9xY
QVBkdRKeO7v7N+luPdFUJUYBNGJfvh4kp7FYOmUPid7Ve1toFn8kQNx2S0A0zEEW9/HIhgA16sFE
sxoZjYWJYppVwsPHti+sLCc2I8NUVHezK697c1i9TJjeb1dbRzbnJSETrYFJhcFEoCP0VDn8Z5Mz
xaPk6mqTbGdHWjcQocX0Sxw4unCP6eLnUrBthw8iyDwN95UuQRmnWuZmpttlMPUqjVtcfj2mIHXO
mQWI0wdFzN/VIE6TofWqR+wzqm5vSderjTnyuQW1aKA/YWfnNK/2B6LrusV+n7fp4rpGM1EOwA5v
qVtrX9+1EWhH5zRN+DSAPaSAnMAS3Ps7XgUT7Alqv1/0A1msgsrJdBwOHmE3kmh80GbWjDzdCMnd
KuICaGgeguHWbE7Cw9UFO1MR3HnuITZJp/qb/vfvAFH5axBQBSECqPcVYJB9eXeX0tSpOlxz3FTp
94cawpDVWwe1YVGFLUUUdC5RvdQCIB5/L4Y7UB97QBGCOrzytfoZAG6zfzi6Mu8Tw46B4c4Y98Ey
RAs1UmeakQrzhw6FMs6uS/lYQ4kvVKuKbNMy90smjs8cPStlRphQDLt4jpQF9jR+fEggPhqYaqCP
zu9eyJaoASa5mlN18q588Iap7WHCXVzlZADj6abopCo3gDT5KcPd5HL349bNHKaZiwP43JVs3s7K
JcRrQ8Sr1C/XRWeCkwHIuS72FXPqeaIe/S0p4sVrxi9fP3SpCbQdrwnQLBy6glQRvKJoUu75717H
3kh3GrnjXiFhaHtAjPas+MQoWssMRFrwG01bbFB+S0Pbd7qbQBMJePuTnow90G7SgkfYedK3ex2J
ahguJ3jIsErK+/V2kAEHojMRCxmFXFbfP2LSxim//W03mxWEIsvRNYFjG6jwWruWq9CWLIB+bG/g
mumCaLrYwV83yP70fSts9w4/+GeSpUruF4lbJ5yeYWTiI6bKEqU9/heXlQYOi8zpMoqphntbKAj4
WlJEucjCYdFxf6X6U9k6pQW00Idtj8gEHSPrWvk4RPJYfuagQbE2jq5QuxbuOQZ5zLodr/cACDFv
vjyZlxPMGaY6Qt0fE7F1TsJdm+9OnaNfiy4LHLIW3OouU8/Z6CxGRskmBWp9Pz5BC/ULSRHZHSUx
rnoUNgacW3rvDbleX4robZaDVlpD8Nb7KmEo8V+QZZarHcHFwWqpYGfnHFx36pKz+Yl4WhzgPZmC
iEh92GROpZ0GxXlUs05eIUEZ0QvI78gL45QRPu3p0JRP9HT5TJkNw02ARjolgJu8F4pcm9OhrY/V
naIxMl7jO29betdMf+4QDennnAOYiQApyas3oPvZBL0qq++Wk3AtE5AKgNn+GQoQEqMZ6TbcxOWl
vc5yT6j/g2hseYwtjr2vUBr0HScTNtvuk4IG5+I8IQFV+b+3d1KfpPExBzoxcJrhk5585PHV4nPg
fFRmSu1+52MlgQ6BwsZlGjnwicKWI+CZsEcX2Xwn/bJ32oEBdiIVi9XvYiKXSDoqh5dDPOnCGrA+
vH97kXCtDDERpzRH5dyIkqXTy+RYLsC8UcOrR6MQ4SlF6w+NTrBLLnugruuLdiIBrw25ObbzupIm
o+NAeG4ujgbbqaS85J441KE1gUXAFMqPvO8WMG70tHAC6SpNR8Rj9EJ+LIMVdoWZyliw24vj1T2q
A45RoNEKPXkfJiIUsLdDJSABPmFqW0BBwqwW4gUyTBUijTLaR1cYkHmWz16uWVV/bkQJVN2Hx+Au
qt/ekYd1P2QKUc+XhFZfpnj+eiBHCH/q+8uqj6XNRvSjugoTAmUQmATH+tnt2WVrOc7xNcaOM4wl
+Kxv2HzRs3MvMMqPRLZYYoFJesn7bZCyH4U1BJld7/L7Rt4SAdPeJk8FClkxhKo99EWdkxgZ4LxQ
O4XbFPfskckK/40XUzzRXewX6gSNC6F/KGYlF/w9j3mHNdOel4+Jq0Yl3pvqNO8FWWEauGHmjcyG
dMMUHgoc4ubp+2XtfiVYUNknZS+lC1QHLabgtn1tsGBmsREShWuBjT0byf+JBh7u41tddpeEH5PC
9GYLeGT3/Lzd2xGey/g96X8z5o2cj3Dsyh/ctXoM+flBRiAXrgs5xpVG7Ssah4R3y25dTwE8T2/6
zqGmtT8QJRoghsmYMea/LTO6ALWXHvXQfiEOei7HouTMmxtgcWbfaiLbHhZT5u+h+DzximFt6CZ7
R5iKVbgno0sUfYIy+xDWfPFPYf1UnW8MGcK1ZOITJjfqf3pI9OfNuYUQSGh6elZ/0JnMFoLvtLn2
SzO0T8t70G1UqQF2uwmo5orIdItCQuwJ33cL6vItS0KdUOWFKWGQl5bnvBAeVA6j0DUNMHBi8fQz
OEM6uC6hglTHx4VXhsstOTCEcbwH1Y2NuQWvvrSqFilvZ6KcPikqcvIfCw9Gl3VET2bKjKUf/YVh
D02dZq4OKZDWux9o+V57S1Cp5USjU61wTh84az5J1KmJ6k/2ol7ANrgPYcqNi4mwgu0bYNRy3Zja
PXg3bwAmlckJ9tyfzLFZQIjGh//RjKRoREDUPqu1p1VdDv+ZZ2OlSYlw94vT9o4ZaHmJzN4b9Zcg
oCNB36vbA1psoO6abKeDJYQPpa2boFMF2Dd9neY33A4Bf9Ct7dN6m1jwL0ZOpbzV+enhoHDsawyG
Kipl2gr2wsoqZcsxKFTj3zfkM015og4e4klnzfXcf61HvJjjrwKuwK0bo4qDgnojDq14FCaij3RX
FJtls1hdBkIHwCJbsozv05vDXAGnsY4yBtqfZReRg6eeUeJrN7RC97GnksB/6yiI5ibHVczEkCBm
tsGzF0y5Tt9Q4slVQOVgej9rmYWF6jPV1iiuewjT3YK43BNdQIm03uZIBCYqvvULHhP2PGSydE8E
nP3X3LouS8tSoFQpxBbXZjSeJiPbrnTg5ZKX53oqjWO0u5++BEMvGgaOYrva2yrvqLhvHZE8p6X4
3CKQ/1lWQf7icm7F8+SFXp8Ek5i8yHIAoIQ/6uRxaVyHgk4xAMvwzkeTqp++vUXF5aOz7nnZkPHv
UChCzfNEmd79f4Q6jRbdn9yByy2TIIdC1mme4WzBimqQDTUZEbp+ftckiqd7PLgCIyCEmJ5tmylN
T5sxQq7KQUdEagxIbOsTneP2Ia6jjf0EHEY2v9HY3YZXwo6DKwDLxq10GsF/dNaT20t1/cDb28IL
TZj/IbTr84Phx1opxM83UdLtJ91pDidyje0faP603LrfIEo0lLECa+aESQd5L3MRhauyqMLDtgO2
KAFnTbzLjOhhFDxUbnRvpQF8EQ6O5prgX96+AZRLHVtyLFUm3AMcHUPKD7Z85m38fTXNdnKjle1f
fPW5ch5euCMouR8G2ExkhqVemxVaZLxMxsh4fBAX6ZWCDbP5/RAInsfmC/yFX45eio5TkdmCmJa8
OlSV8cOcA0za5292XwKU8Uki2tE63IZP4my8Pes+HkoDQ3q3oEIfjO3FWKh/mquyt31mRFbmqvWG
pwsPaeb7GdlKspFcpTAPtAsU9jvoETuN6EXr29ub84laVN+nIcOCb7o/SgddN7zA34QiM23pI6hw
Gd8KOPwoBHhtV2mM5DQMmjMTrfF5LdUfELQlARTR33nzjyE9iNmM9quQe8vBlA7NuOiCbFyFKW+6
gvP98vRkrtGAlylCT3fS8y+mS64R/Vc5VY7dKHW1Bjq8J/ASymuJe0dFWYkB4W61pgXf0vAvWfiR
hEYs45/smThGx1Y+jZrPOsGb6pxEKNESVqdg+D5i6P0XXynPIWyqcr84C6hxTtv5BltsCb4d16G/
SAqMy0ZQzrGC8TriDpB+ZMB7bpdf3orbdczLC0+Rngk59Q6L/eTwQpK6tSfw5FcxOGO4a4b1nLVv
xXu2u9vDtbDZmBD/YTkY88XOutTt0CkCF9FCzgpNT2pdbWpvaTtgmNnV/QRaK6c5nP2Yg/W2Qjkm
S7r4fe0eL7cUJj4NHUzj+zbCdwR5L7Z8AgCSw3GW9I18HQATDD6BJr50LCW/HCfU4z76wMk7UYJ2
fvrm6JWW29QVuLI99MHFFbZ08p/6n8/BEugFECbFCDatzbCgqDErXR8luJdHcf183XKtSifKIgSC
eY8Z+tI+TLH8wqmTz6tvEToSWq2+6nRQWvpS6n4ruvSv8Kq/QzUIrzmW2Gf2gLTrarwnd+VLh1zY
cmmLCkfut2xeKwHW7tBVGo1Ouzhr+FYYoqyN3pxZxnLUJNRvBsluOMM7Y+R13qeqVL1fA/nwGVda
5UqD78qXW1Gs6KkoudAUhES3mskPC4JUWsSemhFHJgvLjAClJ+l/mcuQv33u2kdLjiNntBIV8SwB
+Cbb20G8c9pvu+ly6Qoy5Xb9pOrln+eqeYbAx9UP/Qt4Y57GE9iK+SLBv7qklY8oMVQvxsAXVTvU
I30e/BuAYdnOqNfkC0/YwmKWR1I09VlZ/tRGcYqhaY+D2RHtHPUW40XWpO0FHhHYbRVDD6QhER72
8FWYLh+e8GSc1rqeFdhpBJfoPP3svvPXo9QKSQTJqKHjk57w1iZVGvZW/Udb+G6M0GZe2Cv5hIc/
yYif+45SqpElI4rA61nJpVkG1ZoUsaVCrz2VPxGChaAzwZn/7p3x6J2DFayiy4yNFZy1GbVMMcsR
Q6s1BmmNwIH9IfL77SqBUPrWjzaoB1qs7yOhQAfW3j5mLmST5PedN80rb0zaXXh9wCFUBlG+SsWI
XlMPbd8hTsbD95HxW2IhBY7bo4W7puTt3eUtpLo785JeRDA5yHXc10aYM6wd1BNP7OSOSJf+WMqZ
p9UihhWfGPyD/24V8W2IBPF6QtTOX5d1ysWn00zCruu3XjSx+yoaJycbK+MNJ1Sy/xbdU4R4TvGF
7e4sAnxR2gQQO1lhZcqxgqzTtKHOhsHGTBX5fP9YUVu8YwnySAs+wOmn/vicU9WWrLGOfqoTLfMz
Nhwl39JQY/y8kzqJnxpPbnARDVG3obaZfIY6ygNGwaS+wPybPhJkuJxZ5gVzK5+QKJXYFRDXgd4K
XW5z9RUcFoKM8qNgPi7GrHT7M0Rba4m3Xau1qYIreKDViosnANaerZx0XlUqOkWKMZQCcd5guV9B
H7mrCAdYUvC3E015Jb6HoTTVbkWt3N7kTA+ujp/3Abi4MnkvQyk4L6Y03/dhg1wPvvLAp5gKhtpP
KHQZHLGckSs+aNqOdf6i0oshqmza9bj7aNS0OHYygTE69tXqeo2aZHNaFnbyMgmgmrscYjj6YacV
02kFpElALjZ4p54qyUT+7h20/hT6a/dHHdp/2IsQf6hE+5XFdFGpzdKd04sIa42n9gym8CK9kP02
5y9Y3ZdW0Wj6zfpXBkyVtgVJFjQ9nO7nybBCVh4uB33Dn2i1FUE4gua5dehd/cqRMsujLAK9I/sx
m0KmB6w5LFzOkAkBTJbciFRP2H/6gQYYstiRXw3sg8AjSF8HXZ3OV1veGq72/RsjyVDsfGL29tRc
yA/iKkkcF1umYGvFEeRswZ6B752SANPR1wy4jCtYJtqhFPDQU2E13rHr4d+AnJCCWN5bQJ03N57S
dMfviF1mIZF1FBOHN4Wr3ycnVB9BuVdKkiE95KwMMKXhEFF2vVDNHOgeB5LRYmuujilhn9Of9pRB
wX+Zobs6tEt0dKdbxpHkeufr1a4CXsJnK+LjHNxryg1De0G03EM8ML1pqbngNsjKLuYqBheab+5b
C4sOyrlkNbsrqaN278O6EmYzlihd10KcqBYSEL7UCtFy2sREhnZvEHGWvF1hfK6gFmAAzJgSsX1c
khUGHpSuVrQO9KY9BOhm5RjJOEQAPaC1+0YcV0Y4+3YKxwGi9mzTIpP9hBDs4/V/bGnB+v6IyVN4
QDF3dgysi73RawncXisqao9JjMdCVHiC0S9F8Rheru72yCwjdvBwlho0LcVp7QVpcsseLGWkDvaq
aF8ZQYP+tuJpOHYtedNYpqHib0vNJe0vr0E0hDUZcBtgBHh9HmL+AeRZtPtBkSu2RP5BqG9JT789
xLOPUZINrMdhqAQ7BWfx9DnNmaoas3O+n2Rz1B4h5yIsRYVVfLHNkgHjU4MT2J7AYxZbg8F4f1rp
l7YhDxM4kdFndU6FzOtJc7mB8xbB71w0Ie/DCFB/YcgHYVmNzjwYlomAyo0R4J6uawW1VtvJZCs/
BPEhPkxtcNhKd3TnctQDniiSfozSYULnb+0HqcE1d+P/OOVeQxO7q3SLdhPoq5h75LfDYZLWDTjL
cR6ApReMTsh8EnerpQzDscwXKP/9vz38Ih1JhnoX0ijku2FAXg4kVhw2T+M0fB/inJOC4MZmAV+1
r2Ll6KKnt+7DrP2BZXUgOG5bxb3O3BkKi2p7W+TJ38qHUnYd1XD8Onuo75xn/EA1pqOznZaoNUFZ
mpkxhNvZDWCHX5IQsHCErh5lNmSNmAMJbfTv9gRT269ETUXdZ8V5PyEeRnuueLgitffpYVt2tKpf
5XX9v6uiO3qUjoKgWYxiHfTuYNw1vAx5Tq/WIF6EdtjZFPHHTTnR/ccuKxprhyxy5OFaeoNhWV8R
81ye/idXVs0yZbM29mGjYWk/rYlyL5FBww8x/mnTERPIAMf3P5AwIwnu84GuAlq+XdGWAco9vQTB
uyB9JHQ1nw==
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
