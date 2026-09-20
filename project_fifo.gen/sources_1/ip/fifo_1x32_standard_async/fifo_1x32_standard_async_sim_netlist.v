// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Sep 19 10:35:20 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_1x32_standard_async/fifo_1x32_standard_async_sim_netlist.v
// Design      : fifo_1x32_standard_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_1x32_standard_async,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_1x32_standard_async
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [0:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [0:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [0:0]din;
  wire [0:0]dout;
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
  (* C_COMMON_CLOCK = "0" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "29" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "28" *) 
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
  fifo_1x32_standard_async_fifo_generator_v13_2_5 U0
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
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[4:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_1x32_standard_async_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

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
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
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
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
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
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_1x32_standard_async_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

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
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
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
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
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
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_1x32_standard_async_xpm_cdc_single
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
module fifo_1x32_standard_async_xpm_cdc_single__2
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
module fifo_1x32_standard_async_xpm_cdc_sync_rst
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
module fifo_1x32_standard_async_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 99984)
`pragma protect data_block
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
nMRp+8xB
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
