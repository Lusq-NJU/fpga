// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Sep 10 23:04:20 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_16x64/fifo_16x64_sim_netlist.v
// Design      : fifo_16x64
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_16x64,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_16x64
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    wr_ack,
    empty,
    valid,
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
  output wr_ack;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;
  output [6:0]rd_data_count;
  output [6:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [6:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire valid;
  wire wr_ack;
  wire wr_clk;
  wire [6:0]wr_data_count;
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
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "1" *) 
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
  fifo_16x64_fifo_generator_v13_2_5 U0
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
        .valid(valid),
        .wr_ack(wr_ack),
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
module fifo_16x64_xpm_cdc_gray
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
module fifo_16x64_xpm_cdc_gray__2
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
module fifo_16x64_xpm_cdc_single
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
module fifo_16x64_xpm_cdc_single__2
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
module fifo_16x64_xpm_cdc_sync_rst
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
module fifo_16x64_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 120928)
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
