// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Sep 18 23:00:50 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_16x128_standard_async/fifo_16x128_standard_async_sim_netlist.v
// Design      : fifo_16x128_standard_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_16x128_standard_async,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_16x128_standard_async
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "125" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "124" *) 
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
  fifo_16x128_standard_async_fifo_generator_v13_2_5 U0
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
module fifo_16x128_standard_async_xpm_cdc_gray
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
module fifo_16x128_standard_async_xpm_cdc_gray__2
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
module fifo_16x128_standard_async_xpm_cdc_single
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
module fifo_16x128_standard_async_xpm_cdc_single__2
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
module fifo_16x128_standard_async_xpm_cdc_sync_rst
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
module fifo_16x128_standard_async_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 98720)
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
