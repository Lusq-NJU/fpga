// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Sep 22 00:28:10 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/verilog/xc7k70t/project_fifo/project_fifo.gen/sources_1/ip/fifo_19x256_fwft_async/fifo_19x256_fwft_async_sim_netlist.v
// Design      : fifo_19x256_fwft_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_19x256_fwft_async,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_19x256_fwft_async
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [18:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [18:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [18:0]din;
  wire [18:0]dout;
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
  (* C_DIN_WIDTH = "19" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "19" *) 
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
  fifo_19x256_fwft_async_fifo_generator_v13_2_5 U0
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
module fifo_19x256_fwft_async_xpm_cdc_gray
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
module fifo_19x256_fwft_async_xpm_cdc_gray__2
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
module fifo_19x256_fwft_async_xpm_cdc_single
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
module fifo_19x256_fwft_async_xpm_cdc_single__2
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
module fifo_19x256_fwft_async_xpm_cdc_sync_rst
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
module fifo_19x256_fwft_async_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 111952)
`pragma protect data_block
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
uqCGMg==
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
