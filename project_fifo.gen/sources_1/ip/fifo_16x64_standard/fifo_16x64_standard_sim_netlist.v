// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 13 10:38:48 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_16x64_standard/fifo_16x64_standard_sim_netlist.v
// Design      : fifo_16x64_standard
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_16x64_standard,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_16x64_standard
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    empty,
    rd_data_count,
    wr_data_count,
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [5:0]rd_data_count;
  output [5:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire almost_full;
  wire [15:0]din;
  wire [15:0]dout;
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
  (* C_HAS_ALMOST_FULL = "1" *) 
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
  fifo_16x64_standard_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(almost_full),
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
module fifo_16x64_standard_xpm_cdc_gray
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
module fifo_16x64_standard_xpm_cdc_gray__2
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
module fifo_16x64_standard_xpm_cdc_single
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
module fifo_16x64_standard_xpm_cdc_single__2
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
module fifo_16x64_standard_xpm_cdc_sync_rst
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
module fifo_16x64_standard_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 109504)
`pragma protect data_block
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
6+YnBn8XbA==
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
