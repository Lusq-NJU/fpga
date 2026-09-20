// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 13 13:14:46 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_32x64_standard/fifo_32x64_standard_sim_netlist.v
// Design      : fifo_32x64_standard
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_32x64_standard,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_32x64_standard
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    rd_data_count,
    wr_data_count,
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
  output [5:0]rd_data_count;
  output [5:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [5:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire [5:0]wr_data_count;
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
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "6" *) 
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
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "1" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "61" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "60" *) 
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
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
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
  fifo_32x64_standard_fifo_generator_v13_2_5 U0
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
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
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_32x64_standard_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire [4:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [5:0]dest_out_bin;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

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
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
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
        .D(\dest_graysync_ff[1] [5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
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
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_32x64_standard_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire [4:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [5:0]dest_out_bin;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

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
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
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
        .D(\dest_graysync_ff[1] [5]),
        .Q(dest_out_bin[5]),
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
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
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
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_32x64_standard_xpm_cdc_single
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
module fifo_32x64_standard_xpm_cdc_single__2
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
module fifo_32x64_standard_xpm_cdc_sync_rst
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
module fifo_32x64_standard_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 105952)
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
