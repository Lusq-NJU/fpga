// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 27 20:13:23 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_36x256_fwft_async/fifo_36x256_fwft_async_sim_netlist.v
// Design      : fifo_36x256_fwft_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_36x256_fwft_async,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_36x256_fwft_async
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [35:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [35:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [35:0]din;
  wire [35:0]dout;
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
  fifo_36x256_fwft_async_fifo_generator_v13_2_5 U0
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
module fifo_36x256_fwft_async_xpm_cdc_gray
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
module fifo_36x256_fwft_async_xpm_cdc_gray__2
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
module fifo_36x256_fwft_async_xpm_cdc_single
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
module fifo_36x256_fwft_async_xpm_cdc_single__2
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
module fifo_36x256_fwft_async_xpm_cdc_sync_rst
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
module fifo_36x256_fwft_async_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 113056)
`pragma protect data_block
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
Z4d3+sXm8ZuPt7vV+29NnYlDoK2GX8lviQ==
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
