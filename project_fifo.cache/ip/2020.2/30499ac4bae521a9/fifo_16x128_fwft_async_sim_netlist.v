// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 21 20:52:19 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_16x128_fwft_async_sim_netlist.v
// Design      : fifo_16x128_fwft_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_16x128_fwft_async,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
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
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
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
DUji1OxOZz5908vfUGXtC6BT71gnjMiqM0nsXtJNtvIBMY3uoLhSj2U3gE6jdKF3kvef3Y+zfCxw
fjLXboP/t7N3EvhZF3TK0MqF101UwbaGAdfF+8NCd+g6Uq84g2OEihpgyQWKtkuyFmj10T4l/Y7+
t10Iic5TXAzwmDy4Eq9/BLo0HVzLOYkXHpxCGRCDbTU+GjDPcC79UES4DG6vjyXc/rEGExN2d/9v
Mg4ER5NFAw7oBltS/N93v0tDkGcpJ6oQ3fYBsWO1qtwXm86tArouQ0JI0B+IG5n4Eato48kxfLL5
iUY5RumQH0k8kLCNupsefVicS1lImqFgVfHXDXesUCwbSZfPMzmc5z4HE5iFDKys3JJGf+OSGnBi
VHeld9q48dInAWWeY1n/EvvfzK20xHoCF3wTeWxEeqvMEIX3IY3IkQYq4bsaiTxozTCJhe1Ctp4V
fgmZl696fqkUKmNp6/UWZosUGgcgkDx2lPr30cIEUGSH0wQlkNgX/fgiiQxfuKwwztSdE329oUl+
hgxSYNBHYjB6S/noBLS/8oXFWbOqy1xHYFX592Hi8XARrIlxVyGSai+bzf7b1kt7jQfyjGGpCGPs
oGLyNIVyHw7HpLsQGlAt6vwquZnMqPzCMhG0XEiww981fGN9Y+rAgFpD+x5KyGILLr7BKuovk8wA
HU7ccz8YLdRq5a6T9YiZ1aGoZmZkg3ilPYi3oIJlQsnItQvKH1tI4FpcxaVDAawDKUTtuoZHk6nO
awNXnLKV2QtxISa5/LHf8HCg10a7Bx40KuETUmwtlFccQgvZKQR6pOSZV7NXbGd7ZqXtTzNFkbsi
lNvZ6qIYHk3c1BXB42A4nRA4oPfP2q/R+zM6cgd0Zj5exhGVXs5IoUTuJjrb//via3H20x+/Gajc
83VyomymYWdcGS4aHs9FKS94fVNhVS5fXhCABX4pYWwkbe/dl6t7xPHt55hjmmbRA6/gVC+H722+
SZ5EE1uI1iLN+D75aUy9WoP81i7AroTbtliwRv2Jb8qJMYIr/NwWb8yiEdsQs1X6oHnuQ66hEPc/
xD1mxFraar3YCGuPwA2cqNq4sKpIsi7tIiuyo+ah7XXZ/aFzfanoheXxYhaR/BlKHn93qQwB3YE3
Llh+VzcZ1XfeHMuL2zMG5SxxyJfCT6bto5CqazRTGEAz+nyQFSYGL2PT38UnylXXYRrKSubIZ2uc
/diqSAdnq+d7wIDtgwPKiekgdYzUlUmB4CGMamMdSDK/VSWdiZvxehinNZw/AD01pvK9dGuTUKfZ
qMBlJ5UwO5TO8v42sVIXCHn4JfBtXytUTrtOg/K3g1xHcamyRxQx84nAWzvtM8UfVutjqfQXLspd
M1LibZGA9XjYV+gKqrB7WcBzCj8nGNa3KZDNbf/xBXapSWMoCrb1aMCqBkafA1/llVifp70tO+bT
J8lWuh8NyYwju/5EDjz+B5U0igbOUx2iHT54JwquEdafuTig1KMYow1lJ4qruBPj41yHHCxPeGe1
rR2NMFCiKci1TZU28R7JCkQIZMc5aD3ilYB7cAzzJwADc/Fhij/AXx9RNW4uO62n5w/vjn67mco4
6pI9zy/jtFqtmfa4o8QKKlcYT7uB0V0P7dqRbxT68Bi2HHmXjFMc2r/A/mp8AlmkqF4cZiyx2Tcg
HA30lQXD6mMMei7gAFigRAVm1eyAyVeeeOZUBtRs+vOAb05Tnq6JsXRznr6FfPCmkq6uGND8i9sb
xZ6wSs7zm0s+JHGBd0U49MmVrq5O8jPKbehFbYYKJtNDp84F1FeXuma9f4YJfDD5uQAVhRFQxLHH
eGetw6NZ7maX+R3TQ07sU+uR4EAKyfNaq+buCzTlj3OuqazOXf8VOFJ4Q12hbLOKe4Luq68/v+Bu
h4ox9oFZrVk8AR9SbcjNnOrBgCAI6kPUfvnuVELCet74E1Vu5j7C4HpjiJuCdeo30sBY2aM3XEPD
c4BjqpfEfIA3zrref4UeS4Id4hnmAXZNh2QOza69Bt4wYXAvTy9eriAozTgYCj91wACJh1S+j7WY
6zhMF4Nvh4zt0ECcVr+FBK1kCJ2Dk0WjAwM4Z/LhEioR6V4HCq/Zcyz5SmbThlXmjUYQFHlKSpik
U99d9OJ7HrBF2FYVJK/LKV1yjgXvjPOVCT6bai45NSCBlO8XqZxPLshGfWfE34UIDRjHQIHDuKXa
CRvXyJ+c7slrnvWiBk6mif2rMsoxXuvMAYy0PKpPuZJEQCZ65ewY5BmbciYA9WoULnnbSV/h7QTh
gaZcl9RLE9oXhpRlpsCZDsskZsMWqd/LBZZpJ9En/qapSfhSsxeQ/gtLPxTbwL7kKwes5NslHArt
v+/h6omBSnQx7nWmnnuFNdwVRF/MxSEAG616GB2vs2HI9byFMvOVo8JHjPbd2EhdUcAs4v2UHugV
8VBYCKF5HZdSH874JoqBWi5ah7tQyXOHx+gsQf5Bv1zGsxOrInfPKeYritSrdrZ+gqEmjjwbsPMD
WNZ5RRy5gYKogqnRYjhnXtiduJn7HOh9u+rUTp/2w3xjXWLs/A9kaG7rS2dce3m8mFZ9XO658vDf
Fa6Enh45LpKZiHhIdGUFMztcPr4L9QlRcfpkq9N73JerjEugjhxUpwzx1ABftw+vKzBJ/0ce79UJ
mv0Y7hQA/KnX9SHkAZCJQWVMLWHalb/BQf6llU5QUnYaleA4e6eyFTaGmc4XkIGRt1ugGVwTUXu1
lCt1/GguCFa7ZmgqAXCA/M4OJU1xp+klp+/3wXh07E4AXIP5lypzi+5BpvplGevRQewGen3PyqZF
EU8LurlrLzOdlnCRJvNJedCIcVDaVeJB/nR32k6EqxEVlcbyDk94kTIoMXNLvsyZKsUpD1CzjcLI
vDM3cHhfPQIA/qw5XnU9HCKvK9lwB6t4Zw8DaZtlCOJPWmVJc1uSvlfPybaWKObC18yd6zXRmxBa
AJWsrDb999Dt9a+7+pXh/i3Twj94s/JVjKAjXPrrJ/Xr3vbYK6sm2tTZ3v7BWRouc+7Fyms/ciln
I3SWYjJsxGBIm7Okn1pWlPt6WcX5tzDKC3tqDFSYiZov1yyWEQaIv3W1balQxnWMimXdoDOR7lCY
20IbWJABHkqs8bd+c8kxU2KxIkMmCoUvdywVgPGytnumQkr4CiUxg8iQMANAgs/ABgC4aEpxtN3N
cFZgcrat6W/LkuRJYfT72UvXq9tRFKOtbrZ0vMy7SZK0Au57EyRWjH2jLcz8MRishWe8Mj6ixO0W
yPYo6ijNF3VBU3hLfba30PbwJsUraNygpKLWebVp4UDbYd2tVvWba3cqqcli6wBYJQe3lxJ5+Cr5
DeIqZopIOoQKMf88iEEyy+poPk+P/IvA5OtzZbgWevFc/8+IGLy55cr/NDc46Vze7k0SywoMmjv/
IlKy1t5XeP8zxl7mO7ZthMaynQ+4Lxtef9NLpP9J6jS8u2drrm/ez1rn9+c78EMHa06wglH0Jb7k
IQBVotYh37GvwGaZy+1IrNLNz+00udhuudVDm3jvN7pQLahGqMz0w4fktfDOQrVC654NUphvlTE5
v2uKPFloMqVOGH11Gh5L/VfOQbj65cTAHqtU4pUhp9bPX0BCDLsCvdgtPWeiPH4JBGQsY1GPSD2k
wdd56l4/mdxCYcu7TN7GjjCjHbNR0Y/lUozFpxJ7DFq27faQNE/OhV6MSZtkmsZMGl0+Fc206AmX
3poTl4fTfpDm/a0O3p6TzgmrBUV/o6pg9afzw6F3S3ZpaRfQTf6u0YR+yfSHQHNatdqvtRLOCTCD
HrE34MFgrOY0447LzYepzvliqINL6wCz1LFD4FO7R1eCuL/z+vrYyIobWwAh/MPcsfXzNs42NSkI
xKd7kuN0aNgTzFACmktnfbAoblAr1CJMUsLV0vMA707GucC8wX6Qf6hTPkQ58bUY9FvmlbvPSjb9
c/yHXD9HOtdTiy/VfDGXFE4PqfZDtUTdJMF1tJXEo+2a1Y56Dmx+GmmBIl8m30PRAMeAu8I/W+W3
b91sMlnMncFC3YuHgHbAVbvieeHdgtFoarNli4Cgz9jqosT4I23S7D/SEe2N8/qjPF0J++ZsE2sa
NHMs2Um/19BVIJgAH/VNgob/dpcA1etrSe6/F1PCeYFazmP3P2MRele47Cb3orL8Gj3XRIGN5vZQ
BLkyexHw+6IauXUPdRNdP0Ea5pxfClTXmyKg4OmwrF6ewXA+TPLQ1lM2mp8WmQVJU4B4UqkySSZG
RowZ165U0GyFbOqdvxFETJBfSUjWulY59+ILO+8UwAnbYFQA8C93kmuTiLr3nhejuCgE/oo9/x8U
W5xhE8E0YsvoGSOXDwxufKzHY44E7OI0McA2Zfa3Au4TqBIrUugreGLDSFlGv7pDLIaPqYyXDxb1
/XrKxz00ekUWhHBFs1GHi7wSruynBPBJ8pb85LnRDsG29YX//XTNRC6A2TKFpv1Ja9jieCUB+tIz
U78z9+d1f4zpdUKT4V4XZykuB0Aa086lcIkymWSwHgvakrWz3O6/z91ZVaTkU5dJX56DdGESFuH9
QObu30vVpWFNQUmPregVrIl7Q1DIp1BiVEuFKckypFn9VLflN6mQnFj6OjkYb/zWRguvjHdcm+Rx
02oWJiz6T70XQs2NOqeypesaoyUyTWmNZrBzlCMV6BfSokt6L5ekggGWCCQoWvNfjM0iFfyx2e3g
rmLmuyWKb4QhewIxMd1wFXUeEFP0Q7SjHuumYKcyByf4rpr44580GArVKRCDpv4Ayc4HIHvJlzxq
i3HvmMR2jZZF5iWKG1hNr3oQZBx6gm8wKABJVh4AIfnUv/vzQvV+3vwb6iV2N+dQB4UzSNpc8Mzg
4rBujGfTHyh0Q94fuVylL9PRi4Bj0HX9QcCwzdiYI7Zh99//mOOdEAghSxRwiYVnQudOwN0KRFhA
LEVYfClJpZTwN7tEi2ys5n3xI2HTFx5nCsWfzaGqbiTQ5QHtI2AXMg67tpzx/emk5pVPkW3lkDyp
Z7WfkeyrRkEzdHYpGYMDt10Tk+oymPOEn2Yh2ufqH4Bgr/feybyjgNJa7SYC9tJCZMooSH2+/kGA
aY7fCzdN+pKDZbwOcmTr5rOV/2w2bKmpTVal9f5NDxq7CvRcit42cQQ09IVcc70/l2FyKDBLRWKv
d9yvji7PK2LLkNck/1wTK4AMXlsQBAb+51nZ0RFCOPlLBkhxombXMyuO6lPnmmYlphlR0FBtjTL1
zP0OWEO4G3YbC5pt157KyO/NiwwrmIH2kuXiGN1x3ryyQqSjkysV++DC55XLXTHwPdqPHSTmT6He
qmEPoKJ7IvhAFPDefQ9tfugqDCbldg9NAPZUpESzD0vvMsxFWsSKvsfHoOhSj4OA2aLPJ4IupRKc
rzJRndprtUbIq378oIlMnSs6+7fFFdmLqgrfODRYcGYb90o5rtYtT3wKGP72oc5jX9RQz1fqcnxf
5c/XXL8hEPtnejYzM2Y9leHCDH7H1/NB2ECeHhQXgNY9NebyVhb/Czn157ziqxGGAro17Lp7/KaA
kMuxuFR2AB+OGYJ2KinRYgoFvng9lFEusttM00p1ShGrx0vx9XZpkCMFvdIQCSnx0vnNWc1Iw0QW
nWL+boHeurJFZ2yslCtnQI3s+PmMco1Y44YbII/US57GoizyvZk5JHFWNbteVmvAyuOjfQ5phtyW
fRA0oLQOybHxC///C49LroqPhpH7gB5W5YLyHYqkzy2RAETZrlo5bwYqWFQA/bSM7oENhTwrnscN
kC9Bu8x5uXeq8aVBFmDq/uAhFE9dsta6BdeWlHPw0eiQDoc6sZ0+1OfRK8nYxuT5V8F4v/HXyrc0
5QguVw+k4B+yTjhhTtFRMc04pd8OFtrbTYlExNEnVryXoWqxdXfyYxIsZZouuGVQ0dlwOHmtcK2z
8ZgbZtgy9tBYFLTzc78yhxmjokYS8K/iigbU+gMFqXVr1Go6U5M8xCX9N3xOGAz9peAAE2+lnfFy
r6N0rIG7jGGrk2A3SmUMWEHk5FwpEXk1BpU8CTREOe9PKzcDkfOUUrqYpTRh2JveDuKWsSaq/IIj
Yi/Lcd2DX1Del2g6r7zcQ6ExJJADANGDgqKy0UC2KIvNXj1K0qdrVkYA6ockKKPmtPcMeaecFsuN
eofT8bZliCrHz9jYcUokchZsOI+qrFJBkgfVN0CD5yih/5v7qjoQF2gtuddylu4zcTXWbpEypmPg
DkC5s6bEmIDST/3GuqLoeMaPiJyYp9bKN8v93KJNyxWA2vcW249SB2XBuf5Hwy50H5CU+P1INRel
qsjHMIA66TPQLlzS2tG0DvS6P4bZet9xUnGvagLZkiV7l2cYPeZiqz4fbl/tbYbWnp+mLnd1cL7f
Tom4FFEdh/ldOcHMuP7cXKBkp7rytWfHtrOqvnRNLTyFQr9WkvuO2hY6HSv5qAk+rMbMA0kYoNFM
LwWHxOMPBF7yr+GVW4cnRQxxtPMCQYzTJ/bvFJFbhsNlbiFR0wthsAaJD1zHHr9mol1oY0bsW3+G
wh1ITtpj6DMNpEHP5JZWZpEU2kKBwC5x7QnFcvTJCD5EaRMywLPmCPYA1UPnV0vTThewSWmiif3C
YDiH2i3+I/gNOLL7Vz1mVclXvrNm7qSiVmzx4Xr+MakHm+k/9tPbKknEJbKSiBOhtf5RkSeOnvT+
0/nFjeC2ZgurW5w/MdM5n8WS3zve/mvxodiC6V0ZuEAjeTn5sEFw3tkhgWxJQzohbb83UZBWmWMI
z/mA+KfhiCendaSjb1G4CW1m8oR8/dtlsZrAJ19SJlVnWmgRjD6TrbpgiHji2N3016z4ztm7IjV1
G9SL3KLuw3qTCuqrNch9VS7BL+UmnL7MzjXUkKE90wvi6NrDjgkSFCo1l8sYRjOky49B6YTfnSuI
XAaeibKuuMau22wub9Y5YDrH3m7c8vBkV1q0tSwl9VSH7P/AJy5QIKlZlPuc1qB99TfKitIxho+T
pjm9CCdEHjrhJJORzg1+K2XDgqW5Al5XUxBd/zebSRLiuIwf/gc3S4ifJUcYvmpzqfp23a5hSVBf
qZCbk0c/belfuUcK+iBj/SyNoqo2NZmcs/bZ//QTA2/HQDdg7n3GOgoYh6IcH0ocM+WvAMqrxhkB
+YmwcVqMq1AlQ0qSNGMnuxMIF4e4jzTwSrkPq5uinjGmL9f3vgBcOfRWpFYwGuppwdxJLK0qVWRX
7+B/g9QKQZlLJgA5qM5WQazFdAaDFhGJxchwSXiTpr8MVeKqUrzwoXJC0NmvZ7S3j6y7vwfVAeex
XmvOz3Be1MzsCb5Q4zrUJPnle38KxyJDs3qXIBKPpt4YmNS6y+uUi8Rbc4vPB8ppM8oNeOHepbN+
6PicRDOLCtigrcnhX2H+ot9WuPuT03usXtoWF7mauwDe+DS/3bGOq3JIKNqiULxdkTIYPvXqLskx
3tC/ycUCi7owMK+RmlO0mSMbDzHtqb1T2MQpkjAdgb5iYvKFsbeugaXea1HUtBzS5bQGO/OmnVCt
XKaUk/5fSbAaw6Y9fINDg1mx39nYO6bE/98T9D6OYHc4/OiwWwur2oWyukKjQ24rpeb4XxOJIfgj
3e1qmp/uBZsEIMi9HEzGrEdy3xev5uTzIV3TJuvfLWPjwl8V+3F+aWGsCo4P8RAYHQGwNyVs+Tcc
DwjvqH9GMNXXuVK1PcpbCI8+rGs6le1e+HUE0iYpmVLzouRKfBa01FPovHPX3Fv8g5h3vD6Qn5X3
6GnQuEj2pm1XsShyevTtMBTHX3p1JUGMlsJQ6bfRI/VCt/wOSqhPKAVfQHI/0XQutO35FfSRua9x
/BLqmpeJ+e5jJ3fEP1KqFSSF8YGhvwnK+4TbXGYTMMrTbFIW7WtJa+cgDmgxX+6QT95gzflw4GXl
EbSFooG72fvC8SP+KpKMmQgC3b9jS5e2ZUjc4c4j0pY9dNKvIOWN0htbEMUFa0+iSvu0ChrzDdPI
G4zalWPDpHOGy6B3meS3aOeGaqEaFuD+aBA3ZYKbRW6yrHlI3Owr3cH8HLRERUM7cQzsAgca4hin
/BBnBW6mDLsOhv/HETO5HuEoZQftsqxXFJ1wWTu3/2wHDGftGVJmkpnfbiBYzCstQtxGK1W1+xWX
CX2ELqF19OII7sBecwE3lsPT3mv8IHM2qgI2XDzsyGN/MLKAuMhtatulF8kXunAVYp8zjglc2uOL
ywvw5mDIh4qk8a2yBnbTjzAxWw4vL3pvBLnDyY4wQeA/CyfrgPSZ9fQyWnR7zJAAZwgp2muZMOZY
91HLiVOvQyaFKOTxD0LrE6ZmyVfY/luQ9nfPJFVe1ofqEKwtPJifnBCnyL2LqOqdOsS4gUlSiaVH
YpuOcBhlOxK46onZZLXMbdaTgedc8bHS99XbOdZMq0y71ugKlJ2YM0ZwPkfcUVoJPb4rxfVt24Wm
67X8gAGEeZ5pO/e4cOFaTjBxbpT8VbVrMz3Xi4DctWbI7mO/kDEy4TS9FvhIJ0wrOS4u/JmQjLSk
5T3Eq9WfrtD1kpaLW2SxaLwNpj7L7Pr+YTrMg6fDuG1qINuwH5Vc9ua0GygjvzzHCGrtS717w9H8
o1zgEm9st6Y1xuR8VB+Wm4+wZ1kIq7x4vtMOZFLay7+12qdm6PuyKRX8XffE5OQouTtVactQJBHv
9qfs8ZjDJLv1KdQMjJ68Pn/S66B4JxNPuD4vv8aQNKXSWb/H6o+jI9d6bGpEs/Mmgph91Myh95LV
R5ORq6uj6OoRmuSVy3Y8xj57V3tkCHKowcwIUOdvwRoHV7V3PoChZJ7pqnVF7Q4sjb4CxtPE7Wkz
bIMX+wrhkQh8OuzFHSmMSM2ZOLwM4at900YdMVozo5dz9cEXKsdAe66EhcpLU4PazQd2YMsiEla5
FZ0u7n5pRXeOeTJAu84bZIrkhDDykdxU4tybJBYC2GrNnIp1HJlPgYG0pK2roNBiH0iwBlWPmt1c
BHeNiY/xShfFLfYKOUSbXnRnxErp2JHP77cxSiquWTQFnQ/0usQZDA8xY9XqK7nAEZ9EPpOx3hCx
ASViT3dNfewOTVPDh7ZVvGhiWwoo2MRAM+6xnxZXSKgiZsK2JSXgMW5kfe11PrrgxL98mNxumYH+
8l98ISPd3zhDHbWOQUQwgWXyK8444S0lVzb9/5NGx3xkdAvqEExS5uQfKGmDa/+oZVb1JRCjnOcs
eLyAHqohZFyhlv3kl1O8ZKwl0HQ5d0tUue3yaufx5a59wdXyMrISt5ckBeda+I64hcjFH/weChD6
MYDKxQ+d835zHk8YxBYfYqBC+cNw7ymZ6uX/5Lja06jZjIGK4/SjmM3w6UjCqmPlnemDXg4lJDbf
3LXM46eJfbKORXQxiZi1gOJL2YcbuzEg48bpztFXmbawGiS1hcbfObvpREcdMbmldKH87RaFYxD2
5pD2miku0EiP5tudKSpDC+Li5nuQ5ja6LrVeFZ9vbojdBHeJwD28ync62ID1YeReTOneUEKZPUES
GrJFItF48hWDhgnraUudr2XbWtyoVuDXua3RQ/PXX+FmIHNsERVRPO5+QmKJe5lWZuQGRQidz9Ls
Ms5cLW672QuO0q0k2ND1WZt/znhStCbcznRDjZqpadY70aRo72zzIXsG17gomNNzvPhb3w+AmP7L
FDkX6cmSweZGZ+3zgak/pf7mB9MBdn6h8faMnPVcU9wH8sevnq2xEcM/ksTgqS/EasEtFiRljUzY
76RgQruHxghIpCf4LVs2w7404nNnS3mzjOARIEP97HrPtNHDEJIkU6XwjXHv8gTod6of/c7nMWmI
JX80CaKbQ2ZK6KN8znME/FXivSAdrVLaymSJNRE074Ilb5npVp9AFf3b/Aw/3GJh0Mb4Fr7s1J0R
oHaRmvEhlsrFSZd5PhM+I7MPhRVuuPflbzihAR7kszJaSxiwgqXepTDNtahsvX7HLWTcbo+ob7DQ
DutvH8mMNEJ2c1GgAClt+NRYLS8DH79HbQMW65tuNamurLo+40hMntBtPyTmFggl63QawRYJt6lJ
GBl/btbjWs08iIisSLjJNkXbQ5QR5RYeWcb24AzqRrsE3nNdFnCQoF5qMNs/ycD9xm6p5wtHwHDU
pqZX22oI4EGssJvdTJXoqozjZ7KsnNTNTtcM8aXv//JAo8+CK1Yoq8fwktcvWEC28HHjEA2PIbCP
J4PQVFN7s6B4IQ3kat0EktobGYt1RrEdKgsUFezibnpxIJK2irC0bMWV6O+1jfOhefy2pOWpmSAD
U5mXBAiWJpyDT5DOLzp1hdmTIXOg07tcDp2ylmSaNdjuNeVizH3VauN9A29/mFKZM9OF34iWs5pz
poHjYbs2Sk2DC32S5TpZrFkNzBQonqLfhQjZB0eCEu3S+tul/W1+PDJpiKdF0rjRyHo2/fNji4Uv
/2XHc468Gs7BTVgjE3jsxnIqFqHhtBXHhTnj7xWkxJDloEd4/SkPBX7uNeJao+NmO+rJiS8vyjxZ
NI2Vnh6H2pqNteaEF+VR/Tmb/nImATmdAV2/Bs9PLSzlrmCKKyaDPv12ZicX3qh1XMSoU1RiJXnp
/UYOSV39nvPD9Dlr0jsCQ+3wrG0wsHz1QZNTzfVYyap1EoHga8WUwUtYvQuoNxV2foP8YSER1LtA
9TVjKxJbxc3W9f/Sk0qzUh9A9vP2r/kpsYl74cOio/+hadsTpvadJuzYxgJ4NWW51D4ClGOBE6GS
tq33CsOxurIKTM0NkVKO9Oz+3ZOZfGFnabUhA+hPeFTAnxWPEEF3QulYjMrLQvRNLSUP7HQa3BW+
OKGWksz1W33zPHIvhvzz61ZPBXc4I4psCvOHXmlS/LakZ2kHbqMa+Z89IOr0n6BuW7xKFlb3aluF
0mgT+BozGGiTt8cIn2g/SmQ+pqI6fVt8RBqeimB/MVTADHqtoIyVU0QfiZ7pBGyrsomBha+dic6I
eG1+BH/vxzad31aRUOd3Cv9VMhtgsa0KQvk17qRQoCvUQUAWhCntjQWPrn9fpyFLLMFN5XbPBimZ
N34ZF7bF3Dst4ALHjJx7e7gdMLfeLq8d+aHYygTKY8v7rLuMdVhDx+nzUwkPliq70RNaEKTj6fzt
XANVnI/3hzJqqTtlznDoXRFAq+C1SJmBVsTZQAmWIjcGHvVgC7yAonxev5lpGVlio+V1jfb0PBPp
9+0JK1EiuuhGwAkeS6p6CEibweLX7xuOKPWfFt3PbUyjM9bb+up01W0A+i90LllElLCNH3Uu8Pk2
w4PXjGhDy4EkZVpCtEseZZFBkaEjqkYhX7gCbCskUV0Ib3d2PcU8lveojYTdZV4ZBFMMSFVdrVAd
xHBhcqa8wNotepAy6X6Ef9sHadghDpTgxfda4thBiyN3Nx6IC3Rj3YTqb30Qp9EByywWvJt/kjFc
ahzb+Z+P8fSzW7pDRTBCBWxbBTyTp9hMVryu4yTVtNG9xl3q1r1xuqiIuWrRhWNalgAdyXpJaOEn
miw2Kfg+HuwSbTEFGhGeuELCGrxS9kF9Bot3X1XHBoSVLVHBkK0nLSYqv8dG6o4JxWWAWHoflOh/
lkQM+EHvcLFe7H+7PQX2SPCVsHXgqYST7iGfCJcLexW2f3R4YjKr1UCRysJWPc5RmHv+Jv5x6ZOz
3D6gclWNs9gMU7A4PB0lkU5U5hN5fZ92tQMgqqok6okpal7cV+y3yDZwJl8FSFBlr9VMe5SP+QnQ
TEIPYi7/gLkiE+W72bNAKDUwiE+ywTELpWct04VYHxRUbu4+zYnKmSRcI/rxRHPCQ2ttSPslRsRp
dg0mFPz6EkkVlBghF3yrpipCu5W3FFlhJd1pi96LK99V3XPrI7SbFdAz7IQslDc4XYVU5fKfKyG9
OHzCF0C39YfwnJgrhhue5YaZlB94SCKL+QHwbsCNhaCl0BFJBOgOc/MW4FyO/EcZFFbDQX4EMItP
hSw/ho5Sj0XOpPYhXvypo09LI4j804oMaY1vgg4LkD3ZfCFO7zwGrWbtsKrzKpAdwVW8paR6zXso
A+dMYmFJeZldKt6eL5WiwWUhH1967kU1Vk9BDlPQFOyFTvUh/XeZRRs5hGaEDgdv2ec/MDzXHMTp
DIFWnRT12Hr/eCCEBDLYeQZkZuA89h3UFIrWdgVDzAsYue8Rrrc5zFXlG9qfh+akN+xgB6B0+Rre
E/sUq9tb5RE9wb0ozS9Q+ctYFjgql51rFibwCedQKxIyDAAWc7LgdFdmHiAO5teznz7jTBhmzK/y
sOV5G1g9CKcY3VuJEkvH7R05aZRprtwesMkBImlOekjZNQdXl2Le0BZS6CiZDgengeK5DmHDEnPG
xsqrrAT/mx2+2KGsi3EQhXOesp6L4TBq6JBWH5vKI7g3yR1+/TDZ25r/Q9PwT99Jbwr3DLGuBDv9
vc4dZEnk1lLUj7rBYcf4iepQA59l7DNkNt9+46y4nYaydNf/1ZAvwMjdgzBuXLxO5mclWnFzABBJ
fmPiM0/6xCrYiKthxFrWZpYQZEwk6NFATosIRSm9Pf3B+rK8Nvd86tSKEWzrqfA5jz7UaXlXTZwX
QkxHDcwninLPA7vYTpykJiOBBdU8DJ+ejr0Tj7TmcD5j/H4a1c/2IszW5MdO2k6ftSfIwEY/upMn
HGK834rnWEfVfbbvWU8xndhbQqy5oTO7Qr7wGbH2i3yF24h+OYsY57oUUN/IuAUiMzfJuX0wFt0G
4HOwRnZqtXm7ilzmtzpm0eUV4lrXIWlAdimyTKl1Z6CctG64+q9RVxuDAO7dZlTbuiusPu7uK0yO
nz5+D1pJyrlUi35uT9MI4evc1u68jlO+SMLLqjg8jRcW76osdbIZhAjHqaHDDAh+V4LsOfFQqxER
UezhA8BCo+QTMW0fCSiQzvKAGG7G5bc7De7NxS+8gH1GbTMEbN6H0SfIKw8J6hEOepelOArIZGJ0
YkdHMK+zIR8xW9PHHqbBhJevZdLuU4paGI/ZYhdUi1HPwD+E9UbBfVEwouaGHUIAD06PA9wFrdun
5nkiwZ6XUH3vLKOoMnL73Haok01fxBBcwmm8D5UrkxgkZOqNVjOpJ7sehMuzXNl6UwJkra5q6TIw
9cXK+FHgdqav3BCmA4gg1eInFauOvojxBtHPYsN74OaZVc+LOw8+HTlIiUWu9dD8a5nxQTPm5mpQ
VmMktwtlmJBTFjXy9FLnwcxVxtT3FkBghEevFDavTvSn0KMpjiqkgii57brmdFc09oLdGQblCXiK
TKADoV5ydGtk3ZWqTN9wI3T/oCA3tZOc9aJegQt+gb0BWX63Llo8YwdikQ/BGRlE04F0KHPAi3MD
9adEK2gciCMgjejPeEznUshBJ4rIueOb11AKdPjGMPx80DHwJ+6nJ/GoB8pi+oGQY7l5Y1+w70oT
JK6bvs0eKJTwSo+JjtqhcK3xhZ5pbMh34W4m2R4HkcLLTxS/oElEwz9m8JrWkdITiJ22PiIv7AqI
TwVQ/VnXbJwBDSyaFKOe7Z1XvXULLxpd/Ny8YZIy2tg59EURXoIyFpZ9KGwCKRJQ3KsLdZhvp264
PHPvxbR2mtisbS9nngGP41vbeqvlhBJEwwHA11ZM+UdeBOHYTMYKfhyhg0dHTw1x8S/Sn8Oppc7z
HTV3gwJJPv2gUebB55rVzRqCmFOUmaDGrWWzOiWyLgTscgmNOLluLEgMjL+TWLjcU9nZSOhCE888
5GqQNPxy3qvH/AIfm6tqL5mPrZcJ2exbLszV2Vb1Qf+3Ix7U91JTR3ZqJbv/S12r9AnzDvRMI3AD
bYKmWXhxJNU+QaEHyWLX2Bm3GaX4z3GjiyuB2accjsx+8d+3/btxAQqZPJraENShjKTxeB0WS9U/
Qhh3yqld6KG2v+H4VMoVcUByVqxn0GxEer8TSO0O1l4cINxCjgnJgC7cTUUf7Embl1xGoDegs65y
ZTp7b+rH1Dt9MzJUUJxL4lhY5bdU4AcHwl5J8LBHDA8fxJq5r9cNeZtHfh52wkAx9c3V2vBmYfmd
Ren+cjnIFSFQxve2aq3m97FYQOmPjgwflGmefIULzx53iWcCzUry4bIJjedKXrlq0vx1OZtILKNm
uYTwx8rN+Gb4uKqAGjHVuuwqyqYqZQ9KlyjWjXCKAVydLJxNhuICHTnkEXrR9zst4HV9jYRsuVUT
dAppkG9LoLMuHdxDRZfInZoRKBx/jpwYJZ3mOy23fi/iPYkbczUYJOqjuEF5gh8eASJcKKHieeCv
a2HBwR4t2dck8YoFoq6XTwOpQgQ51x6tRVYAQ7zzFifZraA9fEjxqYvMoOlki98Eo/ipL1araqFy
96/p34To8bXGEC1kdMTXR4ljZYr4wo8+HNq5sXbGbjy03G84ud5wz6wZCO2FWuZ6gunq03taU8OI
LX41++wO/KrzcIZHtDbsHOltcfTGlo5Nklxnz1NzPMF64dfmoVu2KhaTh46r1NYxhuifoxxL6jnA
I+Dm0U7LHcRlGHUOHx+b0Op0D7MZweTdH8K1tw75I5mA2GKBRL042R3VVgAF6pLalvyMCfpgfQ2P
sn15RfvL9cneSeqxemnPMT1Xf2jHgGBq3yn0sq//mBDUjFvPJBzZFN1U73tTl5Tz9U4agm7EXHAP
oKOc+FJh16XLBZy+ZZnaK0QVJCJd/ZCYNsD/WE5SDf4+KbZAczDpaa6+hEXDqYZR0+NSOfvOTb48
wtUXphbIZzwXXFbaS9eZgzEWmxKNe2K4/lmr3uhz5KmMUJXLRpV6m2bZR7MMFjmZqhxy0WjOs/mc
92ICVP+H3Y0Yx2ggyCVN84DA7S+4cgidsI2koGS2kXEJjGkc3klvhibI7zGePAOZYnWnGlpquc+8
W80KQfudsGzPO0pARNHVObZtrLBpgvWpXy+OzZFPU8pboQ8/OBUBB0qf9gFPsPqQ4PITyEucs0V+
H+gSjUsqrYUHlnJemz8l6Dy68YQU9e0Pt/PDzEMgm0eAdIFiDOi7liARv/envYTJm+Tt8+9swjtT
OnEJPDYkILyK3rcgCttjcNeAA1ASMafJ3rsiWZbTwQAy3pZkFn2tVK/2US2LQ0wZc6KZcRVpRMzr
92HlhyW7pxAvGRrqnv2B7sB4Fk7X2wZ+Nw34tpSCu5zbXc2AIImMZB5a2hCmS42zmAZvjfuDOEGv
nCo+nPMdVi9myh52Brl03yN5WHjgYz4USL9cVew/D78DRJE+KHZF+gwN3Xa9xz6BV/PP/+pRfoBz
SFgszG1Cb9Jd+8ValFMl6Q5RdQV+xylEDSACs9HeedSEqGgPGcxWZEt4mMKfghHgZfIqdAKg4YHi
O5cxLZymI8KfP5p6qFEFrP87ntbLGuDkdIc/HCRq0MhAv332yOWiOmjTUuKmOwIIq3T6VOO2Y6mZ
tjRc2JyEXuC+nsfyhBQ8GKcOPlC4cFEDF4qvo/m5IkoSSczRxBLQ2ZbgVjrWzCXNwYTfLHrDn/lw
P/P/bBne7B/Blz0iq1tM7CuwgguhP65UhotuKfVEjKQx4kIfRTwdf/VVY0uwA9gSrkY9pONev4qv
Wg7LAE4SjZvj6kEIyTOQBhqdnWx4hHBFeVTr7sNPEKYM1Yr2+CwSapfX66LIa7EX2QJzbIK8qB2p
+kI9KBqZQHywHRnswx4UIBR8u3kLyvC44QjdRIKU7zfT4ns071QHEKnyDD7RrL5u6NRbNUIn9wdN
Ig6mf0CPolvg+vwnHVq4FAKS27Toejbnsc4LzY95WRO5J0wbLCm3RvMfhxq7GmYW8xLpEBS3nmcc
Hh6dl50i0Hum32GawB+pY9aQL0lGiXYZUWz0o7bm8P2vzoVnsltnrJzAk1j/4NOVzFFXv6uLOQaK
RxuptDLqfRocePNWDoyxQuODHEzqdKETHC/I8mGzTT4ltgq7u1DbyHSFZjFT+F2FrRSFPn253Ibk
5yu2UNtZSLQR2VSQICBYqYFBTVYRFGa+xz7s5Gx6GBJ3xjllSBVsZfEEPh3AlKb/lmvgckKbpKOq
ASpmidtOTqM1uKc/6wA8k0l+ead2NScrJ+rr5x6TpT4Kww8AvO2Di9EtEjaJ1IbAXSRk5XN3KfPS
9T8pOpI4nJvn48lHRnGPDARFOQtoyPsiVbXF7GMBrqCarScRNAVZ/1GkjUakPABKWP4X1yejJx49
AnE9DVxYEHb1NrgCznQaYNb1UsOyOQuebbsf9u1CNPUvnOw5bolX8OFJBTJHqVbWaFCwc4gi39Zx
buj/D1JpmHbUAf7BE/N5sNHbtIjWp2APKbkvelykqu+ivWEjqSkQytbO+cxL3R+jew5RnHeumkcE
qTjRDNLVqqS4BjWLkrt7Wh71S3Lp3UuqKzNyfgzdDVWBrxO3iTz594eIKpK+DiFFa9HSQflPeRk+
6O/Tjp7Xqn92jdCK09Fq0P+eeQ2M+WF92ZzuiwPLsSGdiuC8HvGUyTF5+QfLAicH0JFJsc3xT8Q3
9RnNmeP8TWbUMr0GFTxQtIKQijeanyXHp0VY47jRFcmkM7+Th2Gqfh4MPQzC+Ec9Ui3dmxTIDT/g
kCiT5OYwhpQc5PFPuw825n1i+xEqaITYrTj+GIJdTTDVNYO7oaGLT1EotioT0AMfiD8pqPi0FpMi
1xouYyc/yWU6+ZA/pQIEvzZ+dJi/CPIjs1FDQlWFsm2/tz9/RyfCbit6ud4rnJ1YnKdLxfTtFXIU
BaoO/n2cTaKuRAEc8lUO8swISLwKfGjEfVpjTVFqDj33Ti+KFeJKaXw6omySEZZ1eHjri/AuUInd
yvkSDmuSauEwyMIBW2gq27/U2gKmPVjU3e7Oo4kOsjxbSZOuCHYJk5lwu6bEmI40gTDiK9OehVgk
y7DqHVCUB6y5vl1u/f4fl2R3p0otWHnym671WuM4Jrw+sZaAbxBKNxAmQuYIdHjJPSrWW4LDgCPE
vF1IiJqzyMmx/iDRrnLr3qyOw09rSL7GDhKqyLjeTZSkzDli5ssYCsJEKByXd+lgog1GKwjW69Jb
SLn8SkHyrFxNd7chYI7zYpkGC3b60zUtHQLudzPCfcJFf/ZehUJM0DwGLXAYy/cbIG0QN9b+fpGS
ENcEsXeWPFlMg2S1cYnmsAeBG21p9qpZ8qaZE7/4/z8WjHwXqO0Hrp6vWXTHLvWBfhOeCfmVOaQx
ZhsRqK+XWIxP5Z4OgzptR5v2QXrw4jAFpfPQIoqQwSy0NIkReNLwiv3dWLBKHn7ToTA8Fr6RVXss
TyGbUNHVy/oZNUP/ON9zf++v3LO+dmwHUxQbi2p3UhP+8pssLe4sDvHQlP4EdruiltZEzsZELQqe
7ZRRnWt7XK3qnxzpu1hffPoccy03ET5qfdD/qyGF+CfltoZ0Nnlmc0G116UJI1ZyAM4r2TcgM2gT
hHQ/jpAZ0Ppp3sjh++2id07M6pYbLYyDXlVJjL+wdhGAgmOVV1Q9EmgUOM/i6qxpMNFg178nYX/m
8mXSfD2V4hY6IW0faXZ66um2+RjvXoG2NYI15NSrzgctFhBfA4lzD9Q0u99juGWqWBnZ3Wv7MnJe
w0ml49LRHwfhVf+TgTJO+KJ6Qu7NUFhgNlks821ivxY/1QNtsFM13ZJlEuJMo9fYpyjz3m5LhHo5
kwBModo2j8VLOL58DjPn+/UtMaRW9LmwMWsGqeyqc4XdNukrHX9OFUnRUERAfzuH2DwTzC/8rJie
/8RHjNIvsENSsw2NozqAR4lg31XGWE0YGbwUWODMieQC38pk2J56WjOEraWzl32br7t31BZ/2+k9
VuWgeArjBClKGvc2KAZf8liJfjrrEIi3WMOYzRi7NZdtB2W4gdYnjbA5pio/7Ubfr7tQXy7nit0w
Hf/Q8JpJ/EQ8HP49wbp/bmAVunetuIEQlWycAPOj09P1ES2Va3tb9AaM+17nP0U2HvonJhiVzzpA
/eyi++b3cEgpF9UXFulsoAO44eVw4+Su3zue+MtLEACgKr6TlhbJSNG613LZ3j/MFr6JqWSkbURY
yopfG0NpZhCbWW2f5Mr6xLp2X+qSFBQjBF+Sqryvb6RLS+SthPgPN2IX9w/wHl6QZX4YKdFwJIt6
GT5FC0yB3CRYHnj8qY0FgBUqO3/pDTH/b03+GCiXgpIG6Fu99jRDrIcdQjrcuea/BpdUON//EmoT
1KWcAQLhO0eBu6ZpDjJWv6T5/OiOTqFZSrzCOFxx1gpjpVw5s2KLE05mdMmKeJhATQw17EfR2Llg
2t/H4+wQId7nlz6ETUMCbl5JgJof4zhaUSBJntLdWYHP8EAMeb+SS9mRTxODxAJjZrXu9cSpA/6u
mUEvB6T/z+raI3n9AR/z8JPj6w/AMU7BDOJqrUpb4f2rSEgtBCSH9eZpAgLirXSgHh+mRtaW3OtN
A36bIjoP6etuugMPT/4xfrK/tz0jg2UBDfvCoINWWOqWURQ9/g1iPEYae55GbxbtK3zJ1oqcUGam
XKKCbvtILPKMrpch8zp/i7/MmtJFXB2Ak/KRjGbrjzfwVXlApKRFUgqT4lPlDP3+wlYa1oOnNZv6
0lhEmQ2s4taKc0qFFCG5B3BSlFsP8nx+e7ydtU+9mA3vDF5viOjkmQE00Vh0ZM+5qTY0k2U9NuxW
LmYUq6HPcRYRwj0UYzkmOwxmj3+wFX9LQvvGVx4Xqp9V1hCliBMTks8aVcdlypUIMNp1kgoJZyLb
+3u0JzJMCM27hwIf81XmkPvR/bowX5YD/KWMpwJFJF9mux1euvYch/g2219ebQwrXE+xhkbSlz5d
MY7A3H1PSEn368GqCstvGOPiVTalZwekzjeRgPxAdDT6Bz+McK10uewJtIV6GZfKzKC/Oh9J0ohN
2IN0top+xcInLXYs8X/5e0vUgT3ZaRc/gsx3e1ZxXtdGuclCwzIllJg/x3E1ps56ly4xwZnTRzg5
YPKfI+ceI3tInMj+XR4hlRqmb7c61dqQR2rai5hCnSsv+LKl9Gl1TVPEXwTZZqAGVYgVHxzmGIrD
qUSdFfZqWz63EuQrk86eSbUu6RC+WoP1r8MTaMJlSHyhSAUarTj48EYCVyNsocLBTuWNw5SOJlrl
bRE2wpwb5BeUHBMC3dUoVMR7yXAo9UzpX7fKmbGUXVu2QFROm1ZzYQGWlRI6ZOA/TdVmqpHrQvbO
XsC3P7JNDbt/8aMvVYMF6RVyI8A+HOcQtFXoAhTFjGKyE73YLhbCNPxS84f2ait8OmOYgjALjdRl
WejkfszibwATuij4Q18X7Sq6eElQD926ZpFQTAyMh3Qqf2wKnh6Y+zI5ra8yg/b1BzuwrU59153A
oqJyluDXS1B/xUzLppTawQ7PBuw7R6nx/Ntw2s1i4++ZdvWpsgFTOgZbpDKAgoiaVTV04ze0syPT
trYBgzIkmBA503ubrK2kZQOHugO37ydGrXJMY0RNQRfom7hAYIuD9Ja74gSy2NKihA7dTFb65M62
ftffUWWv740s27YIYrABrRGm5wWhr8sUW4ce13Dkw6gV1BrgvDQ+woi//jt3Crp+srhdTzcCX4W2
jg5+ASj8X0yPOrZEKiPoqoPpfMHSj81wJXl5aS4DsEuYgH2imoq7+N+tfN0ZR77h+2K0NY/j0FJW
tpEQ0trMf+7MYp5gR1Quwekif2WWilgn0NM0a8EYeOajcNScNWZ1di0hZJkMmdrg7T/W65hpYJ69
ELR3ZzGyFrMcqwFdTU/4DHgizfUpVisYdShtJEoXFfTr0w81DIk8adDeB83MgaPYA7fQnp/wIZCc
tYhpuUhpdAvRHVGpcppVdD1Mdn9YTuczcGUf2qitmC/ETtFL3t50t4rEY4bxDvGLUn11TzYukP6P
Zcxf784dEZWIpFC1mPtqcSjKw83RvPo11Jzrh34ue6dtH6myQXVnA4LJj1KouK6rdVpHn8pzxJRd
LyL010+PFdRhBif1gI0yNXdrk9PRy+PUGxwOBD8/SyW6SdlE2NP5OICuoWKi2IRnU+8MAYu8NXQf
Wpq2G2y1V9RtCOJp9sk4Ocu6cE7YtML/Q9bwv2Rxnr9jiOylOO5IrfC7ugRlPBoeI8K8zN/zxrn8
jsbb5VT0jEUjN4p76JVG/B9n1H4xLMTLCKQgst7fAaMxgUeLnME3PgIrAo/9w0fpWRJgA/2B0Zaz
BFyhzsDfX+vzv/4hXld2aVlv8xjMMOXqMwYV7jfdPsqckv4qud6LAEBk2TtNnfXOXfI26/9rJcv3
1Xq5+IKlATCA8G3U6rCrL+tHr4dbraTJYXIBrYysVbPil70S4fKYr76SncTogKQYE2/70fnmSuoP
pjcbDPTccluJiXv+s9mhzhkU8q0uwDgBEOr+lgmQPbg+LrZDIdeBt8U88LGw4Lu33+0F6Oo50nMT
g9GgUnL7IaiNPzmQoK8si7aGFZkcYGFbLtCwi+YVxCWFtlP8vwoaCMeAxHwS7PNNzkya8rZXcacM
Vdkhs45P7rxBWqcqeny9+/S4x0UU1fXgXDPhv077/67K4Z3HCCx0MFo3qtzEnk/sSPSvv7s2B16l
9vyAMFJNzt+qO6ynamPCBv9AYA1ZMDaOtu+yEtDlWWAmUn7uo63scDTff6QMOg65Zua4tns4j1/G
qg6ZedQhzZSHY5kJSbqcKQsxNSb3ljlw2XUSVSin+eWrAUkf3aOn91UPkp1UYeZ+DSVxY4+kEzyx
sWsEIfGPyBaUuFM2qDBRy9wo9487wucKlmZz5KN4ZUTaleyBEJWPVoBws0ex31tKGlXVgH9Mh+xh
ETq/IyGjE4a9jKa60TFm7TBynNHnHXk+9eEVkJ13GcDiMI4VjysGSNEfX/Or4mQDliBKgSbtp+Qk
+lo6801gLYehdcmM4dkfgW2mNlcEoP0k7pXW+nN5wyS+Dj+W1Ts98R8Mm9GxZVoFyoT7kkwSuxr8
YJddFw2arAoCKS5wpjVcMkUyE9ylFSQ6PTcXGFUz1c8dG2o+bWjr379jsI+o/VyEnKCUbSOM2OZP
z92HAh9j8y/nr0XkQ5e2idOwkfxdI9mvDl7q382+hUAxo9E5ZCb0QSCLzMPa5/QbbwFI07YuDFqA
3SwqJQPszbpXj5NhdiIFtEKu/kW+NvVZPaKmqyn0nY+2R7YxtZVQ6ysjLXzZKl0kF26BUyTFZmfD
Q8E4cr3o87Rjl4cAJ0nbX/nvSc59+gQH7SiAvXKMvWt2Z5Bm41nt2+Rtt7UJGjI+u0u6DGpvbboc
iLcvwBOg1SILzRlAEoAXU0aEOr/TQ1TlUX3qbpP9o1EtZLstuZgFv8wJmE6Ik3J0e2c8RMBWYlFv
BrtBp3zBOBPG5nE62+2KSo6PQ9FJvvjSXiwkwVHhNzRhOl897nVi8WqfG+RC5H6Y2zp4I1RYhKzD
ggLQ3aRMFnUd19trd14CtoMJ+dKfXjegNBLfqWEbf8/dq9EWK724sZSloodqi3rYDpbLWlPhmZrU
zkxit07X4tJQLkSuLfxZbbi2zMbWWSFzYgmqu42SyH2jcb5F3MUqcibpdRMxC3WtNMYQWQydWBuK
T6GeNqmzLAnexVR1Goo3EgOT+4TvCM+/Xsz//VdODZP1JKSBNUwBU9Cf0NcOyY9l6e+jsjvHg1D/
/srD17b7F9cd8XwENYEl9DYJszqAmL+M+4OvhlAvMHwF89rQGSkLS4aYLlnewAnldQvSDXLbsTwm
DXzNvEskQsk1ITb4WrQqOVDopsKwMgsGeLOY+wNzFmkdzg3QDLQ1F5JuMlVetymlpeg5LT8H7GtJ
JqddhEkbEP3OFQcIrZc6y1kkOHG4cGGOPLQVmEk6j5/RuDfvvFKUC6UWRhFSBSZenk0mFHqyvnq8
Ic+GN9xUNyM0ROIZ24calvXtyWK+6gW5M9l5J73yZCdJIYlqmGe2fGZblPXqyXw+aE1FYUa5B+iw
ueXtH5W+miw+RJ054ucrxXySK3CBfMUDl+92zkJKbEIJ4OII0fOjC/uNPsnu+bIne22FBS0pFAcj
9NtZ/i8eBEZ9IUVcbji1IMLb8vwzrYuuCkfOA3Ibk2SI5JddHUhYxDJAKi8XF2GSaGMvcosFtBwa
lHSsm8cRi6rVhFqDPdU2qaE/K/RD8it0t950IknqiMZ6PjtlCdUY0Q8eZpdkKZ7Q5dHxJkuQIhxU
27GLyV1kq3PCAz8W3EKyhgjER2KZmVMwS4EohlZLmLlYHVcSEZuaCA2V7GCMEEaMkjuRYfum0U4R
3q9PXHlU5eY1Vad24D2WdBA9GCwDPeYotVEKnWnpuiDd89K2Ez/Uc8SFS5Y0buxVwQzVmaQG/bvp
ScutoZuGulMdesWSI46/NNugpyEz4Sj7YxLbQ+cl8WWrYnm96qL+C6S2B64QragmQerrCdnQhAVv
gFQgN34UmknFvADF3couk7STNo0dJwBdHTXaZwiJjKTs9M8nSMhSgXeeTVwO1o/Df8SOS2AlNXL+
P+z33xihz7ssnAWq9GSrQVxlHQxCsdRipkBaWMUTZ1ice/eil3kceeMdfEpknVLEtkC1pySV0GQJ
nCUw7HFsvPYq5shYVX6yMIxffgA1YHrIpmgl+x5WuQMy10ky6qUUT9M0VhPnQnV2si+ynnYaQSbO
Z9eX8Npe0WmgKxNALH6Seg7nBKi1w9EqiC9yODSsPn7Zi0jZS5FG+QiTR7z1fWiVk9sdSgsOUq+e
E7JpMeo/IyX7qXuScmn2kPmLlBwB0jWQRQ+cURrrrHrLqPrF6wrIdpiRVoV6qmZbz1RJ3xyUrnUi
MExHAIQdNWFVSeiCHp3l7TkT1MP7UXM7oGQEjqOGGV4gZQa7WBQJc9WriKCUXnr1AyOM1eHzvEXb
+Mjo1Z43t1TEsW8ed0ECFczSmEMvg26EqTGhO6G+QMuWIb27l95FZsBzO7APlIfAZkecM2WAyZ0M
jyI24opMyt+SrW+D3Guvo9bYaXOwgWaSzeRwQN1WX3x5bG0J313med8UmDa1/7Nwi4m/lOocSTZX
ZsPQu83dY9owSNxcULwHIT+GdkkGMJiNq1O+KCs7YdFOnlPkTV07hC/PneCkSUmokjRLKDKVkdsy
17LsOtmoXtxYGOODHnrsp49NKPMsMUjC+ZhPK78/1pXPiZbwjWKgjUBx2xtuVJJw7DLflDxzUM/o
KF7zc33pIeUsF6zCTtgs3/6hXRbV/YhxPRy5U6nsOFTItGq0LsY7pNapkW+Um6eibRiqac/9xZ4/
cPLB93bd7D0adcIptu4jQoXVOBIFzED5Lngbm4Rxj0Psb99YNUc3ppaQXTDJvS3esLvAV4F8VzRF
aclaGSbKi8x0bPYm5ucd0j9A096kK53HqBMa8YZrRxEnCZC6oDqFVOLuTeVroy6/clmN0QXgP+tM
Aj3IycvlxYCJacRrE2Py2xEf21PmxhTHM4yx9WOfyjO2+SjwLJI18c/HI572Pb98AVQXnjwVBGDq
rwHk3BRF0uY/Qrf6uYDsg3B2ku15utEUBpoRHv8ht8vla5qggfwGpZN1lmgI7xDwFauAnPW7Mp1P
OE9BvreoqnxTdb2hllGudvju5zNsIEaoXWyW3QG9tjeJQal/QbB3L6cdue6f5woNScocwIfgdb3w
SIO63f3vtdsXUhXK9ahF1q6PXiVTmhxuMknNNIW/H+62MFWpirsFjCs6XfapimWEQSxZUs1ZLG0o
zsxG497NrTiERFimPCIJ6AZXvqmKfWcYu7SRk5a22LlGt+wuuKYTRfKlKiZzf6/3pvxMtAPRpQDC
nLxuXO70CgJ8JicW2zIbPOzMV4vpnSzcd2l7T8PgJ2/r8sbxx/nXrx3xcgzimhwMmajf1CnuUh2M
47nqxkp7B8UoR5DBJNwgVwXH9pgC/1gJzTWnMcVMvtw8W++/GMJK9BIFvpJSn+m5O8UQepO5C430
UsFo5DukJT/N6Nh3OtSkTc19BXq4uzMjJl60BvnIR4w8aLQTgftsfvhxeAlykwcWpP1kOWD+F+Qs
6K5dE5Hxr1q8JSW/Twr+9OLG0ccUHzK4xQAlf8i+AQ7A4thCuR6xhbm9Yd9u4TZvl4voNO9fjpmh
TzI3W0/p5lcORSNFuIAXz9HJar0LeedhfY9NzyLRibUDG8AunR2qAgaLrOBzSkTyJPO7W0P94GVR
/VKi9fAQBKYlJKUWGln04ZpaCLDdYahdNJuqDatrkJYyjZn6yh4JPquCvADRYu5Gni1WDgBmCRhD
ijUnve4dN0H1Sf4AH3lDj+YUpvXRjio54n+eD8t4JdH4Ux/QsRFxgBcQmSDpVEDJGp7IeJXggs5p
fCgyaZlt/6cLbMMomxwdNXaMpQQNAtoL+wxUz8zChLxcsd5AvRgg/vLiKnc8BUY+Kblq8Q/01M0q
gPtVVhfWSZSCmEFjq/bffV89V97R6mNANaGj0PngOMXkqa4hKPAvhlgrXV1TLbkOzb+SSPVRWGHf
BYPPXEhMfXMnrzzclRLm54C2x1tRylEtMcznE4Z05KT6hqSDRWx5eYEEqNGE/cQ399QJAv+Q2eB3
5YYpNqCnRa+trovygWiGEUwAMS2QUtb9wWixEXdsaaeM9jrW1cEFqrND16Q1Yihbuza35+PuNEGq
FFglCUPjfuZT67I4UzMc2OkAt5qhJjsvFLj4S6iDx9J7IKiLN2nuBfTLVSOQxi9oINrbeRKSSGsr
YnCpgMALgeIlJKH+umIROAnMFqAW6yX7vpUFawwzIFxSoHhskjzZPqqxIOZKjt343TzR0nPpxC/e
r+1N1wnt/AOcTDEATQOO+O1ZNa9CZWtddCCdhUUeBgYZ43KJC+n7lLV3XvOJJAxNrjwdAiBehWeY
a1uPFhs5fb4RBBhdXMzsxkF0tcTOWZ56eYeIIkkSWGzZMF7NmcykDpvGyflthnnFNCRAHMPKzMZN
jE5kKxPfO/m4pYSqPV6oJsTDCOdzobKLyYw3Rbfe3Ah0xJOEuaTVfh4MR/l3JyvIIXWyWs+IV7P4
ZG3Ha4x4ql13G6btuJAKO8jzt89hgnK0NsRLDk7iwygsXk09SxDA2JTM3rZXIHZrsjOUvRk5lyCt
CChRw2X2LCfvPS0LwtOTo/weqjCWGkYJBQmeir1rrUsbnYDcs4bm0M48G7NAFuS7DKc8hKwuTxgY
O1GZo7lFmCK8UOwEP9RRiNSWt1RwLLCPC9T4L49abmxnXQoFch2Hu59dWxFGe9giI3QmCwqbr9xl
n1aCiYBgQLebgQfZHck4uNa3cybZWB17NH3UnkJNXJ31fg8V4yWap50+EsNioTrErphD4BKANhkK
wxBA3taFx5s90954KJe/XJv04O9GJVALah3ytz3TAn5ovOdluE0Fuhe/QNgRMf4WAYFrl1Fnuggu
zwm/yBbXp3nlM606x71wBw7bJsNCeKRgIk9VbskL0f2WfYMGgk4XHws63Ndig6TTJ8yQY7N55WTu
e/nZuMT3ZCc2BSyfGuciOMLtsP/AIAwEBzzQjK3xgRZimEXrBNqkJVWwQUoXKeHdVj+Ml1fsfQku
Iticjc6/4qBhfaShT2riIPIC0hwMD/waej84x9Ob/gGPVq8q27i/ZxYEz6hk+F2VNuwbSK/qpAm/
LUe8g9dYzKsgaBUJkS1gyWt5NNEPAmyez3qo3F0HwBbomYin3Tlf1mBGu0NtT2+Z2j4LN6UGWc3z
OkC9AooTvUMEQ5hEYndgYl1a3A8S8v13CPgPVpGOePULxaKxIEIbyzrnEXEgD8mus9tMkV1sJ4U3
zgBcYDn95lepw+m7N495ZgpKYkQCbkNQviEGQ29d6cjJT38SVQgqYHxgEiASkmfbDLnZoxSVQope
a0C9Z2i96/TIsk1aitNxQdccyGwYJthqaUyH23ayWMqeQIAyBXXdvL/AGcbImcGAWcLRukjd2lXU
rS0hZOMriQJR8DqYFviTwQZelYcWX09/OLM/Dr/r15mFHaDYR4qoeUkDJon7PfLTx3TKK5OcqakJ
AARAZw1NV8v1cYRdmkqbI8sMnREUY5A9NCi/osZZDp7Y66sH7vOH8YxCa4+F3fAa1B9NthQifcaf
6M1yAbbMcT+ns8Czsg5bMeSmcZTTOsbY2wvsyxNZ5rlc+eA5a4FWuQP++ey27n+HajSmhD5W0eZw
8st+rE5ZI7ZeHclJD9dOquTZUuEUzDQHpNUH8jW4pPu07uvnsULAPHrLqVft4S2qBGDsCh3v3szy
KwaYCDKrGTLy1sQxFkE1cj1KqVbKqk7buUDQb5K1R/1RHBCowAajktlmj5TMxYgT2SsRuVEd6Rc3
1ilUmzTExDSmKjJ0ZfbG5UsgKuKsNUWG0wWM7qfWWcA2zaqDOOpNNUlksCJOUSyES5w44CVM2Upq
PzgEBlfFuzChk/OjHesEptDhp7wcIO9uMqlWw3LIb9bsuYXuTq3F7ObysOGzC7B4bkqd8DCh6aHb
OYjcpYsSIiuNDq5p0eLJPdrjVbbe4cU12NzHnfIuoce0TCKg7eFrBDy/J00CsObc0cAih88lZz7t
hkxtfx2aL0gAekw9KLxVF2vJ3gfPBED8o+6Sq8AIGh3jhahPRtp0eisFBvjA2e5Tfut12tkmtu/O
pKAWwfFI6Ddz5nooDQImc6s40jzy6ZHP7JePg9I0pqTppIlQgG6h5sxnvW68HPON6aL13T9oQYI4
MAr5OqXDXhYfbQO19CTq3yaHZT0Lt1IVYBvbfMcrkIyyx2F+74bWG84Ds0fP6uuOiPW+yzpMtbin
VdbxqST5oXfl9r/3EAQXr00zc1fP5+fmrQvCZAc+1sKzNerXShteKN10ANtPm4p9e7FaxVmNallo
MQDbG0ADq7BQccNU4pGUbuIaxGMPWLfTz4aute2kL4sRmJbBL+FryA/jVfY12j+fVYt1bIvKRZDB
fNa/LfvbNIu5WCE0EEe4PvT+80rnS7RO4s0o/oNDZe2YYaoApOhiixY5xrS5yAu1fRSzPFIR1ReH
u6EykJ9W+TyE6qt7128Yw9LMEfxs9pIByabkE914eK+OJqLwe9gxuco11i/qIvqL+garlYCA7HQL
wSH7O8nPyd9TXXxYMhjkyBsSa1GW8/r2yOh4/Vba2ifHFoUYZv2fm7Vu7th49CejXaV5YvmbuiGl
9gVyr5qhZcgij/HMap3Lt3GS/t0awQDNq5wvz179jHlXqsci97vX2VD5lU4afqZz8yVV1ZMd2krs
QRaKXhvTvmKatK0IA3DB3My2O91nps61yQ0CTsrhedUBrE4yUHd1taXfV6UYUNXLynvdwXz7qsb2
It2tFMPxdEZhbiJOncEnPat2XjzevaOouMZ3biGLkIiRyIaJYIFteHWSGFN+m7PkjXq5j9pNqAg/
PHX/fEu6YgcfVRFAd9DVWMzZqF37dBkcmw3S+oYe8h1bSY0mcqpvrDoA8vduDZCvGGYk/Gwxpwsy
xzqm2B4HM++7LK68jLsTpdZFxMgYIcXTWkAyjyTJyid6lRvk9sXTQYh5/5H/i6tGd3cIUdxie5az
tEOhA7p1QwoVLjJBYEM+j0BSBc0WZlLRi4uWWCEvXwJqBVn/TeK6JWrjY6Ky0Ivufv3B2Q/qClUz
AJSnyVMFu1FRPAAQ06mncULM+1LdeH45t8iR2C+lEW61zLeTgzkp0FWy8koP94jyfMP+Mvb6Xvxu
1IIIZwArNGpLnhayt+UETchUAMLE3wCYIM5Qz4D7HDjvSxBaMmkZObn+MEaZOGo9jmZm9N8IibyG
dVXqwsNOZoE+vicmLAp55yEmdC6+OSID5jLXOVgU2LrTrMT3ouTBYKttaHIEymAEVYR7UcF4o+UK
J8On8v4JhTQj6KVAaTMb600FZFY8WugU1XXr8iCR8IVLBjWyHIW8CzbAi81yZRhT/px7SlAHxAxB
7cQFdN2p5TeNji97rSZV/Q/Irm5H79rky9SyBm6Orei7fw2SEUGGAJU19VgeD9I1XGq/gb1DRuvg
4bTDMZsCktHmbnpjC7eZchCXLTGKHra+gna1sPHJDqyoB1GTC9yF4xRd5xY5jCfXgLpvGxjmQl40
lEyCmfCxcsDkv/KxcfS2rR1gO6LdtrmFHx0HG/pgyHgYSpr+vfIjNG95lsN8h5dsy4cu7ficvLSm
uZRy+wSPSr+eReG+sddoXI9hgCW/tR6+0UoEI45vsmjJnZijsnGhS6adPecIDKOFDZTrWIW2RoaB
FzqmyIyPQw5SXFjvRfvoIpsaUPN8osvrHF/eqXdTyPHdeGc5lG5DCnAVQsVqecHqtDAMl4Ayln1K
5/rmmtEUtdq1hZtRPFvaJEfLZENMKc0tZ4ayc+8S+RzUlxmrfB7Jfx3vBwBs+DS7K+KxSTpzGNkx
ToLsOnQrMUx55POZBOA94r15FZp2JPpUe2ILIY0xb21dIcEsocA3AChTgBB7PhviwOIUvIyDaY+g
nEL1O7ZNQiq7RioovhYnFVS50tC90BxcgNKKF0IgWcSF8zC9ny2Q7ZhQqSSc1Xi09E7sv5dtYg3S
QTW5AjNYBaNKHLSgv51Vv5NWWvfC6HpWeItYhpFMyR4UhgZ2nIVaPqHmq+T4aqUrDf+3REsvtaqp
JAtuL8FVJ0pFIyjwNgICPgJA67JsK83o7N0w2RjRn+/Jua+DWn6iEwlBIWllCP009NwUJw9ZLnMb
lWuN07N6Qjj2vbpifokvhNV4hAWe0fdQ5tJSajum7YIeyjRm50qCd+uNtgH+U2TkVZ7/bQkQgsuR
xVdlYEpFlBdsDPbQjwKzS+M9AkImGtwz0chqFqu3njqNIZ0GMNM7ks7Vq18k/iPYWU/Fc2b8A7lA
19YQQeM70wRHzTNChdLrt0BIJ7h6bPLmOhvCZAnMFdMNtiOAglaXdRI2eKlxkXewEdq219rF5fLA
x+6eiQTGu291qfCEMnf3MGbSyGfP8camIWT54ANzytqbXXAo3n3p7Cl+H7Np6nhlBPHjr1lWENg+
zoAJgI5qZ8k65a7UVN7tqkpoYSkVV1ZvdPJadnT7QROP/Jf5mLb2IXFnRsW8mY1NPaR5nkdyIeNY
wSZaiZFM8OoM+rAWOO4qBsK9ROfBfID8Aw9wV2RtoCPLDpuxYbjduqZ3Y/4tlbuCXVh1FcXAktkZ
LSCiSh4d21QooTyH65qUDpx0lc47LkFPrlIqLLoB50Z37t4pjyeiXHpVPrZSMsKIcbHiKmuwn6pa
rbAbn1+dMtxZsJvlYFjV1yMMsrP4C0HYOKu1wN/7LTaT6T2EJOrT89X8MJ//XYLjM62QBkgwoLR0
UAnokTvChYNk4AfWNiSSHqa1lceY2zS2gt80/ny6RYefS0tK51NvJVW9YeUiVKnP4ENrZd8ckZD0
/nz3qNnh6t8KRHm5qWiQedgybCDqjpiNHjf0LU5RWb5QAyTiew68L6n1XSW2OOtxxQvdZEyDMgGc
RXOXzHSYpbGoAtj5VX4rtUAi/dlnQEQyHDLa/iQIsYaRPLIhdl7+HiGthOiZ2FrgZdYxzvWtQ586
7DLfaZMbxqKJwK1YFy32lz3aOvB/vAPJ2tjeh6dOVJYP9JmVHQ4qR+Yl6btll+CRwhwCmUv4jbFs
m7Oe/CGjLqQeRLmg/KGGd+0I8OqPjECzceFrBofJhKQeVRXUHyDPvN8t9C4zvXF8YTEapHSYcBgy
ktXDOB8OfRKhkV1+WWYMVbnBZoPuQCPs5MPym2RdPh04vZBHDV1hXaTdvDKYLiTv0O9wkISuzJl2
mEnrGspSQvAaY7c1enVaAjQo1vVZ+XqEP1wpIXpsniSC+/Iqc/tjOTK2qfAcC/3/V0aMyYbleHvt
FDIB94Mkkw+gJ7Bbayiz6tuKVaBwUaY5dDBRL9eAWgj9GQEHyXBdoFX6jjA4pCOHX20xY3J54L5b
zkbXxqywsN1OjiXdN6+gBE+rkTV+8gK6A2lNFlhm/CE92zrO1JiqiDkonUEvYuu+JRsCHqRiR7zk
ZHuwQhUuZKT4jF3AKJ0C/GNyc9bTtakf1cfWvHPWm5cgql2GV6PZHfiX2lIwt9hAzV2v7COfmi1s
pW6Kpn/sWQGGPeQ9lleOWdfWvmTee1UGZCCFMuL25sEeiNki0Ve+iXcDW//LhKgeTa8T75aHdzV1
C2JInG2xN3lr1KDNrmuE3I+iqDNUGc1GFOFGyCNr2HyccqQWkQiAQ5+P5yfa3uYdKKiIZvsWdczU
fc4yHfpp+8rpE+mAdow6LgnuuPY/hcf6Kl490Sgve1bAl/tX8Rb6YbUKobOWeSN61/EYfAJDX0cH
awgj02NUcE5R6Nmv8nt3/YK34ERD8Iua9ArLnLD/c/VyWhcBJ2QmCGx+OIdDUsJSof1envxEVI8O
BeZbPqzR+2m/B0zP/y9uaOUaQLtO4EvrN3UYp8HlxW8yRpD9GXvRQGDUDA29ksH9Uk39Oz8kNJLh
aHTe0vBV1iQurtDUO264pV9dwNaB196FDw/OjSGSCd3P67fbic/8LZ5VjM5JMcTqbGUWjp0mYMhf
7SElbpuoGWbh9AX8VR20Pb1D7xyXec+IW+g7uSWFGSU+HGFv4H6E4U9hGnZ/7g3UfgVA4KwXidYt
XMMmCWAQxuo63KvFqR0ovRHbRpszMpJGrApgD+j74PSiuhM1NBoWNWUtYnOoQs+fsTrlR0S/mHCF
HPPSMtMcGd/CohXe4G1tW9kcOxkYt133t7xm7kR4fXd1Dt75mdFaJRD+7R5EOI6gpWZLtKEPVlAZ
PYRf20lTo4C4x8Q+G7E40sJP4RNdYZ+rchym0SFnmJ4UZBc4ZLlxtUK6IPF5TQ4cqXCYdlQuFQOZ
Sp1NiLh2kyf/nzZmTSYxLfHcWTV/LGa/8vNdM1HRKTTc/zvKbXwJP+3wPGX6qVySCfxyjQ5NIgz0
bgQNPfkJ39N24yKVtvhb5NDZYnQ8PHXCXhcfWlCQ4D+fWVeAct/NDfIjcnwgoUwJuwfkIChEzgHJ
nmMNPYw8w52SRe4Rg9O6HLxy5GJKzimm4rVSBWhp0hwIbu9D13N9ThfEedr8pcXN4mzB3ugiJKHJ
9FKfvWo7JJ+qbuynsKlv9Q/ditzetuqbMb9D16NgsgqDgKKxu4N6ejDCIAe2aa9YQzbRtC2uNtRV
qZubA1Jv73PupnwAhvoBEGXQlt5ryypvoj/M2nGumEqpaWE7Mx1s2yuypsr+Vc5KXPBkj8dH3eIQ
lFbNRwl8wUn3/RdpfnN9UIIlJKXR3Jv2XTSyKK+fBMFYXOn84DTD/d4ylcCL65zy76Nl0mBGqzAn
s5Xe8DBTmJ6NZ2yGC1a1nLKBtiMD1sPzJjRq4FuhtfI8G8s4R++D6YzHLtNRY7R5hiKLwyEbF0Gj
ZaqBX1Kh/rSa1gudzkDwF0IMhmROdHWALKfqv4jAc/j8mUEy6+9XuA0qvGOVGLX98sTKtf/FoROk
8/iw15c4YEAIYJ+xKhIYoGPfIBRNlo7w6Vt2jZeLOB+4EXrA8AKapzH0FyfrOLaQBfYc98lfVW9Z
nGuMtiMPm3gSMgZjLsKoWGwFE19UKJ8ItBSmKfRcZ/EcGVle3y7IaI5w9hO6fa16CgZtoGMaLgsK
Aqv9XeBFDa7XitWDE5BG883dDH1caSgS+1uj3vdsnxItsupApalGEe4VO+dH+KyqmKIV0LDg9gFb
hBQAUj3VscC+mFABAJtXahIsSdKeNoK+cKbs3aTwwISl/DiX8s4Q3foMzmiR4+ATPdBbEsnD8i5A
mHPVrLHIjnMyg3pDHR9krUYYRYaQfWy5IpFN0wWzV3IY/pMcAQDU/rxMRUsaPIfaM4VLLnKxPwB2
usEMGly9DUwYrY9eCFELfoOq34GSfttLMwzs+tkzHPmYgHmTGp1tF/A1G9fXryOD3wqjNxy630RL
ZgfB9dvu94GY82xH6gizccjYBIEAQ5D4cgkZrIQVkmJXeVhor1+Tmeuc0G+B0h/fOwAPzpGnnug2
ptKsUt1yXsPWOg4HuezYpVaYTk5PklxN/zoM4Pu4hpzGABgRj/rzdpmTXuXZNepe7a5HQO8odJtz
U6Z/FNbTdMot26bGGmy3zN1oET7QopBBswSs7VwbJ01nxo4Yza8gyCBTST3YYBctUe8+dKHp77qs
0efzXGl2PVsj5azSE4EooqagkgAJKlhyMRvl9F3d2wNS3faMua6XCPu2NQPHWU8XE94uUdcnbWEJ
YGlKF3D46Bz9t7qD/uh9O6qoXnVP6OM7DUmgOp/MevhvudODkOVqaoeH4/YpoUtgmtuYob/c7IFf
Kv+JnUtzUoNNuA+3hjA1n955GB5DJmR1aQQkzlSrcKS1XV6mt+SXALM6GJ8uva7d2ZdL4+H0dBgS
D+7z3A5jGO7dxiYKCcRQze/CMoixRER7FearWq9imvRKkDCiOeCvehKuZW2+l22bjcw9h+aBERHZ
5vgyPkH0EIZ17+J9f0rm5fapQtW8MW8rDinupkc6wmUCmongkgb7UYV+4oAJAUFJHobOIoKQQbBa
pKIjhVFhYKdwxGOS+PNpZjBRLz9stZzToPh5x4SY5OFpgQZPjgUB4qG90FfFALEQx5L6oMc7H2zq
rVggzAc8UD5rwpm5VWWcZ6IXy9FIHeinqCotPSLApfl/gDXXVYeTRppXGjfa6bLBWm0Gne0p8bKf
fDxk4AVMRZqLP48SfD7YWa5I6g3PXCssE3aFVYjjQDfYWDEShVvjXSr04UtQZc+tsC/5s/kSJZMX
JSeqN6aIb85xsqJLhvpuxQJTmkDFSRvA5Fot6piUORsd1bSQiv8cdNAiGtye3K2DViHsRpHhY44x
vWByaWCn9xE7SesukB4H6q6fAxCTc9jTOHZoSr2jxH2Wn5ZzzEKIJ9wXOwcmY2CxcZdOHK+Kd2EB
usjYjlksCOJLgVL6EaaX+dY38aEULwYrAehJGl2oGS6QFDCAmLYi9paRRntCY4ZMa2ccF8YTxxeR
7lFpkI0OpX7oeIeK/JeqqjrxiAo6fP++RwC1pTVqEyijAts1qX8cp1NGCfawykILgg2HLxX80soy
ErwVJIJhDdG++4GzI2P9x4jwsEUwWyTeFRY3/H5e4faK3p6A0LPKfXiB0yLjF8jxZTYWFhr5bWnV
bnWcWK7JyJw38ZcjZ+EPDmEVDOCvaVDlo6+bMkWpE88Uj0isHduXt/rFLwgYllPHlW9TUzRqEgJ7
6YP08VtT8Q7sC5nHiv0ohpHAJ1G45jU5BIlkfFViCJdxpuVuddIjMG+uG53hcVe/Qfm1lSqmMt7e
tf1YcMuzDvyvtlqJpOH0t7EPgbPVTjHUp+0ZBlvq5YBxBCgqBCm0nXGXunCVQ12eNCRzfBZCUVNX
XZqZA0+IWT3bOs8PKOx5f7UyzhsTpOCI5C7T76SHiHWzjg4LTRRYTk4pB47Rq+e5AQ1q2+4DdTxc
9OPG8smEb7hGk60mT4dSnYnMcyb8jspAq1ATPmUv7AfLF4DTtVOdBgSTV6EdaHVutZJ/TWcTCJAC
fD+Y0hjXMf7It3Yk8tDN/9Tuo8u7ynm3jpXP1ZnNMtiQXj+l6s9Y6G0xWVgM66EJWJbS5D87fh8y
CL7h6fCScKi5Z5a162NoHDYuhThdQ8fiFS7WZX8ODJW6XroZbC5atP1beZNkpUVWp5ajpGyL8Cdz
WLvNCb7LFlg2gHGHsNEbEEsmtGRk89Fc6BktkMFhag52c6lJEgpVxxYjpwwFeHOUi/jtfr5ktvpT
IFDLMur78ii8L+s1DJ6ObWo9pZpCK8IQbj0vSA1pZubw3qe7UfCK4YX/KpLLUY+JJI09YYzD1oIQ
9KFCtQtvw3NjT8biKXmfzhxFgbXUEWI6hth4uI3/Xp8JaLbkf3J/JBhG2r3xAWfGFcIaTja+LPjh
3fjNRBCWAP3J6Pq4EnYPvUgb0a3xmshl5PZbFi1Yltc+Ls59JRhxjU8IXQEmQpd4W5vOuhZGNeEJ
tgaS/9KKUP2Kn9izQ8a1UJAEQpj6armkz171NjDeteUoSmsFXKDiOiXjz2ZddtSBtJhyA1zVjtsx
14991Ak16ZJhd35whlDTJ9fW5POdmtjrncZt6qUU06O8vTYPXzRtQsTSBNwuprty89LK2IbRuZqS
//oYKnPG3NhpcxtyPMQFMiAL6GsgSRravVLOalkzd68T6odd8IH/58Kf7D+SEI6/ZFnXwgGDUzmD
5JLdNH4kMOFHhrOhwXAab4foYE0q5IzWcfw51zeQ61xp9RthkJmuwDKAGY6GNVMR5aVLux/bSMch
8yxRH7047v60+Ixbh+xcmsAyceKySWWDfBIqpgXu+7QxNPmfG4WB+oJmHTrEXGFrtS8HXrWbgqKW
Yi8J0/LJtVMYT0pM1AtFgqlifxXIIRVqpB+/hRyrzVHxeAwxIRhDChHYQdAeBxm5yfX648jFuj3t
btxL5VgK3yXRu/9t80Y2vBxFHE2QEAyeWa9ywsVa4pcHGsUKelbVU5SYwqLHWVY0goNSnOkSpze3
mPyBakpC2ADZQJYyMr7gpXzw3de19MqX1ZAe8LE2O6aQnR/EDxmcO4+J3wCMwHzuAiS3CzQCNzTv
2vNnxQcc2yK8Q9g9dpTvpA88Fggx5KxFlaD55+bGJGh8ylOffyZojh+4dUBCIGeln8a+4VXflC7q
+4YAnwBjOP5cJHrRWIitvlJ2W0dvrztH5gMGPzG/Hs1kxixtjG7uv+OrHb0X80AaMSJlrvRaf/r9
X9gFBU/4WMkk8rK5HF4iL/qFCSLasczNKUV3rd2lov3gYd5F9NWNHVOdQiKeJTyKDcZYUFvhdqNu
+dkSqxGrL04FTLV5PowtAzh18eQNnmvh2HvezyDEKlzwpWwY1fvSxtQt6PO8V0nsV7abp4Jkpkvs
Q+DxWF+K2ZbCx+QU7MA7x7ypzs5ZXvWJMhKDHfQJohluxPyYiIrD5xiKk3aubproniCTvbih2GbK
BIYbFzvIatbrBdtZ/F1qQ8L/SNfT9eiLQHlxU2AKOaRryOayrhZDByF9eiVvYhWaLxW033siiut7
Ms3jm/9OXJ7g5yErsQE7mCR41bAhEI9Id7D3cn/B9/B4AzCmJX3kzLWszDZuk1Ck5VgrDpN0GJzm
eas7zvKmBEFgOSf8j7LskoHsy16Pq8TAntyxG2VmO9ZoJOqnIui/EOpu7q70NMESwqOEVze0fkMF
KBo1jWufY7VhUmP0Ps83vbuIMOFpGGPL4qDhdJ+CNZAFkUtkNhHq74mXdNDxlMkDDjOAUFyCT30j
JIbQ3UHgL8C0RUwRsK7HOQOHUf2eFn6g/XfgJTFO3bGHu9cahivl08x2anWWabWEawjXJsm/LU3E
l0GqAEmsoOeOfHqlMJ/Ss2RybpAxmYzjRzta34kBY5Q8QnJ52duzwDdrF2dHJby5eXOn+Zej9yZ7
ptQlbU0y1AcrDNg3WIh3T6UDP1NMAz3kKA5H4Lf3mm8Sk3Aqqompha5J4zVogLNAj6y8m0FKrV8H
s2dStGLrSw4ccCx+AlWW2TCY3dYkqywm/5DesgY8y7rQKA0Ff/2VPUTqRzr7hDXpyrgYWB8MFRhM
daAH7B9dw/goR3eD194RH4+BW5h/j6+VRobc42QhVO9dUIwDrk6uNhKsppsdjAD8lrsamgtODb0T
eKUHT82cQT5kNe1dgA+1VB1evf+8UgAGb8n7AySbu+XZtrOMhXEoBeGIjHisXuotx9YLZCeLS81R
0BuEkV69ezr8PMKKlPeyFFJ2Qoq4X6cxgGU/UScgdKEai2qcY7Ub+8qjeVZ3Y3oH5TPnKMpQWMc6
xcIHhdRARSiAVmkHrsiPopWEVY+dJ8xE2Zi0oJTSwV4zJdUUVG4R0+8lla4/00AQe3RYsHv4Ah2C
OgIcXa9owfozFLDovpgRGgSqfs4yFjZBXxEd2LxY1UWtjA3IiIFd1YxOSoCy+lYFgPGPm3Tn4jAC
mJnch0ImAIn+g4FKTfo3EYvBRAHAdK0Bqdq8eTISum9TOnmAE6Te1sGG9iDbngdgLmQKwudRXAau
WYUYPMzrs5O3V/GRmc1Hcrp2PiykKH4alsoAe9bKIBBNYf8KVcfGrFvHPBnsYs2reSHYVexRQ/x6
NAuPFK4Ic8V6i+C/q+SNs7irTxgvZ0TFos1vfyG4ylIpdGXJozeQRzIEJOwtV/Mf3CYLdaNLKIdr
VWs2v0MFzPMFKefPyxG+hk1vmLavalC62TXOgtFzuve8EHh9EuHofMdwC/Qj+SQ3ZG/ITvnRf5Dl
i8nL44VTcjVISCqT5HRdOQ2TQoLgmcjdcyHv7zz29eHKyenQo9eG4BL8+Uen6GVcNrrf+MGovpDD
oOFvRFEhrYQ4MSfhyLCqw1Pn2REMWfYSpASuCExm3mXPbmHpKddmIHJZxEnDSCxxrST9+lzEDj7W
PyudpLSDyYWZP1ItLmZt9LXhs2GANJxkNFqtoB1htwLfMBmbq1W5QBpInH8ja9UclYakukJ4EUAH
yUaT63940ZjGCebT1rIJ/G8zNwk5fOFR6hAZflfrhMFBu4WQ0Q5Qot81lpMQB2zDHJ8bjMjUjTvi
bjta4H7uPo0IhJmx+8+9BW6kapQEGTuLJoJ9KxXmiankw0LkuVzFDNFIQatQGG12GvLIoN/N2vq4
vaW7m+jCf/jMctBFieVJd4M94bYZ2xplZjQIiMpuTgINYRo4oCQSyr6WaIzl80lsTQuRzqrYthC3
K3ttYjVkGvAl6BzD1kkuZO4rzI+I85AujMxBDp7drBdV+a8zQZ8pk3QbkGI4SJC4OLSIjtiKI4rL
BJE8w4lrkCiaYvEn31xLH+hnjERTmQk7MqGYnMTx/mBnWH9VvqDUqjHADKAObJro969X3b4MHTNM
EByDmpKCDsyak2ZRybsMmuVwo7FRVhuZyIlk73xipFoOYFCD7rDscu+C5HRRTq5rYzUdyMaK5eDS
/+N4Ju5OAU/SVqJuSicCQqA5HexDq8DsVLX4CYMgiZbP/edwZm+FpYpfpS6NigzplIRIdwaoHwFR
IZoUTnEcEihEm2zTd91kb311gm4dN7j14pSM7PK361JWbMoD4bqJJIYj7XIChqnIsuEHjyDehKV8
+J1wk44EOT5Qky+BBmC795Fzrq1ao8tDNOSW4qiakA+fPgz2ReKr9DycP91oF+LwdzL53SXlgJye
SF9aSbhswZmmo6EYyFSQdIPyfascCl61s2f0ar5E+RrsRk4szZ2uQQSLVeRIUIe4GoaBXegFTl7A
1NvuPAcUYs9YtKvzuAdwqhjXqCnOWdcNtOYwjtvkHegeI5yKxjvdXg+snfFbA5sFVp7UEzpjs3Uz
t9bdkmvAR8udfiSQHt7cq4HkeJWyEjcaP0DERd5+KSwyALv7s9FsITmM1uJHCxzI11sa0KoQHzqS
l9u50mSK6dPu9lrFD8xjrItABo6+37H8wryjdKJKZiZSk5dxn0GqwnSKim2zOIFP/687dBexAhJP
G4HV7R8F1oNGrPGzD8oj2MYYMJyAt3yN6vywPgN8LAZQ+FsqHuwOBkZHtoldhmu5SqZBOx37bgVs
jxQ1vz19rvuIx98cqOe0WEXXk3S+sM+txAdti0R00vu/s8HF9hcCPx4j4vRZCWQYt/FZUy5A0b+O
YHmknsocT99JnCaIEeb+Gc+5+jwmerz3IStRpRhwTpK1guUrG5hmC2XcnRQNHhtcuAtpRqmPeNbo
t1tXsRD2bKXKSD/tAxgKcQtPswyG4lHw6R3sB/cLbsr1pMnjnMA9gpEHSubwTLYae07x3JK6sxwI
y3UMAoLYvCarifbLIUgPicNsZm2MzsWLIksusErANMiHMv8X9Ovh1yFtyeAe2yxvJWyPmKT5CNuP
oMMZvaLbo3NzzA3yQ6t0jaeqROltWiM9nR65EUU8cB1oZjfvJBAmeM/FkW45j1XZwvpm5jjgrS0y
n4IJx3l2vFMEwnsr4lUwrRMFwj4MJ4r/f4bZDXrIErP+4Jlk5PE1ElXLqAEqf6agUqUYV1HV3VZ/
Hn/WKGZXaLgvQMMC4/zcIwgBgsVC2jAxZLPrI/X42IKYerO7tErUJ+uxapo+LRx9dzKbX9mBB+1+
18rc3kAEl7o9h+uj64YAlJBeshV4WlDhbyFaLkmNa5cDqdS9uiZABbflKUQoDFAueSgKaH0C+fQM
tXyCuGQguUadBHEH0CKsjCTNg4/JZy86szeD4Vy7+2Mslz6pTRLSP0TLBT8DM/TYNijvG4SwEaZA
6RRNebVlrWt+nhvAIBv3yn3REhUJ9uBZg7H0JwC9SUxb42v+jw6xH8YqVa2mZZYxhdsxAnvgi2kf
KBAsXmee0EwjPvJNSlYJJZT4r62A++K9CmaNqzQA4cHsqUj8Aq4x+6X0WVfjYh/kUodxqVyJTMAo
Cw9N3OtzkxsuJ9UUnwynPlo2ZhIniLaFRIpdfV459c9GdSIVYTsboID9JbhVR5VFdtiJ4+IjBBrr
/OpYt2e5rJ1aRXCteiYriT3frS2X5FDZWEjw3bU7f+0WN/Dp2FDyHDdlS/1BOJK56WPPwYIYVazX
H0RudKRyldZfRVGXTmnxYKTMeSBgzPZnmrY8niTSzqtYc8sfYsZiS0H/q3YI/MRlEcRKkGvBrci5
DFhlTymM1iSmZHQYbJ4+mAmVHZRpT6DwpIimQtH+7t4rOHtcD6gGXKwN6QIQfo9b2fmmsbZT/jyA
UrnyIVSbL/E+S1C7iIirBMEPHuBBWTjVkpuJJEBnjc0XrDb8Eb01v8JWm1/Cux9pEEA44XfXi9w+
lXOj89qo+60jA+91tYItb0iItQxSwSavLxQUnCoHgCs3FhKe4yHSWC9fam/bgxmyK5hiFYr1F09Z
ewTXPXZPUS+OHbxr2zUH5+8ZmWv5jhL141By4xjZq+Xt9EQCp/acM4y6bapMjFIHcOPbH56Q3g1E
OoTB7vItnoO/YM8flRe86MUvfvtxoGMi+R3KUu3Dod12/6QfIzWI6iJYp0G39RMUpE7QIBVa3ai6
1mGZ+N4MzXiFgZdIMCio+yKzgO9WmzaObgtKc1JnOU57ngpm4wXt+SMpqSncO7UkiJJ1h3Ko+P3n
lpn2rgwhzGmNHU+qZx6Cx2OX0cd3RKYmTnruKtowf9Ne4pQuQcEZXqA4Qg9S2C7VTqSKzhizdYtp
e5OUNhyPMdHvec3pdiXjSEk7xmZgSkQNQM7jbNC5HB/Uj14MzlGVFVm4fhrWF1+dbAQDW/iXAcpt
LYE8fPAOY4JxX1DO6PPxM/TbqNlu8b6wK41N7RLGpEj6gZdzKzJ4EAVlnmigpfhUgTCKb4QbL/JQ
2vHe9bW/KthohhkphuoBpbctH9zuHQN9xa6CGFjixqDsRNVz5uRDHv7H6m9OwuCfdIXuAVuDYZtQ
sUn6g0nKvDBMm2xxI4Hl+2Dr/HHhGzGA87Dc56+ru0DcpHrhzScSZV6ZJzUqgpkrvmJY6M2bOEVJ
0ENgD23JOiTVUvLcRLjp9G1obx04Ps/JMm7S9nOb09STzsFJJDkmNDIkbBEedu5bQQxbLZg6xCZa
cDKm/WxKxDPeeV7q8wlFNZ1ZLgAHt2KC/Tmo6N5K/hFT1OW20ZdgI2GXndMNhYEaM84CisarjB5G
AY3IejTsAnbkWk8F3NSE8M98SEMTPsCua8vhg7fdAMYWEi0zsoRvTKbg9SKenfwIOat0zaW5ZG4q
NpHSYqb1NjuoIf2v9XnlI8uRBDVNBadg5XBQM3q23O+kxUTjZ8medWICIXb2thB6UYu2KXJ8XWtZ
4pxxuJIe1GHxgRX3FQ12cyQb8q5G6/lgtNZTqP4WNeS86LnAeRCrwqZxQKvSVzeUzseCngiNhqPo
EEtVrxdnYd4z1rwFt57rTDqFGDTaHOEelS3LaCZKKfjhqVdCRDTfn1GBe4drkTDQUNgMFN03N/Id
ynHTeLRj/Q7MPy46YVgCSiNFT+0owTgCDcjNOBKRhm/VSMMIkGrY7Sq+vv4y5UMQCSoDUptwAaqI
xScro01fL3h3/ByyIsLOA6A4xW4ABWSP8naznqVRIalB0xPXtoXj2pVaaHSUnwkExFv5b3QzH+ku
YxutQjzlOPm9p5mgrd6KkpmUmW+MhPT6e4fDmqj+XHpz/jLtP7Neku3JltfqQ6QSZmAb+MWzgIdm
T+rckt3a/Sf3gu4Aff5HDYnTdLqclZ7//1rCYGl7ZgnXdLTKwOVuaapdhSPdA2RaYU7EQnOFwD+K
CPgnFB3NtKEva7m+ooB5FZ6ZVqal44Ik58vI30SRz3TEnHNzWFAqvnv1CWAvvEvlIUkB7QPTzuvA
UsNE0JHXkXGU/JbkhfYI/V55/mGcOg9OJ5mONxCPK4fCHHsbARBMoJ2zEfbmqvuSnoF6I9dGG0KN
bDXticvvXizI7eDy1w6eICYK8q0gPLYDLBETO6OSdhIfPsLmEyPgke9OTukv0YdQloDsrFObsX+r
guPD3+2adkuq8a0+Yf8aLlZGbb6/0gQU6g3fMZbtnBPNB8uzR9SkFGPRWmib46F1LlYE9ZYTkhRa
p5IULzbY9d9BrlqQOMBkyuVDB3VagnJDcddYCEXlAjGb2OdYSOp02GDqavW+vCsj8p/X7b66iLaO
kcF91CbOv8H9rz93h9cr5wc5uu/GqRS34wCDCytmtk7bYKPNBPADyzsgB/Y0IJyp7yvISjus2SQ5
cfCAs9/UTEHVlgnxZAledf3FIPRibYWI20rc1gng0fxEcZ270XlYYUs1JgLbskoUdfVt3s5uHYm3
B8iIFrwUc0B6g/y8yZZ7HrALO0HHPQB7yPOo5O9Ko3rbHIK08+iILT1fB5JK5DOUZkRPXoXRE6V4
RQIQgqcA63nD1ARrK9UvUt0EoYl8i2RVxwqguj1pifxNDZGquz5DTFbmj2Kkp2HFoNxLb5NauBya
46Mi8gtoLXjxrG+OkZOSGGfnzy765dCNv5241FHFK/j56qc8i73/Ig/Rqo9SYd1lFfSdx79vAGsH
1+E/G9kI5SLKGpZ0xBN4lhiowCej6codpJcLlKN7eH4Txj9SciJUbFnZ36WWLG75K5dVzC4yVNcR
22GmZ8lHEvYV0dBYF2n72O5g9zdas8FkBdes5jbdNfX4mU3DwCHG+kZBVb9sn+1dlau64bY2Bxew
sSuw9A2VQk9sMF5eduaXLAavzdBxZpYDZpsrzZ4NjH87K/VMmomi+Dx5Er0QIFeSqRPKJ1T61Nwr
zSHcd8resLdq3yoOQLxcVKniOZfLIYLcaSRvB3iMZpf4Rk92EaHn6qRbHJ48Pm7gQ2RnjOTr4YjN
YUTE8V6EIznrhjJxoOuY44ZKoar69NFFpSyWyKVSwfGiwWKRMUwVSc66j7leXhEP0723wLQcxkut
hvR0HNzGT1kTHpRufTWSqClCTxv+nUYPz+42u6UnOZtDoxPa8mnNEd9Ne7mWNP76j94tDszKIer/
eaa5CdmhINaNtjU7onvVdwWt9GrDIfUOls0HhczUwwiaPmkxARjFSxO8vYIfML3fLK/GBpo8pONn
EEUk13q1KWUAXGamd8TkECH4NErzChKWv+ku1dBuCL4fPnFgg1JaSDKM5jTpOC/8jatD88sVjSSs
FoBXts+jgSDs4TUd/gdZFsDFK0H6W/0NyVL7GqWMYz45yo+T+zzD46VfCuxio5Pq4eTypz5EqUux
4VqmV7VLgYC9t2URgLx5IRaBBOnaL5S/6tMnqddNOy3TDNBEe2bgbnIpZlWO8ecTPEvW0Njpn6U3
KjKZSTYGViewL278nklVpuy0LN/LciQQJzfa2Uj4WgDVE/ITgW2q279/i5w8kv9OdJ/4Zj7XeMAV
hW97TSLH6CHrBtAaLgfT/wj80dTyQnCGbFA9XRcIpx0hqnAtksQ1jaPnS2+xl+k1SVou+Aq/SkOp
0HS0ubrkfts9ZmbvPjxLxQvOvDm2+BOpxRo/vjJnvyRET43pquYLzdSQt9qXSGyLtj3TiFIRcArR
8F5Z/9Z6NoYHRFW93XVzJ8tuEH7rtkSCx4fhjFQmV+RnzvClHBS7aUT3k4KnnamDVvKGNHs+2Wiy
vFIrKjQtnFvXpoMu8oW3pxxDj4yS3ThQL4Kq/zum//BYoeUm9c4jV2jKofF9Wr+e7QEM/WajTXRy
xJddVl8jC4xv81JuKNKgTZPz1onXJykTFfVHp4HfTdQSzl4srO3ST2jC92k/ZhFUwnbLd0Pvanao
DSovt0YYHgnTyT8IrfKsGA/njOyDd34smbEMAd3i/gNW+SiseA0gnXhNExivPhsiaTn81xZlmIcG
OYd4yX8m2KEkHS5ZqDsZ8Qdr6NLmL0qwNShWiv9zuX/ZS/pgae/0w3M2+RQ7Sol5AxJ2oRtFDHxg
OJd8xzWiv0SNE28y35BPfSAY8PIpAj82IRXAm74NRuTsfg0s/rm9ilQG86Qb7uOIliT6kusIPiJQ
5ouyZ0Qg2iA+kCCkcgCt9mnY1XflCIF87ldI9oMm36LOE9CjCm+3320FcIeykea/uykKRfvGOkKI
cQ6FvTojuT7ZahDjoAvx5fn4tgRyxWddsF0ZMP/RmUGFKz36v5A0RgWgtaDPZoHW1gaHRKVt4toN
iZgavfTXdSH/GTziB8TCnPiwrP3+uJm/AaJwpWbwNO7+E2Hle7Ww0Dvpm68PheDtsEl+WvlY6ViB
tdtCPsf5x+0+3gURmtMvgnTwcBQMaBTmVpmOMhSrOUR9Oplh8uRA7fIiyyKpP6Kt7dTyLvmpSVMr
U0XcOyTYZ374la/PCvwTjy6//cgFH8t4p255mNyqNXOPOk6co6ztNXO3+u+/15JDTWhKLRqb93b2
ehnlsokR991rM4GdhDUr6kuubIujdNTUc+YArSaW2rVoLae1lcyWFCCwzVTi2jC5ZylBYryNSqqf
y9qicnJnmJDqwjKel/uAyn9Ebej8lPhBad9iaT9f3ljUyGNvGr7D3pWVNKrhJP/YbDvPR2AkJIBl
kcy+7lowMPPi9w5jzAHZzlBDMDTXTCGWniE9GgQFLUW12S2HoOG/TeVDfgNb6E3z7TBnXwvYCoWo
pJhEjSZIZ6ee9oUJpn9JyKUox4K/7sLMRqegmWsyFINuS9E2uuQ5K89wdjWMPKtKpZFyNtzkxtB9
ZbVA/JvPOsloPBtkDCj3RxH7v7JMW2+PYTJc5uJHrXNR9OqDsINUhxTqpg9TcYx/oAi08TWf8cxc
BbXbsYej6ULap//mlTvhmoVFNs164wiVRzvOSH2rbw4Wkf3SekQ2CVmGw+WIxdCKyda8omhLl3M4
ZUKeaGU2E+0a8mi2tZEciran3fNT2edemPgc1rUJfBvz5gIscSIUW17ub3dIl8hd6YOZq/EthQpw
sUxdo1I5KaRLvw3P2M06GtYAjrc09vYGJr1X6LoNeFpNszqGsqC+zhEb9ewenqgm9rn8r1HiLp//
PU8s9wYxPd66hHtngpvEb+bblLfX++HlqEgkeIoGFu1tJBmMlbym+hbsCpsY0Rcy1K7qEQH2c+e0
25NEOTFnVmsD7qJ7JXi59VP0azhV3C/0Dd9fyCAZsUHYrl3tpph4j31HQszOw6rvaVYbIQO6/KIA
whwBUFji2wGe/pQ7t4+ZqeGczZVjQ4KXdI49i1ok1kO2NYtFhgx3BNMgskWfv8HEhcNMrq5ERSzC
xx2d0Z4i5PnqbW4Eefx/NM+q7GU0cQ9bS0muIEsFUuQPhjbewA5lBoDSqeY83MsdPjYMpxku2HnG
6pQYfTgjuDWSIFxrQkqlX816YupHVvB6XQ+Dv5S+F1zk2J2BL4ltQyT+VCNEKpGQenvYC6YZgQWX
GaaC+nroGfZzjUYfoSC8SmH3NkGtGzxFhi2U8QrEU1Cl+yIqjaO5miD7rd+mMawQYLmrLBYJExlx
+2l95nobetQ1GO9iQyLul+iQ5SQCER0jLi+ZDDRvnyZa5yj7O7FoWQh2ARWMk36nYZYs9a52Pj6y
IPnwmHokXXwoY8SRDChh8Wk1e6c8+aj4tsxsUutbqdCkFLYhwh2Zzi+fOuDvI5w+gEFlGMCTqLli
7h7DfQM/Lwp6Ex7JrWRXUGGuTApw5ivYlDyQo+6vtdNbvdpQ35X4dnlUxErhVVyTUSvkJmU3jS7v
/2Tp7m6KCjewZs1aKtpapqObe9fsVSGiLrh8m1xTOYWNwI93iXy4QeOryyTe1nLCbD/YJrZ5fa7x
YZX1pOWRjBRVtlQg9onFSd7TpVyQsD29rO3dFI0v6emY7iU3CWVlB2d/qDRmv7jJni7HpEksmZpd
g9sS4nP3/wutu4QdXDk4ct07D3nt/bQ2zrX32UCjk5qmRjwqtzLNVHddV87zPjEDA9usBLtbRdwm
1f4kQPa5mQx6AzO9hjIMxzYO2Z+L//bncAg1vl+4eWhor9V2lcFTKJFYxp6Oc7WzWNKed5Ry3G9g
zzFvlj8RuIqnLjzZ65RStQKgobF4X5C0NoV3TYPK52Dv7W/ZuF5uh4HsnxQM8IKsW+kuJlLV8FHD
5b8QCVzLD0MiNwdGlhHoI8XI8IKzaZB8YZzpXuI7xWdVZ5+vY6W8q/WgCIARf5GW5jb29XbXp3iQ
323yEnXAOTa3rfqNhSFjZo0PHyWUJJ3nZtqk2L6FqBXaVi/fQiXBBCZe3nUfQwOt1jXciCT6NY3A
H+KfHsxWtbZuOT6Bph1vLfhvPWD6++ghpEF6CJnGuq4gyeoRYYnXdNLLZ5neCEBi0DzMIT7i3HrT
Kw85CNVKmWPMVplwcUzqZnpHDGacVD0SFfarqFHOHrAGih3Z8mbF5JMaxchVA2JaoDurhmWjXlnl
xAr1lbGp9wrwgP+XSVyfTUKt43m7Qah8gdct6O8l6QKVAYZ/ZfrMhSqd4m8lBhhgEVbfse07GbZh
C4JhOdxsj+FS4UWEZa+m9zR1e5uYIP4PqDtC+almhx0+uG+XXdH2N8o/fK+TnWOMdw1UmleDvjXf
naeK9l4sTYQi+omarAXjeMxMYorKbGI7l/UsT/1o/VG8cuHeyY4+4Lyfm4I8kVByXvJy+u3amThQ
4bt/hTY1WNlOv0hx7vMn+H0TgZfdwHr9LtJwX591JMkK/9q3vJtCP4L8Fm3frl8+c2iyozgM8bmc
U7+3lJO/T4j03M4qQlilbjytJbAMCp6AbQCotqdPicLw64GOhmQOnW7b/KpewoDmYlZvDY6PZceR
k66wR23Y3f0RsnR0afV5XWqOQmmkNXKC6kSiDJdPFN1bMTr/ytVUBbMhqy+62QhG8UoPaVpNHYcw
0pqJrTzXEyTenmM6bBEr2wyGOE0SfN7ao702MzwMKSvJRcV+1twuy7RQoIdS35iizY1diDN7vYbH
vAP58cSO5m/xfPAQgfP83dMKFtAjl/THoZAfjA0mXn+hAE21Oi5na/AD2/toQlRGdXFPPtO0viN3
zieKHLBlmqA55tp4qUuowgJ64ovckr0zfroUd61vE5Vz5581H31BRcu2ENLoWu7Mf+LFCV2eTPX3
EXWAzSCKBt2E+c1UPti99Rv1Ird1aDjjvx2dYll3th0yMsyJ+Sy7bHv7nXYUzQsIdUlmfi/sOh+L
LeGvGdU7ZTknzr5quJg/ABnd5bkR90ptF+3U72wxFCVFyplKiqu8M1DkliB1ACvQ0eOa+xp9qF6n
v8xSi5Vbr49Ly/u39YE4jXNdDd7hCwjeSe8hnTubG9ZeXBP0I7V8N7DAhijOadDMrpdzGAz7MDSp
0MyciPk1l0ab+jKEWIoG0NXSttkzlrx5NUwAxSZzAaMICARioTsToNpgyhq8av4U6P6J6ufD9czG
2zY+wzelUnI+0JvRtWw7Z+6gu94liIus6mHoUS/f63+Iu2TyIrHvwHBSjcbC3D8dwzNG9d3m7qfD
UgMa7DX2y5BsGJkOhKkjk8BUWJOxbrrtqpcin7yt8BKE+CgbAQz6RwCKAof16XCcXzk5tXKio/wZ
oQBjTgG7cCWvsSwEqVfgPA/ew3GXXAOUTnuAO6ieIHAw7rDaH4XchcOiGrpWMwhsYs85rUIPWAaU
OZx4smOjeXy2Mc+belKkgFVVVQ3e+W5rIyYeSEEGBhN6ku7c/1azecSUipuBA4NcCR+Pn1Yy1q+Q
CYnJk3ohRACMWFP/inkgIO6n+tXIHAoQ4JP9cU2O+VjcIhUNFrT9MWzQIyDsrzS18AX8YbiZNWzD
zog+6ff5CI4kJryNEiUhoDomriQrWBUrV/JiWWA0Ddk0rVF1kPj7sb5aEsQ2Y44EpltMOWOs9AIF
qRI+Kf9zemMbOIb6jLZwEvagpy6+wZ4d6x31Pu4C6K5AhBmRtgCQK+sZhlhDvon7EBzwMQYAr1Ve
S+VrwY6nRi//ZYtXZ7m5TVHRPNAb9KZVsWfHA4hiSzbWgbFVg3Nf05RykJjqg3+oqC1jdqZmkP2O
ulhvej0fjn8VFja1HmFkWOIv5flL0DHxWSHveetazgQb6libDOVJLv49+WoNb+ZFe/4rfN2Spz6W
XIJ57QVs1x2ytD2EaCzqAGbzhY56njxLLzSox4unpd+OeczC+5/F9iCNMLSAYVD36lL3UXpa6CZL
BQqSmw0CwKSc//bNdKn/1oi+zznYINYvpPyc4UiqB84P30gtoZPsemS2WTGOmhBxfBN9TJHa6e2U
HcSm/iAnVhUBy2QL7wy75r9rt3T4Q79/dDT/R82bVwCIQ4HZedqzvCdcfp0LaYPUeoNKlOBiVxoE
CrWE19hUwtUgCp3dfCpswMfJie0IiP/qzc8yjM1rMDzj75zfsXre6+KnlM2CaH2uadDxNKqtZ0ZW
awJBpf79a22gYxlUEUWAIsfK1Xa2r8POJS9gu45fuIolRH/FOR9fxyRmPPwzRkoLeFMbOEmZn9da
2h4xkRPjbOfM/2OhrSzNYqRj+FaMIRc/MmQIecKyOOkEuhE2gZwWGy8AIJJfPjH5r7GodAo6Dubl
bj1J3lWyMBdNn0J7dFTEStA0yiT60D2pCBhMfattPn1Ef57O05IBsniE88U4TJ1ouidVERn7aNDB
G2ieY6dZtruYl2htEX+m9Rh0YYEvYvCrCO3tXueDFEpFa9rAbgwlsK3HXDTT5QoJf2WSrJYkc1eE
NbxfXe5x8mqxX3HGkMKHfJRzPOOOIkQnpF1YtHa4BiFmaLG+VVtkz+3W3Z/nvOkbZdoZQWA7ym1h
oN9QmIz+zTDX2zoHrHOhQI0hdkHwiAea5bE+q1Gber2chPvVuB7gyXNq5w4HQgiE2h1++3sCzieR
A7Yjl2oUIxt9YpGM+9wImMBDPiXMUW7mOaGNm3vPM95L/f07CsnKUW9ExOucFrZlFt+PigK6UvyC
pgbs1CMyPf13PmqZOecIiJSUI9wVMNE6UnfZNL1YwsQl4P8qfa6kIgMjT/V/Kd29GYXfYZBfNPS8
5LpvVrTuLoFheoKeAL/LzF7x5/QNkjZm70YlFhVJ51i32N3XUppiaYFyd7L04wbSn76hGf9cfrye
21RImLPvGQfAGkGgeOYLR5mifXDgHDC8IBqORz+jhsNArdXR/qlIhWI/4lsMH5zMzc5Z63PYHjI9
iXjZAOXckOF7f6jDc2UOcBG4jMpa0bk26IHi4mpi7ZIXjpVkALBTF8/o/OsMNZb4ldXzA6tV29CX
/Jr6AtVnrkrw7vyPqCITiKheiPM5XPq4IFdrkd/totZQKE8+Xcawu6GCEfTsP0O5/xEq9qI0ttFK
qcoKUzhJo1GtL0vkHXrDBdWxcuPuFCCbIiOQOL6L9RggdVIB55N8dQWJvne6vvuYyoXlIQ1eYnmB
g3aMRmg6mDahdBxseEPu3f0kCsiZpJCFcmpwQpyhyw2TvdhnRiMExRx0n8K5ps8JeUj3UEAO2g1y
HL+WlALzTLrcwng9jy5vhhI5gg/DuEY7nkwSxNcrN+wPilb5n6dFtuAH0GPyVZZqTve0EUB6Nenu
yel9cG7pJlzM7woQOeDxDCJFkNVw9VHsKEdkrHYZmczXfPW/ICMLW4UDaAO0tyKJRS5HND445moG
/Ql5xhlgoDXTsIF+8vwJSOGBR/m854AuZTPGvD2WZMRa3+qpwdT/hQowLyHhbfdyA1XH4/3EZTa0
T1FOa2iSxT73/e08zhStiMMP5epGfUCtpGzRbD4gc/LBAjvFoeqoh6lz2IfVlvvIR0lxHu4YpAJq
yGEaBykOk5llDFOZiaHhVilJmlLX805Dg6sNh7Ursnay68Iu50uomg1lFj32nh6X6LlVsO5pcqA7
CMzIW/O1VOL68+mPG0EIfdqv0v12h47elo34/z/6NqZXeJW/S7OSR8T1O7wpS/mImXnDEogyUCLF
qwCoUZNGBiUonuFI5D3hrSJ61cXwwCvqbhsqS9Ul5lg58q3r33UGNO3bKGVDyYkhlcq6PG9hs90u
LVtL+00TciQ373UGWQnLmFTqkpuBTpK0amscfSkj15/pYTSl2U3rVF+pqCnOaKr/ZLGFB98kz9VI
X1hwOQ+V3FFQscpOsShOkAF0kLJ+VlxXz84wpXfj0zoGPbCM0CKUAEfrg2tozGZ4liugJuNoBPN1
wgZzechfbZ12A4D8avZhkNEC/dvuDl6uj3UeXusAyym7Eorxc4HNWBiLd95+djsJ/JbHlht/QhPA
GRIkjJmbHQQvys7QkfwW4wKt/Mlv10JKeApeuhRET8wjV34axV9whaSR4cZ1mP22UWKhFADYwYfQ
+unx9BsCVFpBNs9weawNyrO2I/kx6ErOLUsoT30yifnAylc1etUKbuk8Ks7NT2NoDMWnkVxCtStP
e7HlzEXbamWlFBt4BK/K2VfvRqwsMFDSQFbTj6nnzDE5/izw6nmrfuGrWulH8OkJqjyZescSCt9s
+/Qm6n94IGijlQydbfHfWQr8kxNeJZ+47c6vavBl5gh9/HUwdqcPgoZYE0pWS3OEXPzFwS7Cvpe3
3oTqQB6/FoPhFfs9sXyX+Bdjp+EiaUY1X9zvbzFlbEGok4vqttRBvG6DNjfhUCMhpPvNUAw8lvGw
hBKut9skbR6jQsSohPUDGm1RORUgGwZkwjzWzHGkYbOjInUE+Y8txN3R9y3jW0uNRIsr0Drsku/v
6sT2T4ldvMbqXzpnbOMsJG2APmv1cGGg4DGCe7Xc0/sl1soDbMEAjN2D3E0fjVUIdZVLzweoZ2yD
pKFVQoSf/7WO99wI1UGsxkXd/Ux8GUJnCN81XKIMoay7tEEoF4OkpHTSNo0RxKJIq9QETkwBlyto
tE0OwaGr15MYskETzYFyGBP1xUwpcQetEfANqBsldfwhhVKLRZIuf0GOQAVQgx2CMXJ6UqCcRJAq
S/+xL786d1L3okJbN7n1ahbLrYJLWXEZ5ujC+Dj4V8hQppj4EQzaCQwgzxN7y+LbNkH4KyyPVxjK
BrfKBvgbYMcSvp5RXQ5YMJsFfW36BSvBntxW/UvmMrAbzSXGGLrzjCjficeSgYTRrmOiTWTddv5o
zo3UCfHT4MaWYwg+FZ49q96aLcGIusj2z3/8Ufj56HUH919PaTmKwAhZJQ73q2uVvBx1B7HF0Xeo
tmvNhl853JWnGSnVJgH1Vx5OTHr3i3B9us5GWMGSvlOn+zRvj4loRTAtS/L7yF0jT7ES1UFBy8o0
o0lDnZkIhvvDvR4ZDuuFd3iIN6HtNP8QyKYPPntuJy63LWf96NwQ5G37IG87YLQUPzoegY8cbPoA
mCl3kQaY4HOR+P0qjpez5lUxtOtmK5f2HcVgoryOr+VyYXttbILd/zTTiiLVoAUVZU+RTKNRv5m2
/didIIaQARqy7/MXYmV6irTjESvY84cLVMRKHgZT6hqdbU5l56InqEj7LC7abWtGrW1pOKERA7cZ
x3GtOPDinKG3eLGxVGcQd6uNDNUhukilb2Wfxl3bdzzffvqfSEEPv4Q92x7LkHKh4tFp5l14Qxq/
wbG8kv/erFZgwG5Nk6C27WsrR5t8UXVE87l7dhLRuF5tjQeKdiD/uAbmgCyLez5SIDbKIxk8BMHO
7jwNlieRh6kyLSyitt7iHrA/pW85mDd+nUbtj44ep/+wJq7sL5ifNfQ9iJVextnx/2eZNgDLfG+8
ccxZsgEO68Lim7cPt1MWy0bYXflDJPUFuKFZ3MdeO3Bqa/x3W70myDDA6z2eMAMNZvTgbY+Wpl5L
mNkhCsuekuvLmeZVa8JDY4YETjUhSxgPKuYcf+dsJBjT/NlZzWCB9/wvsp5NsBpHJecVwJQe3zOA
yzJMoUvPmJYQRrn4OgbzzJuk15gt8imKmVNEc9BnqnqbvBsFjDFv26affSOrtEU2ul4HjMwcy00D
HIKI8UeMd8lByoYCRUbjT98OgBAXZCbqkJcYcVPqUCyO4hvU6s3i5zXwtUFcAjiYyF9gW8w4gm+I
1PGc6uS/R/fI69JDQdt9SPYrd7PQuLPV4iQ/BcfhCawHvqSwnq1bQIuLWpCZqTXiZ1OAadQ27z5N
w8sOm00Zx+U6P1Fg3Z0OzLiBHKgbDLeJ4wuZrEQuRguDN7FpgVKd+HzRJo6/FYAsSAepWNxI5G7P
KpVcD8JwZIxL+pq02VkwRJjLENfM2Ih3dAwXkT7PLgNJtrbd0+HISaxjXuBNce0EqZjruE/ddERL
MVrtHsmL2DaHCnwPIj34/i9R/31SPIMNT6Smzkq5pDW0+F6Nm5I4eLdq4qsR+tHBHQ5PUikU4uaa
wBRJRS+wxj7bzBLN50iRyfwKn8/e/yjxPAi4/IzEsXYH1oO60LXqLHaSAKP7dmD1yzOGn04JnEnH
DieAvDDeZhHbPMKSan+2iYnC/RxwHdVjl1gfGIrRFZn+mVTID8kdbjlq9Xus3dvIKHlUA5L+Qsp6
ijdDDT+TJocPkaTZyttlQ8oQdsfT8niESebkGZHH4nrBCgo5el93nAOSgHgifJGZQAtsRxRlP2Sn
LWPm1LtzH80TpEqWG2Oa0Xtnr9gcOOh5drHSpK201gIwYRWNPk6fq7oPRudXQ+6BhT/ZbCbtID+a
fIQ6M05LlwX8xNono4TCSR+aAGCPT+fDIpPfEImTdJhTjDXaY98eeudquMOkNGT2SAEgFfcavDZ2
8DU4iRzJqvO4VYZy3VHxoLpAZIBRkvXeAFjJTsGbRWsbQA+y60Zz+k94pUojJpyVY81m8dJFLegZ
fPHADqgySzCvKp1avvzVw8aW1YkYQy9BYDXoPkEZwCD9pX5hMZC0evJskQqJ59nB1UXSIF9eXdTw
3RJssC/xnpdedk40of3Vlowgze0Mg3QMA/Y6aTpzUpdLihrGNt1gyUx9D7nbB/6kLXHlpkpeHtEB
ignhQeASsfZMS9iQ0nBT/Ll8I1nXzmpT5UrqPH2f69x/xv2390LmWf4dK24kvaHl/hu6cUW9NP0p
vhkoKD3/cHv6AwnWRErFrnca7tIwRh0ahB2si+Wlx4sQnprqNOdjIvKMTliUU9GmtwbdKe8iWOv1
bBriYOP3i3q9V5cZWOUIDdvqjobKgWF8ooW5TutQdbtMS6qI6am7jJvJ/LPpyviCI3toqvSB9Bqv
GToNd0mBl40ovqXJJkVJMKc/O/D9xYPEoTH+wZDIOy66vF3CzZuPCfSp5BEhzrZVxmt1kzMc4F0r
Vv4J857k3n/fEU+6v1eceyIQqP07VNg6f2ULNqL1Vu799LlcBo4JktQytz+d2dIMYXa7KeaoZPzi
aTFLiQ4dpu2oV5a80K25ftS+klEbdYiHygocedIe2P7lSQbnlLa8QxtGuJUtxHQNKKFAI0cvhwut
sAm/xNLm39OwEFt3yiZgXMSkcstFa9zIgL2AjT9PSte4qwfSb+GxZkcaQAtE4zu9A1koVdd+X47M
KCqqNBfMSUWo2Z+kNFE9BzdFigK5+ynGWtQJSOZFY70RkdRbIS9WkuQQCIDxw78QmSAw9iKU7BJh
GgA0sjHe9JuewijMtMat7YvYy2CMPZRksgptV6XRroeJ9xlYux31lv34KcgVGjOLRpARyjqa3Bi5
laWHHCcKYHpNopQj+XShy7sST1/WSmHlmkPTI3wfrtWabJGx9kpR8h+mdUEX5yJ+pClSRsP4V8Rf
Vqw7pG2fXZ8rbFEhNBnDwtyvuLQxLaEBCmUCLPn8Qn/H2VpTZgQAR003fGyyy8ZBQAtaMotDbItH
rb6Jc82lv6UV8018M2Euv11behi/MP+K1jDbMWYm6E9+/H+lsfGRsZfd8sw/WvXPDExesZikbdR1
tODFHZNMRG5fHaZhVweSylLPwWMA5IAk+EWEKOytChbcKMIracEtKa4AkIJbMiZ2Um4KT8hWyS2D
yvWscbwD9JqDVd/BAH5nfPuZupV8tBWMYEJJi29vG2819Nr+nr17wIrvekkZ5Rh5kJ2cDP9QhvCs
XCuriD/I41rmEhCTwGKpkFPNYnc9O6xoegqy/QrjyHX8NUQ5/cpbzl7Ghyf0UYbF2BeqYOSWPjvh
vfDlf9XfoUoHvMEFaS1ZAdk2ssmchUYDLeevaVgqFW3VKSY0VI5ShCVyRqr3k2fPSaUrqSESA2hd
MeNCjyVSJfwAH2fJlxRnF6+UQYz/aPOX1dq+oRgz+mKM4vrar+rffPh6Xz3KnJCxypxQFMBTNeac
AuvCvgsCQjMfMtwqAt+l/etYXceozeiwr+a/111xwnt4XTh7kWuExYMS1HcNjCa/cWwhaOj91ziQ
rqJmwI7bNaBy5pb5cGkPZ6NTAQwKOVNnlKff+4qoP5CHxU8YEQ7Y8BRXCLFliXEASX9VKMBKfKwS
e7o2M5tLvj3f6CXS8OMqr3PfsRkpeRj/X452fwpPuD+1Qb2BseKa1o//toSsBclbDe4xJQGfD3rr
LusaOGDUUUWX86Lux3Do+kTBiHl6JEJjpRUajfcRHnV2ElAYh2dG2AkhmuofWQL+TqAffg5gQ5Xy
GkpEehLkaDTUCDzudp6vsV+exxVz6ilAQ8I5vaXAS6hSJm9pYelweMNJnyLJFc5nsSAtb8NtqxHg
xp4Uopm4AqjiqybEXBkXbk/n346dwINp6n/f1yCjiDhthBIyvznn2nJz2RS6xfJ0+TtLwRF9dCCP
o5T8NoZScEw1CG3YPUGLHS3hDZlzgZsgPIdkzUqzIexULUzXq1Ee3zQzarB9zuydFwtVXOf4w2ev
zhCE44602SkcppweiyQ9DzK4QAynxPSmMRrZaIsh2a1FQXmeLoK4+OzqYELCULbh26U0kBcroMGi
U7rSHF4Ti5ImFhagqFZRyUEK5KEWxiDbG8lgKg76BfzxmGTKzd8holh35wa1eHLqahTy5mvfdo2z
2VarkaEIXtgVsoJ5ET9Q+XHrzaqulvMjedpOuV+47uAqjID9jb7Up6PcDjHrOKoURw5sYCn84evN
9vNH781uf5vSgtmFNn9o11qPBCau6RxjzAmVSWZvZN4HYKokF8yaVjHWvnPctPRy7E9lE1x6+dxF
4Qw10bDE3FeLGk/Ni/GGfzcTbRXuMruokn4ix0FTvz+pzDAecZQaNghqw/54P7TwautbtyjN3vAH
j1zPNrl/MQ8/HGMC7Qo+0wF1mXRCER8neh7gZ6qOJkChL13KYX4KtjohRyke3Lx6/HqXWlA/+0ob
B9ESQvKmXiZiggiOA9T53UAO69F8GxDwnrRxfAahW0a6Gjf9hatR3/xX7u3cC+lKDQ74oik3xjqs
TyjG2AjVYFQ7MCZUX8afy5nLO2iloctXPla+p/gNnjnQFFIyU27AWm+AMT3uSsGhC+I430wYNbuP
c5gB7YAiPo/KdcogaasyT9ZatzFIlJyO3FCzNmeCegzoqpmFeWOXWbnnJpUKBPM7/ZEuuOyG+a+j
ozFJCaZhIEdL1l1ylqhK/+CBteuxBoVrIYKzE7Kaqsnn+WqeY5koPhTk6woX3V2kVT8/yNeJhxhS
Wxx6ohINx61amNzZC3BtD02URZaAHKj8nNwbwksF8rw9dV6Y13jdrqVCBcDRUNummyQbT9VZef/W
rPvF6d0r4Fj+mqLd8/NNJbJDkWMs3HFpH957WxVhAXYUHBiY14+POv4anLDntxN/iSacXkfW0nXg
8xBGTr5FmL5u4hoGPxN8cge6chjEC66fWZf38tKQlpd82ph4CRHb0XpiV3YP4pcWRDCmMp5nncNe
2n4AuEyenTzsW1egLtxW2H0LSukeeALKnIa/AR3gmms2AsaSvkLGybbhzOzuE6CyTxRApsv+bOD0
GHxspSoFLuXHRpcuo2xP4QPdGbwool9pN6+qjRs2nQNveKhvoBWHCYwmZoalVi30mIPo0IqIZqCa
dr6ptS3qNNaM1AyrGU9IEHMkhVzDC7NP6eIdN9A6Fveb25c+XKtqyNkn/kMKQACg+65VRDQkPDfx
7nS98exu25TqRy2UvzLtkx50lpU/2KwquJBpcg6WQqjbYHYB5PauGU9LG/rwfFZ1zT2FX72viJH3
Qs+9Fhlw9Rm+RH3vhpdRvA57iKbAAZ8mZ4H2436HAPfxhjat3VmtZJDzi797r+WYUPQL8HOevFwd
HGSkY12gJ81doys178kmamUo32NIt9sTh3MkkinPVS9JKu8D0nMK2UGDuwV1dj/HvZVePj9hkLwG
8raxHvRqHpufxyE8E8sRBNocpy0jlSzAe02QB9Dxpr9XjLefHu3mu/+e1ddgBNj2ibkStNZqH9tG
4cNwQTSvJGY/MNbUGIwzaQ3Zyn8WwFRpwptSIlS206yPX0QKwv0eOMxp0bS5I0kc06lJJb1tgt1H
bnnSFGX48lwV2U7xZ5umu/3nrXELb9pboJ3vY0hgeyPEMwi60UFmKaiV4aFcD577dPWw8gmnW28x
FB9FdDrN+zvhqjuRpniQebxckON+EGxMTGMKW6Of30nLe9cwYbSlTuXtmv97UwdH6yBNFPNacemh
35CmS+0oGPX/bstjMd9pCkhv5v3QbSQGVQ9tAXETBdqSIu7bm376XeNlNl9vKMRsanF6Fg4DKLUp
EO/JqPfprKM2YeCluKxUALhmvLJtbxbSVje2yKNMJjb06zHORv26nbB44asVeyzO5SzzVhlznWQq
HWKxVqh+iGpFeFJ67VtvYnfKzdsjQVmRO0lF1Jt8mn/Poe+V13l4EhqGOE4Oy4Ie+/opbAxsSUIR
TK4ysTbHsKNUSxBZILXVB5a7kjg+IzqqsNIyjq2YyR/vfAgcd+1R6YlU7RHMpT3xRRQK07bbBmCr
0MoZA/hAF7S61WvZ22iTZBO7okvlNM4qoUVGxgkv96lQJweZQvlPVolWafx3wl0PLE7QUXt8M2LY
JTJHqHIY4WtcRCPN+t1M6RrCxxihO1XKgdgPBea/R80OyMnYkY6lhsuoFPeXXvywQqmK+QNyjauX
+7cYg0Yykua4u5rPnSmW/Lx7DIqm3jDQTv7ZMJ2I/wq3ZP9gLGQRSFDX+xfsob02oJFVcdqCGhGS
tfKIVd1zKfEJurS50wjXdABCRP8stTkunDmYIskcgYdWPGQw6fpSGSit/UnknbT4q0l60bxGaSwW
6rwqt1b1s9lL/pK97bMRBXtZLwA7xJylGYIkku5htLGJv6bSRRg7FSKtEV0fWbochXgu7OjKEqGN
YGMan1jtiN1VO6rtwndW0FwDp5pyNarZpsyPuG8ZQn8hfPJPHVSdtNueHLt0ZonUyEbgSs4XBSdN
In1BbKmayvoZJXn/niYeWDTGhNgH5+Ao9w2s4TOx+FqcoQyooZ3dVgc/D5cdrpGCDpqZZJQcppmJ
CLtD9VksYqL9UdOO2UqkiLa3yFfnBDYn886XXOglheZjgaDapigjyrKgOQVGRzncLwiy45yUBv8w
AMi+vkC7GOaVqbQnYbeP+Q1gkBl7j6FuciqlDvnw/Svw1wOrVels0H0kMKqCrzun+6FwhagWGrz/
OsAUsH+y1KsMO1lWV5r4aeDzpy6rjC9uYQfKCx1N/c9jzncFXahCumgnKPsUJFeJ+jV8HiTdxoZA
bw3IaLdkKyVjXZFHqOgZKHg4O7Tyf98wXgbif3bhmwQcIlEoRwvo7so91wIJ1O1hm8cRfkea8EM7
X6q7R+PpuouC020Yyz/jOk8GuEqubE9S3k2ithrDMpYf3CU+hTf0bhnAnwU65bavaMHGkP1Ss+hv
/XeStm+I3jaIkgRxZ7/62EoEzzDpeGMlJlZJfyujo6dMA0ypacXg6AzymxPMKnviD4fjA6LjO2yN
Nti5oScEuzAH0/7MQj88RfKwLsgDCJ6UuzvulSTO1QntzBLyYnM+Y+4rt9xH13v5FIAcKT0D+Yx7
kaHzVtZZ97cpolNSChAN7TPSFw75foIKaga5PSA/xhnKYmadd4mpU5TeDibbFvaTYQ64R9YnpyYd
iiRE0GOWGVtlV7DHpXM0obqTfczYZUZXhYEAr+BsjagSOBO52VxJdhUB+r9NRcVBrl146xKcHblY
iSYY7PH/tRNuIWl0SOhmPQcfPPgPr6TlP3Jn+onzkMIyeBOvygqpyaVWQgNhTOP/IcfCcp+IZgiH
h+oOxyqXgTn25UM18gO7UdVIemopdnYcWPttEYSbWcmDwjHa6yuWA2U5pNL6/HmBRdqDMChw5qYZ
iL3CYeVW/Pt1tsIP6L1+JMcBqYXp4Uv4M427FZKc0ZoZHb2/LqUlSRTbaLwSCUj/3yePLmih5gdk
QR76kefbtDNDtD34lFBUvTwk4om2ul5nTFAT8Ry4a/JmoPVaaPAp+UJ9arVtvd/CAKjsWNtfSxkM
pwEx8iVFMsLCNDfPvngkoCFQUVIDgqqB3IXwez2ZNVPqHM+6FKleXb35pibarZS4xLW455yRjdDY
0nRAaVfcGN/logXzJf+SBZpdbZUM1CZG5bz7F2ygEUbWTzBFnre78Ouf6Zdb4FeCWbpcSta+TKij
YFqxyXIy03fiNWZuUv8KCL0/Bp3iyjTx845ti80t1//jDVNXvMtICixRK/MKypKuLd2FRoLeZVmb
GSTN/3V7rHWrrhp+tV6m9OYnpOQ8YeYS3ZTrPg4UEIFWnES1N/K65OVCDNVSXAeWR0XXn9P0ZFMr
6j0nV9Lmh48pmbS8HUJmn9QM2meXkFoB6HXulOaRcuzui8k/w0pX0rqrTKKM1YpP2XqZY5Qt6+Dl
s1rAlTbPBkyZXO8eIo8X4hBunUQrspbw/a/XkNvvCUBQapzchkrVZFMVjDPJ7juCVS5cq9yxVqwV
mD82rAo4yAVQKy/8RtKs9uSaFlp8QwKkcxknwNgZajROp1pksR40QQJ+8Bse6aPU5L8poKLxSxSJ
7ZLNg+fg1w4NUHqc2/hpqXKsxbNIRKEu21rxcYGg63aYs90WkvvPUUF30x6Sor5EqUPJGEljYkW9
YV+m+Bl8TUrbkEjcJLfE3KGIifbnFy6ZThZeOxXKygLic95ggjUS7I4l1lLP2fFNe7jnn5VYN6h/
Wss5x3gNIMVTSBrOCYvnvdA5Y2jXkZecJopu5a8+7puf1LQk7XXcbkd9ASnyNo/CAnIBnrUKFbFC
vlIkujgBZetqg/5vYQsKa2V4RLn/G1/CaK1HM2N37aE2ckaiwZE4FlY9/5V64U4FQES/vajKL8tr
cjdyZJsasCFRA7dhC4L6k4fUoSifZwGL4Y4QWSwST3QRye5YyHCakYlEE8Ku40O6nnnbK+9VhGPm
C8SZlchE3Sr5J/kzeG2sePZJ1J67Z86M+tZkXpx/Rxp5Ban1BIlwcOMU8kWdVK3DRO0d6ogo2OY5
gNg0G9lQZsyC0n2dW6rgi76imOUsij/ZJgLhmmpbgxfSeulWsXvIfW/zqLJPwb58zs1IURXotZus
w63aQoD4u1COybpPgp5z1Yun6UFm8MJ7RAQ5k1Pc0mW/2Y6e5m7yfek3OJ175ksjLbW12g5axwlw
zizGnii8LLfH7lNnwwLA5OTpyq36OwQZq+B61HN7RIi8fAqTapr5CPPVWZ8tIz5mUE8Ca7QiCrn9
tGAaXh49ICiBNLXeJVdE+/6uyICc3S7eruOdayzoISLXkn/+5Y9e/nW9J43WXk/NWxOd7OS8vCCJ
mzyV69BroVL6hoT7I5mK7Qj//x5JfuSXx1E6bA0TQE5X5lRBH/ZNPDuFeo3av4zwfISkudXP6F5w
P0oG3xFcwdEUWMTFpYG7RaqLXyeI4jB8V6Nj11WOJ3jVU/96MyYUirfRt4QfHzlrRoKoWTGanOGS
J7GPBR8gAbXmAfc01O+IRA/zOiL7vvx4nEitHGUIM2tEstvu56JDg/A1l8rAfkEpcDTNPcsIMQpR
1lpowpVKh5S25vxKqTYHwdlM8Qx74gnJzpp05hsJlWeyZu1QN3z9tvWAK75jJmFpTqs3BoQMvvWu
90ePPcqVhwGgc/jBMMf5pp14rP3j/ds4KtaVBxfHSXLPJSdhqZOocQj411YN3u6XvG6pQnXr+dFW
giSuomnw8kUROIEKOH9HdqQIXdP6ZIxOO9SX6T/jeJ3YS5qRdgBjE6nL6FpsqhHmU7hJcxwAc8UX
e78XYkBgKSVqU+cGSYd4MkRyHy126YSMoUYyt/OffWKe8vQGIvcUZbch5lx0VowSLRhqidcvMVFV
a+0wK4fpNwNK/7GCextqv9xTi2W/jzLn9UxYZRbVIgyUL0zIMtbjV53MPVrRzKfPxOMh/eszosdF
1Sa6rCMfrS0N0rjjeMCct4/94HeUy434p7l1o7lLlZjqYYTV6LNYMbqFh8ihN/BeZPHZ/aok98aC
nXu4GlqgUmOfHOASftTWnD0UDs/xpFK5hgsB6AbGglFi5osoxwijvvqanq4nX5lINL6pr2XqmnFX
4Iy59V/WJlu9LI1phVfQ4Z1O0gZknRgJQqdAe8rBAOSix9vj7wnmkeEKjJ7lPcB2aLwNzKLZZ8Tp
B21HJvGxGIx9h12fvs0IJi+byecM0nKLvh8+Yk3I+M/XObhrmoCI0EqV6zpBjL19QKdduW6GOadB
psN34ZQug+bq0C0TftaxFPjpESeqiyNAs4WvQ3ir/f8SMgVJvXty6xm5bvGpczcxMetOi1X9QGoJ
MhSTVINBB1uzIT79zmHdznA8mjA/IrtTszcas2Z5SlaYtS1h9Ti5mTODhOIb7G0mX7835vCzuVBC
uzsensvNxce4xhg+ZALFlWFRboV3Y2BThLRWHXYgymwHNrmUmTmPM48uRhZZfAF6tuvYH+cNWCdm
UQTGwq4jWCocDko/UQ9D+w1hXt0cJRSVW7gZy0/ir0mDKHt7uSbODDp6ax61s9aC3uWU10UPGWZ2
KWw+oQ6TnyJJ/vljS0NxShPkY8rZzG9poKRk6ACo/zNgrAsdai45Px14KpIqBs9nhNWYHpVqAwkT
H7r0gvxC5WNRljtb0ZY9l5b44G4mVUBneWCaC5VbE3CKEV7dGse+bCwT+Y/cq+lC4nOLWM9MIwSn
4MAvTz6t0MCMJdNNUrqcpWKTF44nnOYabZhUo6QZ0EwnV4uEPZxVZyNQ0h5AwgsaRFPcWXEeowZV
4OzkVr/YUEXkNpwyWdXiIsOd9VvvHFEOzJ6wCEtTpi9X/MH/NVelClSBmOFBYKIs8+mP92wzkRUG
gOcPhv8PzlibGtmEDDZ5xJzgIjZakRxuEympCt5BH56WDqV6eEXIioz8gMzBPWUTFnpE8TXgv6Rt
r/sy2zGR/puwYia/798bbplH1W/mFtfpm1P1oTqZwkh0txWTjuJlKrMpJIVyGhOkFbizBbJPyQr0
YDmWV2y1H03PE6z2+hDY7vjrdWqDvuCLWrtDM+jVu9c1aFmpCXnIftqEo/LAKMvnys5skNt1Ciq+
lQXyDJbQfNC2tbeXhvTcaLAcSspf0KpGff3svFwDi9MtrBrwFkjzfxeTzy+rm3QnHK58Gr2uv6VL
b9TeXU4U+0V9aOCoca8haGa2fV5NHVrqJ6qSe9Z80GgiTorjSjQUsZsg/GyQ32I9hfwri9fIpxb6
dn42VY0weoipYy2J3/mUQUc9DLXJKSKTmqLzg9gFzKJ3CsKefIlaqJ8uf6nExc6h3hFLtFzaAvh7
GCz1ISP6KD8BAcWyenvff6aqli5zHtbTZv4pzVQtFGyt97NxyJbzHhp8ZPJKQdzB0qCAmK93h3km
++h5jV/Jx0pSzAWjkhOhrGtSMrpwSaZ5xE6at2CcHKFT958YBZyQRT/lMljYM760/45coiC2ScmV
lpFtzMrhJPZ1YiNswnEZmHHM7jsIqoJnbM0bfcRxOTCZop5WSX+Lh73FwDLMW1i0hsXTQA9XQ/cK
Fp+/OG52bZx0tkezoS9AXo0pvLX3C2KJXqK38nA6ubet61wRvjScPNcO4es6jsMIRan5YDbRr75I
NL4ajEeS21c4fKIhSWxIZuNIXoDc81B89ffi013QbGE9rqOnKIDqxqb40tDIb36SAKJ0GLJYwf7/
8Bt094cY4+I+zAubmFqNY22lHa40nHuwjQueHdD5Qq5lLxmmncNSDqgoHL68k+xj3LKAqY7aj99B
vJDgZMmIJeQk+ZmMTBAezoWm8CQ07/1eqKbF7y2KngWW9KyrJHTUF5nyFisNxF16gLmMkAS0LRFn
uJOgopoKJZ9vH0sE2sK1nPxP8TnIZfkrslz7prc4RTQvVopwCkhZ0CgB/78JUTC4wFYbR0F+JgSq
hMiSWN371RvAAKN3EQTEyJXUMEmi1h0k1A7dAe06dcTfEIhryMDorh4jCH57V32pACaMqyzaTEYd
y1sA5GcWeyx0NjKLeDiBfpiL1KgQ1uHuenvr0rOxHxYmb5i7kcI71iMcXoZsnCyXbgHJF85BqMl8
9j0dwkIaz371E71cKl8286kHFawFpg5akPRU/8IufwgKdFaxcXp0C4pajuy/77UrV2nvYLlAzFA1
wLDXIcCNIPyWOoCzKjc6hWSG3LkjMvBy3A9Rn0YphdEEd/Tzq50uRfSg4RqetftxpawfqPcv5ymM
GdXCe2l+N5SlGKa9DZ1Nn6NaagJDT/xfiiG/cH0bZGXeIOKrLm6dk4jKqiGFrHDA/WT/hGV5qC5m
F3/A3Ec7WAR3puoxOlCRZdr7SElkY3CMOO5vK29ktTiDHZSTm5IGS3ZhSq5FYzZBSaHLS4KzsewB
6E81qdlgUIP7QE+YoMk/7mboCID7OFXV1TN3VLs0MNLJHGNLo7v0yeP4DBuxjNJlbd0xoJuCTpMm
x8Do4AnQ4IJYFwKjKMZEglov6N3uKM7HI61DnRxL5ea5wWGG5amrvrlP30jEHoUazKlm8PF9bLob
gjHIf4fLBhdi8MVg1xenFv+xrWKWUl6R9Z10ClpmauP2Iub463ecqZVLDUgeufdGkppp5XkydIXK
zBivkAXgKAT6GvUHOvKT3ec0RIdizHYf+tgxRkdDpZN2jO+DM8dkYeko4+V8QGeyYbTgCDtfZgY1
B8GdMMPrrM59Laloq5VG0dRtq1/qOQIGkxj41WooLspjnWNpsxdgmpTzt9ICyteMnPa6miIs5gHp
w2RGrxK4BvypWWWCbPOLPZJOlORPPFaSW2Lp5IGF22HgSSc80Ar6ktDxGE3UxGO4FewiSKFJsLv+
zIM5mQvChhcACGRMjPtqHdBk8x4n8pNCeVMtvZgfHUiet3T/wroVWvvHIO6lEE3w0CA6MCBOqUiX
V3B+CNJNazP6zkWhskySn+96V527rExjYEw027veKmcnO1k0VWVGdJ+4xX26+bQE2wlMyGrMfr4K
6Zje7Was+kspvfSIb6NsAKzEflLEbGTQACPD3XJpHg00KqQjRKuSwHPT75gSSfibTlhksgZPx4p/
8mWMQNl7MNzWDZmkICXQDlvYbnstg4JCHcb1LoK1R/1hT3xcIzQb73mCr4hDK8iQEvFC3ClPm6xL
BquTd9CGOfDxwyC5AEgs7PchOenWKb2eJRz65C1PosDpsDqPy2Mlw59BP8p+DRfXMEZxeX2Z3ln0
sCYPEQ7WHp74swOrvhCCwvBLTLKWxEMoFuOwtt1sdt5lmXaMKvRAGW6yw0qSeMPJS/zhlwoyeJMu
6ds2B7vrttMWGJbPykr3gbgyXCuzNfP/HVTmY3/sDS26NTV1K32VCo6tyz7FT7NMfraGJ/dVQV5s
si0W+/clqqSKi/aa/4mXjDRfhXuI16QDcVi6F6B9fOprNj+WZ0QNuODR1sW8F6mQ/BEoI4OutUKv
VTpOivBS1lkMK2Ow46BDFhriO3jV1kN+ZhqD6NUsV04NA6GrAFVhfkyXrF2UdWScCmOu6dbQb9Hu
8q5jOEQim2ge7LVMmMU1MQIF3laqEeUIzKowzK1PBhEjh/VlQ4JMXhFHjASEyuKirpEZv8V1fsJ/
ofeJkLL2Il2Ohv5/4RTmv7dzd/a4L4uaDbyzJ/X2VGQRGzFpjqrz5U2wWeG7BQFYZOx3kikr+qwo
Sj7oMdEXf5hPXZeEL3HLIqf9E7Lcazb8piGLtxtpA8ILtHI4r66crpiNXmu+SizPn7wYEy3ckkLV
nBQbVYN8B7gb8b8ctpcSZ+he/sV5IdEdynMKEDzdYoKhMjNKUVq+m64LES93M8v4rhFNtfhLpf8Z
aRrMDrHV0r4eqeYNDxPYrNQbsOUlGp8+4D5BG9sUhrp88hp2BRWf2R8xJSLYUAKJpVypOqW0zcAH
PhDkt2kmDXrRX0AaXyyVi/3P5NmmXn/gQsrD9q62dOcQ3ROedNJbZMBbw/9cuGEQYL4Ab/uRfXo7
SMtyup5tDejwqknVARXuYoNkI5GcxxkDKa2qKslmAaewe1TYGMQFHWE61+oqKQOWVOILD/xDEx80
fK4smvTtl5GfdWNrL58Wq6/IBM9242qGR9DZiU4lIg7fGa3WLxZB4gd9nWkHWQ2yDO1sMGzOwNml
vr3jeqS/J+abY66+mbfrnVGo+lsddOcZkB7PB3P1pNnQl//BCLJMi+yMPFeMv7a22VSySzV6h/fm
WRbDq9EFFbuzURF69aimD88rPRWEvRkU6z8PvaF2wOAAUIa3OCF8MC3u3h+LU0KBy5KI7RLYPuVT
hp315G+jAPlLi7/BbfiCdeFp6RF5BwI0fbzsY/Jlkw5Yw7aUFiNrZct9RhwmKZ8iqV2Z6nRbwz1A
wsPOj2PkUOMJSfWnZiqx2J4YHnvOZWN7JbI/G3fP+ELusYKNkNmnXxFpFjFhtdIigauplROIPk1m
InPuGyfzvNlTez/AIzk0ebnHiMiZ0fQxQOca07jXkeTGSOb9eMGk4i1yv6/3SEwjTOD6IfENu7pQ
1ArkCRNhBxOQOwPOwFeF6iDfH52YqeCtuOoNOaBhG2pbAsuSLkhDP/80FO01uQf6LtSThQoZV6pL
hLFv6L3pM86IXgcpnphZFPwmnjA37PUDpMTJGc+eCP0Ofweow11m/Ssz83ys6iHI67mjgkXnpf0p
oaas/DnP6NkObjRuXzbdSHDynMJneBRM0SrYK3uRbqTdOVRedYptpljzlSrBlO0IpBareN1j9iZe
8Wcfm+ybLn0VPZ/OUUxtcvJkXxjDBbtlmm2KKYFe9dAZFQUWLETrLb20lCHXcTTIuORTHVgR2QUC
CSWw3MLe9AvTHcPsPAxkGS30D481UPbrdefDPrSNEl2s3NuYxs3XZru7NIMUDGbhq+Ie11drGiBg
8/YgJv+8vOimi8v9m57FDFWDhKisU9/qX2ewajmkOlHlFqzaNOpevOnjXLPvUidJFDTeisdnerK9
EYI4UKHyFe5BToDx9hAuxapzzk73/yZ29Mzlhw6r3deZcZUhb0CKim3VrCmBoSs7PKQBN4AZ9dl7
InxZ9+b7KMPt3UZIsnMBIBa+ZEcSOcd8K1cFU0r2cK7HQQQ2H1o1oF1F56jfp2FNV8xWlpf7FjZr
K+KInuVp9l+m0KNCeFTm4tq9wsSjIiDDtFyiIcv0MyNyxZ+3jkIOxrGuqyNwiRkhdQrKauzYLTNO
pmXQg4fdq3lCH/uu7XhMRaCmcS5GlaOcJmj+UaSESntl4ToHUF7Ypx64tW1YKzaUmepi8U07IZ58
duhWwTEsAyJMsI8BO2XfJxA+5VVLHcZTEsbIPuDKB+rJRl7WK9VGqILcNYqllFTg9za9UOb+juHY
LrHfGmM3hc75a8RZ77pGh62pCXmk/Ru0EL04wqnMdns6Bdl8/PmU6nGaPQDvic78y8KFA9evUrfk
CSux1oIes/EGd2F3c7qHrmF4XS00x8D+7PQZQYpfqrBmV3qVIim5BJlouZuicv7FbGjHB+yM0QPs
GoBzZ333qnYie9Z7swN3WjWdedYMlOaQu1tBucOfYkGdyXfioDrMAQL6o9hWxf+rfvud0zuViPvw
lIwZiDXVHRKd09Lvm5P+GXitw0F3E+nzXqS/yd9HbmHAy6X7bb4JIHo51VFZYTTrz+xLcRKGXpzm
aWLusFAKwi9WfY4G3dCkdvgqy4zr88mwpybPxIQjmf8E4ohnN/hH01Pke0nMAE+zzSIQYRuPQ5Q2
uiZI33y2gyStOZY/Me0+NzUDzdY/n2859HBTYkr4VFG+v55obscYi5Dhn0sQMd8nJOWB2ZSlafFj
ZPzdY5CTjmZ6Qmi3PBZ0/svt4P6aT/gAU0Hn7GIWHeWD2WkHbVxcpnSoeDGCsD79nxRa4ntPUF2L
u0tn5xBSwpCt5wOpTNC/DHGPOfcDkzPTihQPcplwYy8kUfYYdCDlaRPPyhwFvUwPBsgoUjDX7+K/
8pdv+ES1TeAJOe5gEKkgUQ1KwIVOGkpi1m83/1B8pCOIaGfVqPwnBie5SLyKNNnC6qVzs5oA7rI/
lyANvl/X2lFQ2DX6AeySXa/PIxkm6HrQRc/XDtBSUpeLM0lSEgjaUfipKVnln2gyxKvzJ9Q11K1I
bPujfLthkOJUVG11igakrIAC0499+5knnCUOjcubJOVqKUH8LWO/4CsddP8q6xxxCi1hhCIPKc7L
8kgjt4fmt5NwVC+s9cxxJxJUZBjqC3r7iatJPh24M45IpSmVVsyh86pRig1FLnmS7qpp/bIeVyz7
daS9VYDTqTkJjtiQ/TawiZGkKYNzZMgHniDOvkYvnsujADRQIfOLUmg835aj6nsqXXwWqGEV++4A
R4DyxftiTPdQF4/k8rLw5Mnph4/9CabI0AnVCrnSpO8+4sqArUITrXJode3NHF0a5znwiICBvWPC
Dcindd6X3RiTnFDo7mj4lQyaK0OkzY5yG4tN7BpXAAsRVv2fWQN00ruQpFnVT/Q/4Zuz5QRDyn3s
m5TdIDJTIdgtQIEGlPrEkcdoDQG62Lr2Mv4nButhUAht0PPIwlvZCVS4jerOEJX2XsfoH6esTee9
9GxeldB4XaNz1MolKOEXmDQuDc9CpKctDNROJxDiZSKi25SxmTisnIHXJXYdEI8cXb3mBut+w0kR
VzPltog7/BoK7Qr8jyn+bjDVfVWsR1tXrksBpqw4Q86ejRPZs35Y4eLW8zm3MdsAQJ2M76L209v9
Or9c47871Dr6tpEEHtl2AxZnvHJcdob1nYPqNPTLKmMOrjhJj8Lgscrao/zCd7cC19YEOdMsm9YD
E8RYcGGHgAzjTp28hTJ50Hs25Tvp6ISwAy/v66lEB4s0SoULNj8GwiWv4GQXBTck6a8tyuVTce80
5Czlx1fhv6ftXUt92dHLYFA0qMcuEo9C7vf6ff/+SUF44uepCGz12nwE/rwgxURoWltzN7J+5SMh
4WcPAtLmcPAwP7WNKpiCpLwqan7mwRA7sNagP12r4Lxt/Z1RAnIiUr7ki/4AxEpB969qKJ/Yf4XG
Wr62NZUxUNacVzqsGUyPGgayBnqkIlnyvaqdx5AM1gJlLI0pjLK/InWIQWXRZNPHALsXZDgW17mT
RnofisXYmzq1dJiixk6JinxfJcF1YQZ8xXWfUkxXZ5lC9IQNr7ow/jb83yDJ7H/k6HqyR3ka00dU
ggvUlCsqNRzMtuNyHOhAx+XmbokU1HhVT4b98kwClMbyb/iGClnpnimvKey23bxOzvNAbZnsmhrG
iatNk4JuvUmUy/quxsJYzpSA8pJ5/Z5WjtS7S8oebrVERqalkPUu+5CtLuSVo4SH8WZPhiZQmVrk
CTE8rl2lzB0LhtMFxIkUabOYiGrcrws23Zxn3wdXas/G639pR40fdxfLn1snNQKHsgwl0g7I2qNn
qZlctzZ60nDsXRDOcCn+UIwwMgoGfjKCcvXfoE9TTzH5iUrIoZKXEHuxxb3+a7pXenwbHXIg8JBb
hQBFulR+n2mmfPjhW0oJBdRXAmPFc8N5xGDG8kJp60Mz8BpJIvZruFN3fXVYQe6Mf9gIRZxWV6Ko
IhxUlKI7O0MMtmo0BilO9Fp4aXnwoieIFqx19/NKMS5kDi095VVHSYwW22+HFU8zIO5lnpELOJeV
s5zr/MLNa2kpjPDgwMkbr/TF8Qz3NKn7tA2nO4UjxteTWN4iW7hze5RuoPBUc8Ggdw51fPkmJiX2
i69Rhtm2A3GCRI+1J1L4cfTkM+fqmgBJvcWMsVNWt8a+I+Lfb5NedwFI9MS1EmTifdP4JIO6j9P4
uJekcFFfG6So/URA8fOBKHH9qcg9+MZF4DNdUVyK70q/BptNKOzjhCU5tNv+aSgOogYg9r7bKQ/K
teN25a432lPmBwuOJjs8SG/hIvAEh1LOulHWkdIZjoTHCaaPpM8+EJeyrNOjEZf8H+MMKtLM7207
emKRcashAJWxZCy1SqQKawPMCosMHEw8yTd5G5vsHVEEXGyKdAN0v5pDit3/yWPDLbHQ0G/VJB1P
AJgX7x9RCYRX/TM4ofFhmcjDGUoBAW+3jfuNaphCTIeVr1g4GWDIuz50EuWzn/2ZoeXJH2OzLvG8
igZhzMesBBfEw0tGENd2VTIBaQXaW7frbqw2y1xvcCDLRvXlYNgWY7lR09exAAXf6dXlgqJ+UUbu
bQraGy/Ut4zE3ulp4sNYxa3OD3FmtSHm2GfR0h4v72eecKEnElzekdl0VdT0jEJYtiMbADF/FHH4
2I8S6J0KarjOPcWjb9wQr9FJSqxjczGrQng35EnvxIFgSoCLCdWZelW77C9MXaNzfivTn3Yr2yOL
exfhwJEzOsfNzOdsEs7wwtORflMFav9EhCOBWdNESZnTKwoZOod8X8GXKIBOeknuLwUStS6vcoMk
ZIa2bwCBrn3YdhC/Nm0n5Ee4EqBqvc94Mqkc2P1VsNYmelgHxU1iggIJmDDiKSpzniPID2EBzdPN
uqm0pg/SlCiqyvbK63OL19nfkctxI/CFvbx9dD34H/uVKki8r7HBEmMQUzZZedzAPt7TbzLJm63A
YqWav5g+RlM7g5AgqvynYefQK0g8/bLOZjAbWQ4VliEf/u05GDxOsVP5NAgJAFUk/GwMIznrAPNr
4he6ez1g5loL7LVbKUi318RqB6YckFmNcJSN9PuTZLLVwyHTmT3EQ3icjls3q2D9ia4Jw73t1qN2
wKfmT6r4h2VsFsHGAwrjiIvlWsh7TsaU9qifMfCO2byMoNw/Y3tUp0a8Un95zrhZg7OigZfGDFS4
ETZL1E47T9Aq0BFdB1UspxzqwELLnHZ66MT6xypSk1cBg8jXbXiFQEx9bS5TkupYBvBhsKzYIltV
qqCSg8X9z7NJkNI9jsT4jSaqcf2zb34Y028xaM+HRbKnq4CQ+61KK9QTFvU18r8opGu+iFWogQ5B
C9TRnRP36GpPDkodAGP21MJlKLubgacxCDLFMOZOjB3MoK/7NCLgodzZY1kXVYOYKXY1GPatC/1f
vZLF0Zu4IpIZVoDnUXt7exGU6FklrOLzXNk/IE3uwvvUudOjGUblJxpz13FJBPJgYMUJ+l/7rxWA
c4aDKUQQIIvaEE1MUMHCx/yert9L+zRb2Up0AlZuuoZBiZfzgDp6rtSx8S91xMixR1acadXpACv9
087rgp/9JowBUETdlB1VaIcztbusfepZLaJrIH9bbkWoXrunCVTosB+zi0B3KEsD5ZwxCyaRPNvh
gY28rOQP/7RUSVTZxruiqey5ndMqnCR0SaTTyV+C4n8xKVRPW8cYQLa1ARQRtz/Hki5W0AU7W459
BDGIJWED/cCkPe81EY7582+AoynLDLlR1Q4HGp5yfWbmVMRaUexTunemUl/EfHdDE1e4DJCFNTe4
IABD7o/U8MQ1fkxW9d1/s5xWAUiaafpa3SlCfAZuUr8inRksNjeaay1YytfwKc9gr2Wh4sVd3VY/
Bk5D+0ge2UfTdMB5fe368tGmOW6jKHxWzrDMIrAOHqrmgr5T+O1Gj991tCqXe8J6Thm0NYrEU1fQ
L+PGdoyK6SJ1a1xMhuzwySjb4LhXf7QkxOQOy2JsA8M2jUC6XMaXScE/TJkFdVXPmJBEhWbVXzG1
E4KFTKw69gyfyEeP8OIDM1rB6WE0/pt609eA84bd5DrjneH+f70bSvM7pp0j54+OwYO8Vy2Cu/1F
YJwtUDZrAiOA16L+qT5zMRPG6Y/oAGhNeg6F76FkbZWnzQgMIBupX1vB8zpcAlURW2jXgrafcdcV
Tqc37b3nboE44sFDo4Xb3fzLNEe9p3LWkzOWWVP/XKbiJpglxX7UwkeIPaTwi8/g1GDIVnEgbYgU
AMWVU56zBxKQKJwK1d7rqqs2GtscrHhlSI+tWSJlAQaAI/aHN+6nlXUbZjJ/Z0u8fHIEeZk8LIXm
UWGMOFXZrEC4eHUkWFRSi1Bvh1UKwl4WEMVVp7SmF6LdxqjFq2c5cq2SfiJdXxEMRJOvTmhrV5MX
9XCf+3KIFgT6fyYe8R9jnPUeauI9naxXlhx53jhRJeePLz1s2NetO9bcla/F8B00yqR0TmX551pw
3QPEfBl86ueNqiiVpeeVXZEFxJIEoPcJ050fYNmkklFWn61sZHyhdko1/CWBo5omz0r99BlpZilD
QzjWJ4CNL6p+AusEpnEa9vLLLagG4t0Z3GHU3phZ7/Zoa+BqapewaSArrqxpxQHkgZVSl6gWYxXF
ziPh6+JTgrcvgIt4XOzlMmjzURcMAAIGU2Sr11rr3veKr2E3ZO6yVX+HVlXeuKDQZf44mYj4wa58
ivt4lF/Ys4IVufwPgIaL6Me9vs4a9AMaNsROFySE6L/2D3AVK7CWLzQW/X2n6JGJ9c1rTck5IdbU
9RcSkUK3XOsV+pJv1LNXBF7/8XtMvi77+4LDpBxJAqtJB7ADxY1i1wm8oxibB9Ms1JpxzpldD01r
R1dxup/IjYpI0eyWLa1DDRJ3LpBltRT4FS0wkx+mROmCLMvaWrmI6wsYj3WKHxO/VyiykZNiBkBe
GnLhBj+xBWejYAfL2OqcfVfG0A/IxvEi1J3gd8Fxdj9WXg/3GpctoJKwUgl4eGtLMyv2U7jWwT3Q
YomTjigB8c2Z1t271Ivw3n3iFneqCOA7Oi1RH4RAyiM8KZfq3y7NoJL5RC6s5jyJQGNucV4U5Z8T
AaCFIdgsM6bru2ljO4zZsnxBvRS8Qtl+gO4lf3/3VB80PdgrXHKo/3FJXeX0LIVhkKT/Rnqk2A6T
yUxHrRXSjrA0H4htr2MgHV6JxCpTQx5+lVIWIgsANYY/bBl5LV5ACHwWpNzDlWCnWCm9xrXgrpUQ
ToeJAIKFEo0G/U4RltDH7d29wy2rFgSJBDQIDi69k8QzIVrDIRKwdYxgb1899Oy6D82BhHg8Zitr
EHetA0aauAMXd1C8pwRIkBmq1zgVHs7bfdk/f9JtBrrY01H6jmlKSYPhSFteTat2xsyNtJH2Gzzc
YSbaTP99BFnusHMzNoLPP9Gwl2hSjzFRHEm3LIqGXJuGrN3eWITc5HlqDCwHTgCImmP9lUGYJ5l/
s6W7XUYiDZ+QsumIA+AyqyoRWztbWtnFx51HDykSuG7V5YSgK1gEmEz9XKYu/xwOg5+RWWNq5Qho
J2DdUNZqFgpUX8z9lBfQPyppnMUHT1fApLHpWhkhjs2JqfEiIkoWGCx+1ojIai8mP2HtW9GgJptI
BGmfO1FNhkZszv8WtHhWZXFnk3VrGisXlug1HR6l2UEfTFI78csstPhiWJnGR8NBh2cKEQe2Y+HX
+foREmgMZEv/wEp6mAKs1+qwli85us372ilHK7056ZTMkJO4onkG1NXrj8iQzocWEAJ2peOhaxhg
QxzfRTMP123jiOLaPnyc38aApYlbjLi7+Zj25WJX/9R5fGMTCLiP+0Prf6tGHmTtX0ekl7BRbn0a
ARPOt+5jpmPAZ7xHMvJyUCyLy65PGVGBZarZlaVhKf0K7dChh2O7RJxKx2HVFnEEZlfUQEKn1N/e
ye8ihGnEIrQpXkf+x3YPpGy8JTkV2ZA5wsX3p/NJVHsx6XKPXzfQxoY4V3Qvpz2l5HyyH23T2iOh
81w5txwW7Uws2kIRgx8tFzFZVZ3c26za3lwBMWl5i9D1Icb1uVQ0AYW7mmajJ9TdQ5vEyse5wsrQ
ZjDB1q3OizWaP8hohW5iIPQgmo7yKSrTOSug7YkQdpuXkolx1S47jyrDZiaokfUvtvzrD9jk9JDP
cvOBpvNT1N3H6Z5XHvGVniIV5OKUs27CW2CEyUgZ7JmZYb3IOht5xV4DMzQGsrwdEZ39H1q8+Pob
Ukmox/x+z7Ij5AftsmZXa8RYUnFofOEC2GsxX38oUSo4F9ztz3CHTzNUXG3E45fJTV54PX89Q1vK
wO8mkGBKDmjKtdibMclGwMbJtnr00eXncRhJNrm7g/oEctKy2YOJk0p2GEiTLEVGMRAFjiRiYqTo
3Dr6TuUuFdveJM83lBdKxkz7O4UUoItRWi6fZ+ijd6aDs0EiJcj0i14R/Ai0KD0fGSYKGyKAyf96
SsHwoOWPgfsQwLmB8y7a+vxDO1gNqkpZYAUdULyTYeBTPusrpF0gGETQAxL87qylLxmNker7lgtv
3c9+q0rTNecpMoisRYzLuwMUFIcljTQH6Q5nkrmCitS7hys9sQ/+Lzeb59Q9ipmC3bwDCY+IhvVm
2i/96Dwdzo7weRusJFbZBZqIJyHQ5ksSLFtFVRH/e1zJzT923nRaPHNcP8kGtXOPl20AJFkfjf3N
U7RqLlBLGm2uUwHKMFSxG+5FwdI6KZ1Hn9973KjJOSDSG9/cWgE2aowVPOfnM/FOIm0ZZiaRMBFh
1bP3eI4cj3FHVDdlCed8iG1FC7J1LybPdvT7gbjz814DHxhN1dfRRPueK+6fDjppo7ImltNWiv7z
F4aDTv5YM8t5E86axiZysJhjkLx0l4P7F2dh4MWUtJ8esISB47YNCSdcIZXDEm/iWWd22znRBlhX
4qqLLspkyzKMntMVBImuyxHecyxrvFHDC2Gl3UB9qohFIFsnfyivqSmIZHOd6OeDt7kMvvax3lj+
SzEk008iAGE0VoJcb+xrvxK0rEs9cD35cCYGaAWfETKdPYts/s01Zj695fRVJJJF2imGz//nXQZq
r8EibpTwWohfXr0mIskWTvSYJ5ra/UQhytPSUldh79js6K7WFeR5HQHNTuCbz/VyxSyzicm4rkCU
RfAgfwHtDnZJUaEdWB75y8rrrDZyHaCh7+jO8i4r1hUBQGTr58CCv2+KsHe81Jq1ntnL0HFLOc35
CIcSGc8WfPf+KC54MFcmIjFpzXXFVeWg4gIfmkg+mQpK+HX/t6uz3BjJpliXtYbNUH1uTIAW+Oq7
bwooUkShK4gUNq5KqYDDKwkqW4To+IYT2KgivwYVhjrIeUXCk4hcRJ2NO6nGG2bzLySpUmonC2hn
zg5H/jh7vvOVhuwWdKEcCUReh3bDXvvX/osBjnae6w0gItUOdjhIu0u0NQSDwfKYfj3iCEzobq8i
G17CYYQsS64Amec8Um70AvPLIV4Eo5HL3lJJmyUwgmxGF1HOfq7xlE8jKC8dCTpK2b1ihE2PIRPe
RizKemni8N7zZeJTqZQ6GBhCIErTBLBW42E9tSw2gt620gBI+I6ZrdaY196V3xug7S2qRUC56fu6
RY3muDX0tU9kbFdkBK72DbZP6ySSFhfB1BD3rHEZOcknD/aSQT0Ttjs67bcuaPURSt+ESrHB3jm/
dlogLZP3kyiPPMZezyutz5aEZxXQHmISQhAhgAKDUSTFjmitC3v9vDCBWVO7ZKDBf7AcNt5bxgi2
yN9cj3MkwSkFJo276sMoiHWDQp6KiuNTDlfZ9q9o+lGI0pwN+26rgQT5OjRsS4W0yTJwfn8KGCwe
QU5UVpc41AGDWRAQKXw1IfMvaVlG+PC9W08DyNr9OJlsUSDOanuuv7gWK+nIwVZE2DjZrgzFZgs2
RhvbBN/lIg/nvFBfAGkxUkmoqHkxzEpg89sKS0veZBSVxzc/UDdGakqFo/D/Vd3ILpfYJrV6LfGe
RI33d9Pg9A9MvNFu8aOOJCYpphk4K58oS1JJpn8m2nPYeT5aBxwNvbFYJh3RazcGE0jB2+JUPGNg
mb26bhQL0p38cqrstxY7QaVF2p8LMHWxhxww1HfZy33OqQS1OVjos1xgWhKdW5PiqIxcT1zSBrFC
PaLqDV3O8T/oV9+58ZKk84ihE7MjHYk1MURVMo35IpwYvRzZkJkUc54yu+Uw9SB6wqK74kfOPseD
AQ+/dTlfX0dFUvHpLHN9VwdLoTjW/X8ACnEC7uAfiwiDLnbGqqX0Cx1VJ+h0FMm2eE32iSncl+e7
Le2n214+C8kkUyONULuP2sFD77t/G/6Jjt8yOALBvRA5E1W/MiC2fMbOzAhLUjiud/3rHdSycp7A
KVjNL91KIbOXxAiPGmWXjWxW1Flb+Bjs6QXZEM5ntIbkgGs2y3mxDV8U5Em+XjiRMy5t6F/GO9sT
J+r7C9/6lLZL6bXX0zgs+8/pCJsEi/TP0WWMPgFvmJOd7p3HEUM+/lg1zC3/lBIAUPb8DTS22Gav
XgUgxfg1yvWCICRiArMywlIOEOzzpcJhQ4VTfz+HmnYuKKKaNAuY0ARosszGadsHut1aNaeKqGPf
J95LdDA29g13chbsad4CfLipzewBsUJFSh2yQ6DKiBauRftHFHj2ZKxWVvphCeprJuUmkqMFufSo
trFO+rY7kknsR7poFmTdxt8EPlhwPn/NdHJNAeTh8BHtcDqHyF3csTYR1Gj3EoYskKO+cfdCiGaM
+6rcRbk2QIc+KGw87hFN8O2SJzalUztkGXbsdxYIGiK714GOIkDxB9ATQsx6HPukv52d3kP6g8Vr
HBHrzdlhUKDHGZi3lTOSlNw6WQYHqFqNyJEqgZ1weKKz+odqE60XwCeo0fNXVTJEIpkeDPvQKHhX
iGBX/2SpYfZP4al6fovlkRyX9WZgU+wUmX+Ncur9BfsHATKwFkF/93rUOVJZCaYRrmTRzitNwWXQ
wEX/ZSOM/akbu9jLVseAgO0MNmwqEYVekBWiypW0fU4jLa0eErq83/yDrL0EevhbL88HfSYedz5S
M/x86nBgWju6qlav44LF4FpWBbxS4M67a3H2gpc6ceeDhF895+esaOzMXQXP67KvE7aukHwVe4UC
no0nlmmcHEVR9av1tkhGnxiSHRR3MD2AO8GSxZzW3IhK2M9ALh2DzXsb+c28dF/ZNbYv3sIuOCaj
QhVbSnX2bW6U/wJS6Ctn6/90cfTB9Ym04LMBltkcjU1NUx3+Ya2pMgq+k3Ja6lPtbLt8XJ9aM3Nz
70+PRLLMrBDGuBZNDQnxY7ntBISoam1tI/4iXEAeoYnxAfnVCDowGtN2Xyyn+qucVSWmClAr5KFG
5b92fq+S/moLbI+EHRPiEe3JWojwocLLhCj0zwXjRHlw1fM4YXDTWdztaAWMSxUaN7kY1exTCU7v
qhpIeWGaPHzp6cIbxHXlMPhYV1qIMxmFSjPZ36y76XmYueezoAEhQkACjv+5gjIC37eyN/aRgWQm
EWXtz04GhkNpAxcwmnk/tBiAdiyLwytmFxqoxQBmsuxpiN01Uehmh2K6X6XMTe9ZRnShGhgZKh/g
SnOisIEbEWXufb9ucpgtrlmVGvFYVSlEYr968leHZHl632U4sXCnHRGQ8gvshujXlwNlS6XGEFgA
6Wvczg/gIfAjYum4dLHGncTmWC3WwIqUjhXE8budv2cmjpKcjbJfJzXACdD/DTPA10LgzFIrnbqH
T09TcfDOdKrHuIuFDvZW7w8CD9MzglBwAZl2EM0juBh0gPQUKXYgM3Cs07k7HPh6iXB1/vt6ihMd
NJamCt+0tFb8CHDbt+f0mtGDDhGVmbOnSZHmeV1rodwL9cdcwtUfaBHw5bF7C1swFgvmiF28vH37
WztnsfMPv0b7aDBHcHHuh20PbPoRZfTIa4P9rB+gY+l9PIckRCzuKjWG/Jz9d3Z2QIYbz4Bi6hGe
/6tI4vwIY78csGqJVyjWdS94Hb3Z/2EfFg70eiTlnwT8MD2UB3Kyr/Hbm20YH+dMtQxVNiVwD74l
oZaC5Dn4WV7ws96DoL/K10xJUvOj/HpeWeHs6Rymoa+e/qqApb21HvbARhgOEp41SmTDubeL7XeA
YV/De+OSPGNyPwqyIsfuLVIzMK93A8GFnVFCVqHaegBJUpVscMItiQdzSSCnF+738KAVkMHOGZY4
1sdCqLjQ9eZHACKE3rdLjn0yYVVT4GswLlu7nZakOiBCzBoOxqqbJI1ZASovUR3b6UoEdDAYrRub
kN5V27LmtYvaU/5XhkydEh14RDFZyuHVM8SyL/xzd2FFUkGo+E7C8hSblSezE3CTxu1FDfBMXOr2
GElXqkIhk5vok/BP1eNkWgbjyzoXCXDwsd8b5RmpsXsiEuyXTboVtCIK/TKTDqsyRm7QEBX3NQAZ
NUubQPXu6AcvxqVq7PbGBnH9rQlrhoFsCvisopMP89uDVo749HAzJFBi8KyvalyMUl/5KcDEs9rS
g1fxEaXChsYmXs3auc4n8xpLhXNDTAq+nSxU8vJXRZeV/ztoSH1otxvR4IAAKmr3gcEk1D06foks
M3oLMz9qAsFKRtbRFVNY8yxkihjmJhOGpNhB4ZHIi2Y9RPRMrkORlOtbPKDug5/qoT9TXV9FDfJs
D60efRbihKyNjxoOyUKEWsxXa90nivrFi3tEdpvbs6u1LDS0SsKiZT/IC2xLx3M/zpxVVJq6bxu+
88vJc8Ue92axBq/zXH6rO0Oa21FfiizZHIzbduE9ol2bSx2/8oJrlDavJKP3OAb+foVEcgNyYEi8
1moUNq3QMn0uwmKwYZSlP5v+9NlXeOQdIZy4NFGQ/QfyHSZjyzmhgpxUN4XGwe8df9CykTtb+zjk
Liwx/UERq2kXRUlBxDQ9S7nIL8UpP5GxcLruKMgMrjPDnQKWDJpOe/SbwxW9E07T1b1pP7r9v6cF
ASxaUDTdmpmk3AobrbjmPJsBWN5WooZyDc4QzHhLFqX+7BBpn0PIWmZy1chTdX/JL2p7nJd3ZUDf
FsYCJrBJuvxlenv6OlK4Xh9TFNHemCXO4sLepUtG0XvepffVAMYllV1Xgu13a1fLBRFGXjRs6sTH
vGCpUsXDoEaWte03Khy3p2j1+2haHCEAD3fHpub9gNjn222bX7xDMK2CAPlp1QZGl85bmt2OEnA5
6ggRnysT4kWGwdZE0zWwg8LENT0G+AxcU+RKjUKlDUkqWTHvMekPUVEWF+oEInCyH0FDS4FuxQjt
zz2M4zAackl8lWBwp+LT7d5wv3S7OlqfU5krnUyRX4TiS4RAX5Zxlc4P1LujfhVhq3CbmUiuw+w+
IFkYS54uWCLqir8PQRDOMjIj2K87QI1CF2gr1hYjPKy5UcuJIUeLj7lDxvNrGJOrooyFLQwdCFA5
LWA/BtEeMCM5xvBpeeg9AGIa2FCxCI91LZLvhyykoGl9H5WTwsKGsx2+RQjbIe3lVh829DfkEHJX
45KsWydXMcooHuKlgLKQ7q/wyNVGdg0oixGWNmNB8sABPpLlbs7F3tKEoZIFc/uTS3XRVoBikDt/
DB3/HDoabAtTAEhBRcbGllNaXi4IJ3rfbwMhyOkdGFBlf+P+ad2LLcfqz0K5doDnXhSBP2FthZQV
dAqgDoYuis6YBp/ppf/ZwvHwoCCdfDorKox+cg7g9CuQkDbtOj4EFrAuC3+kQoVO9m30fS7QI/8O
g2oesEyiprBb8NZEDfzJFZeJ/y1azWMgkIupNHM62gqXRTv6i8DO8EKhA9o6Iur7iizytMs0YwnN
kprGa2QMYVa+RPhr5hkd10A7Q0jujFlY6lMcItka0uYi6ziWjedihldyGtzb/50EsKdEWYI+zSrY
l0vyc2UxLfepBE2Vyz1xlMW5mSCJUVW3i5r0nZgNunFcDb3aa6EI2h6ykAC4VVJzZ+jfaRYJclQU
QB8YfvZa/9TSOUGzLEG8AI35BrEXievPkhMa3DBn1yQge3BrZ/RS4hLYnn9CWH7TcbjYiIUeX5FU
yiYJDc2Am+oTIti07R/lJ1IEt5NQ9LnjU6rwZol2LuyuxzlZsF/es8jkHS0qZMF4Cwp0biq57e9s
sZw0+yshhO49QvH3NEPJBSJXPZUh6lUxrGkABqF1pzoJz/Vjccx5reQAqfv7E+L7h65jsXCKEHVS
8h90QI1GMGfCK1Xq3xg/UFE61bc8w1O1gePJ/4WApYoXCcO26K5CxFX9cQNChYR/jLK9xaGEy3Op
ckbKqpQRVX4oy/poHqamAJAoHHTpoPvUvyMH6p7JtAmJcWgt0t1aKEOAsyYMTuakxrIJZGpMSDL4
BvxAB5+QUg7JIQI2LC/HzIQ7sNYf1uCqkprJd4bQfPMZnHafy3UKZgK/naolkU2sQJbWJtXIZZfp
9bHEVTObcDZZ0s0mM02pcBXmY07dGmBNm8E/aBawDyeJ0YPLxyYH79KKyFigwYfZJJvCk0ptRUk8
q105SI3NDBBVIhrS67BpfqJmuZ0Cx/9UlNiQFCTEIGTQGIqUmw8UZKetrnA1JVoUjm6za/VFw5bZ
cj0HeGNAyVDX5q7ZcjA7c+CVCVooF/QaTB3wfxaTzsQR/2xnSLdgjSLM4MSMvNodfUDlz7cXOiOB
1w1qy63jVcIkthopBBYpXxWdZaM0rRnV1nLZYHRZLEtBYjj+IA8WnhXgnnefYRkE9xGaK9xrHbdB
tYBhunKA7nUuGaKdqjK+ISczbKEdKhq1vNNacgmPiBfw3I8uiwMWi45RuOG9h4lcDT0qfv/EPAyY
a34Qj284heRNo3CyTUui0kEfff0ITgX2s/6yn+gEssa3hjC8Xh68lMePnNYT6uiEtRcMRGWqj8Ki
Qg4LDkm7icTW1sZFtOTlgkU15sHfjkIiefDPisa8QeIWNK6isM5L6TRVxNmVR+DWyoVZWXItJhB6
8jVJ8HEapBV5sVObuK+aaNODgXRfnV+NvDIV1CZ3uXZ1UI21VThWatr/lKI4QvG46rjzBhPLPyF8
VnRKeSawYhx1/J/bv7HdlfkogcSetjDvCHPB513Q8J3zZ1LK9/BzgotAp1O35zKAfhy5lbXE7N4T
jmW2av1+rNwo87xFXIAOpo2pzhZ9CZ2QGkKAmLw7yf8n01t3F4Za0CelRzDf/eFSccgkc/ASPJKB
M/qFY+5YJeNkvRc2sEMq4KvEwWbWIouF4gznG7051Ha2tjV9JU3tZWXovIFrVTxt/CssT3hDOTKc
y3acBVrVSg2aJTk3m1mgAJUHLdp4KlXBrjnNNnWAl/e00+CxfIrTxrLtIS2MWJVxN+SAWAwXxF9r
TfWNXaHJU/A9DWUFxApw4NKuvDbz1oaNZJmzZ+fyyparB/Kb7B+OLC5F9dPf7aSjit2ihPWk1Cys
u0WBjfi93qxtxb4Y7H8z/L1Dy0Bfkj4kQZgeidOcdfcGL1qrkB9lwBUDzaLLXz1WYcxej+mhlZVF
1fojrJFj22Vc8XbyIF41Y9d3w55TzTfGaX3feD/cMlnQtPzQsW5dKaIk3qk4mM8DHvK5gVau2A6m
q5pP9bcvD7G24c6naKbJM6soXPKo3K5v87BqwZWazWOj5ToWlKKcpeytbOWZRJlts/04YvJZ/V9L
Q/MRv3xZzr2mN0pogzHG1JWzkkYRuG8GvKuZS0YR4P03dt5maMc5Vky/lDhtyjfQQ0JZDnfbLNG9
J7yWNM6PNChYbeo+njD1ERuTgekEqyS1X2h+4QxAA2U3OKzc5g6mXnyBZNiBZ+/GSGRhzLe5Ey2R
BUGNwz7Gply2gpiRR5cVxXJTxInNyfOEiuNuYu6kLTSvf0AU3uTDC9vP1lHBaEKIutrEh7Urle2d
oJcVjvxHgyqyG3Xn0zDs7vIRRlkzxkmXMldiO1LckIDkYG/aa3GUNSuLic+IJeuBVTG4mWqkXSJj
DPd2MjM8aH84EB4CpoKdhOTI2ExiOUhiL2pRGbWSOLka2iGo9mIRxRT5JRYBhf8LOIXXL9/XWaI4
fO2lSTMMwyHUTxtAIBbJe+yiO7FQC1+ZKi9Em7FPMpBxwuAyYRwy4vvYXVVZgtb+2eQX3JV0Cs37
i46+i4Acco53fMmNbzIJFwrZ+i51no/+kUUuwVGllTm/nqMjExExd/Sx9Bx2J1x1ASDKqD5It772
U2ZlTdmQxyMLwVIjegBEBIclk2Ay603XFGVq7Mf/2e0fyK08300ldzVZAM2zu8YuqRw3f5o6pmod
7JAJWlPTAQGZBiKge1178H8toftPsKdSj4aRh0K7Y8oSiThzQYKsiKDnOoNIsTItNalKGj2O8Yxf
PvHbQqPjcHgxeAMim8DeivXL+IcJHob1QYoRKUK9OS+XUxOxnOpQ0Uxt60m86bumYI3Pwe5SLsfj
YmN6mYteQNAPOarRAkuCvDa0VjgWD6B7RGd/G+RHfR4VR1KAO+ihrTm3KbGHHpjZtxgvN/UzfUg/
yjiTLVPYZrHJvUOCGjYvZLRSSkd2KKFBsghoUnfWksdbxLSxTpwWlPliq2FsWQamQvCAWdO+l5YY
LFumjJ2ygzPx4hbMX9IryTJQCdnBWkviSKLabKif/JAj+Qj79cumuNJm7kYcVh93Vvcv87f26X3+
kr71x1F45i5szjbr2BEj98xKo8J67Pb2dcZBsbWGzkxAag9S3Vmn9KF9DcOoJQufs1EaGlvQVjPM
+ORrqwp3wtl9JNy0S+gBWZ9CGBE6NGtozarGZ/riZylPczwSZNX/cGzRlIF2m3v7nThwI/wYW04l
zITr9rzgZ4pXH5IPuufwBxrmFB9dN2WIYo7vxsdJ5DG08Go1IPO/xCN56+CS83pnBoq/Qzegnfht
a7YJ9HAGdTbegBIR7UBq82ipkVhniI4EO2YTFNW8oWDQLIZ6jzLAwi3sC4TvJjxgZNxpFjKG39T9
3P+HlooEGIsOj0M0WtVy1I03dnzNxgG+5TVblbyfPvi/5pMeUjce6h9UccyjRz6zzqDuHbbLZs86
6/uoc+7u1xmfUzNsThcj+2bDqMCSS6Gns5Kmddmgy8zgU23uFWwwO0ZvwSNdQ07d29qGnSUEV7vd
p7dgDjhPDz7vuux31jghKXMHEHIhG30Yje2+odRSgLsf6fDqd7Idnmt9jkIPEhisZ+LBahFpHemU
y1rWnFhp0KvwiAV7G1wQjH2ZBi66t+f/Jo3avq+9nFI9Ebk9ut/jqN290JEVvl6uIpZeW2T9H4uG
ovT00xhnqGXPoTJ2dtaINsrLFP/SsbF05E0RV6SixtaKvMLNOXuRiWDS9lOhZ+2C1fzi9C494Dcu
Z6zZ7p5M3sHvWJoT/cnrQEvmxOUXJk6Y9CyPkFdpOwAhgds1ueBKbNWTm5I3l/WZAbUed2YGp0nO
oBbc+lvbnONpkVjRGv+L2cA9pQ3CmnulP88zqZ1Uwdl7EQd0Mo0HP5nkKfwVvdgaD1MaBYl90UT4
Pav4jUAWSz2fuQtTlzaVBQgsMX+9m5fx6H4p90EcJuL/XyjA7plSxab9vjO/eNVbZw+b+r1lqgwn
73eHeYxxNfpav0bkIDnTQ1RTdaIyHLBOpiop1r6qtnbsdIE1VqopTLL4iKm0M4JIlW8ZatgIydMw
lxawh25TPm4njgrAhChZWH+KlCquJTqhAdegOMvtuQKsxbmrnoetzMVsFjv3KApLoVcDH41DpA+n
Vne569RFL5x9tDup/sK+iQphzckePc1Q2He+oS1cTPOZhAjD4h56uKjs2epuapVrHgYUpAcEXOuG
l82qyCtcO4yFLNmPocBlpQMVKJtyPUabEDAml8fXEML9ZagOdalrWEhg2lzVj300gSlFqoFr0Eqs
1151bBwgBLgVpa6cxJ/+aDmLhH8DzYPH/nv3TM95ao5fqBT1UIwE+YWsjKbv6ugWhN4+M2WSWCV2
sTAosa3H2Vb6J3gW+1n+ekmeCwCLn9grdb5/Km1s/TziitAaobrN5qKVovtntoWd6tGv318d8enW
bM7EQ6vS9tOhyFzJYRlo5Wpy/cZZB4uHAKfKqlgnXvGhLRgUQ0/c24H7WSzmluoQnzjSX50RGuSe
RiIL8QTHM6hO/vfoNZYx9v0v51PSxCSWpUGbYdSMVlhnfgAUcCkVI0CTnQW4vl6jejaVcd6xSza9
FoHXl0niF6kK5pLQ/xi83GVw9fEnHD+9Tm2voNa1p5+7PiUCh3Z0dnuTcwh/3dWOFcNxJRkYhUCi
kFny6pK5ChDnTjgZzBD50fPQvFvdNoOWu1yiYJKZSP0j9fs803WYLBGigCAZetP64njMbDmMaGux
0oiFXeFGagMoC8orQZC4slCYVY/ZYGdoilOsLlz04+PE3/EMSl3HIoArj9t5IBcqoShDVtfGSPwb
ZTcXeQdjpHt06IXQy8rZ3L1CJZOd3RcF2cMP+eT9eW9JDWqIxUGe9svLaWGlxxoEbwRwOkv7mlUO
zrmh8AlMVUige0ivcmYUhuweQD/IhO3Lrc3QtmZlie/8vCvrKyZhe+d7uDmy6arhDy/UROGiftM5
ve859zeG53BU2kQo7OL2RkyApe0d3lQPGoOKsClzjf9ch2Zrdof4Yr5ebxvjA1nD4Fs3vrx9m0Ap
GyTzxGGSod9fTBAAIqghkBb7n0VKthakt/Aqwxdri1vDPHo71Js2xwdSFlf527LK7ebKtox5i+G3
O1HMRGR/FXcxhgiAIBhx9jaRyye1Z1LMptgVsLhyJhwoKJxKxFBMcSx83a6vZjeQrvdLw8TFQT1o
hwDrkxal+Ijpor1JENgHN5IErGzvusizy6GnmRXWR3Zu2naYrz3DnXP5s595Wb58JUNz7M5AzaT+
Q3K2BRJPDRyjGQ3mGmzWN4gD+4/nv33wftj+JmUbi9kP80BouANkk5GfV0S44HX5upuGYD1TV/r6
2jtnTe6X3X86PNBs576o9suoEA/sF4EAbBUtFDdKXRszVaUrYjEwOW43keODawDcPA9XYdux/NL8
zt8QHGb+uT3C4Bm5/elKEYwjf2qnR+Lb2TttmPTKALHR0AAS8U+iS0dyUcFJH38BSc9vc1pWxJdu
6DAWKAcoa7PMyQSr9xOZPS33u/bzQIoESpvL9WWdMpwQU3ooNfG1THo/My9dJgt4O4sYkG9Bt2Wb
PR+knSU/GfHVSwegWmyThFEm0SZpOQgqRNBO9gB6UXY61nV66pygA/iVhFKET5djxU5W1p9JzN6M
mWP3M+Ug+Fh4k0DpPJLqWNDhyF0eDZ0+ZunbRwsyxFuEOSjHFw6cQ1bvk36QcttTn/tgWtEgFQ+t
8CN7MwptRyoEloSFGWsODTGhoKi38Pp3cH0/tB3AItsLBCSlDZwBL3izDY0w+wabFIxpjGxBRR12
/3VvzQKoGRhrJT1Vjpg3sPNrm4i6n7UZ4MXNgwTjuJ6Uj1fLFyDGE+f5N6soz1kIdQvBeC2v6ftU
MEPCAQTJN99QFI+SRIkr9o2/mbz8rUbg9o0uW1D/3cjzYixJ1BZliTEWWxQ1/flRwzmAcHME/Lfd
UyNQX9+ixixfcist6CUvFHE6bbphpzwIMevEA4XHZymKkcfFsu8sqYJJpFVhV+P7HP3zEaYc7Jfd
hiXYPg/Di7J17yEfvCnoNty/LRFLVjAGVoWSkMnIvsKIY+NcN2ujQwmpebJJ2UeKOL9TUha9AgVL
WYTkMPJHA4gTzfiBYHGW++AhenLUL1Bs+53KwrbgahhDlj/lY8W9V5N51cvC3ZvPCYAonjfqvp/m
29I7CXt4mfhO3PMMJyui2ExMwLEKtx4Lf6oU6ucN/maD8n6OqxSJHqt24wZx3bQqRW+3SoGkSZK9
NQNNWIGwBoo7a3XP+YrsDP0RvmptfymKgDchNtw3Z1CdbufNLMsXRFlxdYRE53oRvZo5YXdN+HM4
yGLiwrfkLXI8v7MQPW8f8sLvWUUb4xbw29jljm+gDSdL8jQTPHxCEuKYpS/J0VI1CKQLvUPfQiGi
FjFjBukn68jZw3iGPeVllBxueLne4vxna1ESEKeUOetfFvUIW79T8K4xowOWUJ9f0qEXqPPh5HP1
BjUdVPuk9aaiQBVXaOYid9VoEqGmM9lulsYDiYe2kCmPZ9ZL6EGbqLLdWXeeNxEccgTsBFNW4RPK
r4rRUqBSz/Z5tcItEVQVUqyhqdUlZ63VVsODUKhmjjUIKIn6l7IQD9E02Nnz7IIeiWFqz05IfzYH
KctSs8s/yZooF7xWowflbaoGBrmCL1aSnEMgAqpgYHwEdFouZg2otFSFkocc95bS0SMQV2JVc6pE
vnmzYwvzXQ/zve0/WTh9wgkh4IUoi1h4yp7EYGVQwcCTAz3WrU5UQR87sidwqPm27AOQnzTTZhlE
/Ay4GvwTbDQxHfn+rA7MYCGghQebcX64oKgTFtvj8rwst9EyoM5BX9uid6F6U7hZx0wBk/+eDhCq
hvythHdP8Mykr8sbErFjb5+Sc1F+ssIoQSIOMrIQZM4S8QyKprZ97UoSPGfXApHhV+Fe4oOl0HTX
3QTGxuB2TmqlkS+iG79q49003pzbJubsX9BTnYATkcaVZ2w3tw3UBvaILyI7r7ZLzGk7XW7Zq6Ac
aKLcXBBrlgqKx0RWbuq1T6BU2UdqZLo9CzkyNY8WY21KkdkNSG17KCMTImRWwDYry0KwPfcaFUz2
WqPFNgYLOzCk8ay5ibIuHaRTR95fn5sthIWo+jX6IBS7CVG4vSd+Z3byuO7/ulQRn4f/8so/Styn
etcv5UGgxA5w6LWxj2MKBUjyk/oEr3Kf98+2oFAHC1TOnWhDJBGoN9sF5K3U0THqUhCp+K+Cip4f
7lMRXYk/8xLLYKtBUF73wLN8xoOImKVQH15HqtIyN3G+Xo/qHPdTUsO3d+d4VgPyi7/Lz4kbpwCu
sX5XNo0nRRe1qqG8KArVW6hBI2MwexyMX7PgO5kz8moyoIPl4ilOdxQP5JRKv1XBnB7fyT3HEeM0
LJiafa1Sqy9mjMZAIcmWwU9TgzoKyVhPBOK7H0rSH/Bh+RYYXcIjdtvul2NRRo+8hIC8pBj4bR+R
SKGT1IXXmzhflI44IR6L4lHJFJgGbKY0c15HhP5XZf8n80yw+vcKiEesyRNnsz4NN/8gK2zjs39A
wICHdB0SUQEwzThN1YmQHMiQVuZPwhEIu4LofP3iQvzo3E0qmbLiD6iasUx4NV2YYl1N50lWA7/M
LJugIi2j8Fq5ihDe9R920iTigm+q4EYRekGA/+zeZUwq1/ajYtwIV+Z9kWSNAyjaRQEeJpF7xdU1
DPqwcIVVmxhw0Wf85tUD5hqudJVkwTxGIpgPreADHj/2Aef/FPhorgRLwECymGEEbZhOsKJPCcFW
GOGmzw+TgD1f3aQmAIC6nXl1CXkgPa68zE7ojvua2xn3yZOvSRxKIV0omzQv/Aj4mkNe10o4ZM2Y
/M6C1yFts29UrYGUd3F0AGq3s1jevMZN9kF82O3MCx4eqZ3lHTZ3AgAnHO3yXm5qRj++0LPp6AA7
HpRrVddgcBIlgY4SB4cLWxyBgHcMilnnlhlDW+h91DlTLCfZZqHJuMy8X1+Ql4aPZ/Odm0xdIXmL
FXnjps8Y4zlfjSjXcJSzKs1x5bQFhNrDFN7kwd/CYo4XRwwvb16efSsDE3UtrbgXEWh/eRUT7Qup
trCDy8nJceH4TpDwdXfeRVvXGcvc2sITIrTbfpeDmWIRtV7q7B1g6hEx0pv0jCAWzO7uelUkTaw3
RNCsytI1Bok8Zll2tfup5aUE7cXucHuHv7BMlVVQj5wRKAeJMxqzgfzzF61VBuA2rbpkL7tQI4av
DZ+x7W4uYf0jPC2FrgoUS26o+W+dRiQUZsYCEhOD72rgrCxoAZCPl+wZZSrbr3fZaNUxwFU2G9aX
c6jRHdP6lBqriZm1HiAgZ1JJKnmrM1rcmIRWaycFrV5iLeYMObaemreaOmWSaTMu71UEW1W7LF3C
4W6Aqw5x/2dUS53Oq7oQuhCSyX+Smc7yDM5oLjaaucAxUmat253pwiw8g+/wY0u69zW2mhocp9jl
pA2Bahw/ZDo5i3nXHFEP2JOIZa9hYom0Z8y0ykZiausD/5iM7k0RQxJRBIHK9XoS9sIzYIEAMN1W
sdVsm4Xf4/WpEfhjG3hphS1RAGA6X+SzWmN6gm4bfKbifxnpKvk0BaStZchYxtO25FiPvQyTO28y
DclirhmJHbKibiXJQH3Lp1adhhuR0BovfEOxIWmKg8oCn6wjnTxTo4TiT/VGSmRDUE3iqDUAR0+Y
81hiN8NYJ14BYhw6E/LZh4qq8pC6YKhTtlVZHxNrhic4qmnMabjpCM6W4rw+I+mI/93iW7io9R8H
UtNSW5qlj9aof2+jjUptF/Y1ufd2biowssW5lIx4VUXBuKiRouFZjFd4m5Cn/zulge+kzTS4YC79
+95TMd56TKkZJ9B7xRuX/cheCDFMp9qRiXGLHcM7ARQ2s6BscOe7L3S/NB8ompBpo5HUAOCOmiyJ
D8cF/3D2ocuhdkoxG1ZDSb7GjPr4QysHjOXhr/Kakrq6taA1VpvJxoPLsx8NSkgSL4I+l9MWz18e
1c1f3tgUURg43nXStHoyihbwRCnYy2K8VRcUMc+grtUZYYzXDmkekpgom+fng2SxHO428umf4oAi
kYEmKj3AC4kuU4MGd+Qxe/5ghx/Ac62nEyx0oZkbHRqgj/GdWLcgbPX7WUmy0CPGh8DQgaQDIxtV
bglliXT2Tb8bnZhWsOLr6BYfR5Iskn0DAuBiwH7jpnFZqLzK51oZ0Qkt0AIZzJ7XRRMrU+xH7w40
NTzLP99JSPYAa1gj3NmcfzFJcWB0WBrqSmeI5fl3HEjkvN9iT1StXvTJrgU+8+a8gynPeNkKBxM4
3yJJU09TupbOF3H9HaG3mcFvYwuWpTmmxO5YrFrnDbmxS0q2HPoltkUW8OM0GEBSEJN9Evbjk+Qn
VIrwqoDscgrCWzLxKh48UNp1CItpJjfUQQ0g3TNtx4QYPQwaHkCg5N3zuDqV0udX78SODJxMHAUp
kOvgjD/2MH8tjs9+cEf+/PVQfIooVS5f6PGi7GCLaXdHSYgyJXbHfXL4+GvGE7hyXF1jRpBWPTgi
4BoMLoHREt9iXNysxxxgGbFu5Qwp5DPFSnnOdy+ltbvTo5L2S9Rt5o+vJBsuimTqm2JcHhdpY3px
yGntZpyml5AEp/EYMET1StoRz6v2nK2/xBBNpxYl8TnqT5LOTdfn+XBSAGUjn/xJtyQMC0oS+B0z
3YPm3HLTj1thokiOjPWT+LGyx8YgBsu0qi4P8uQCbKibgryno3ZF0y00mrZi8w4DhLzoeDwsoFj/
mDrpcU3UkRVt8pESECofELCly2DKYtspMrRj1BHKAqMohzfBUGzDsz1K1oXgfFVHRTdFfoYwsRKW
1B/uV0tllbESmdHH2EiPHkhm4/22ZaIZ4J52Hkdig546OHRRziNwrlGnabLQ7NjgaJjpk106dVqm
YTEwvyLssh7QXb2cf+P6J+tS5i46V7eYFb2s45p/XHLUMsWchf5dIKb2p+YwCqYfwtoDa0fYhj9E
TPVHUvlsrGVH+C9UXEadovOgPl2mal43B99DqYmvEIW9/J2QZsPdgk8OUEQPhSjTRAw5oFEj3WU0
0xDsOvaATVnLAgYO3W+SU/3eE3jsXRXuRq0R3eXvlZuj1xagpZF+jjNShrDTSnMlhslJBTozYXFj
ITGrWgsPd/+40LK0Aot4jJXe4py26zF3NwWpO+aOtALzTjSAzsII3RSN0Yg3GkATsh0zYMrVxxmD
6ZQTH8fr4T7F/OrSLWyU4Blrk6RT9g7d6aB84lNCKhX8x77qedLtVaqIBTZBc/NOXfRItPMLwa1G
gVijeUzx4AsnPii+v33RJ64FWp398xCjcrrrj1OD74nPp2AHKCh6GSTMR7VePWdKlHogMJf9vw13
wQAulooFjkZZ1vqRxFsmxA0BiwSEUNf/ikr+ar+l0Y8/JMVqkUy3XpCMhat2jegKPd9pEgvonQnd
snKIuLNa9DgJXrGZVh4oDH885fBF+mAlNOhaJJT/jOzW6MxjNhih8KlJnR29DqxPzMQEsaafUhrz
BnHFi7eQ2FzaAdM9QFSbBRLAChnb2sqFeKzJl2KChXLhBavVKmVE351ox0NAt/GRhCH1PZTCpVqN
a/umu3KTSuNGIN6qaT8ccDv31zIROBMx178ectoNNYrGEXZiBxG/TGOfmfbQ+i8FT6ixAU1CrNC3
yNu3xRekIAoDpaI4hlxXMcBrpwLlQTChNl0lNaz2+/lKqd9LWstQNtbzaWKRIr7Tyu8HWrlV/Ngw
EEOq+SFy9WoWbGXOFAl47MNpQ/lMUe5sW3IgaEVeUBJYNAG1POk+YoHSswcenEIM9k1Vt/6DtKyE
EpxUCchWHk/w3a0fAakT8Z6Nz5HiDZ8xfxpIaGcwzJQJ6Aes3Ud0GNWZjZSOZcoUIYqoRLcpN/tU
bZYdmQl0N6AXmc8TmKlmqp/MGK90qw8/mSzK5XEmdOAn5TXQcNzSaJ+TNMb3iUlO/GkTXf5Q1A/M
gVkdgNQVtvHvw3qfv8P0HT0dg9aEGB7rh7l6YzpyZxs/XLq4LlWsHz4rS2x3y9o0q6y5Rpcl098i
KvQrWTa40IE+Th6Xc/owrJFaUYEOHLdfWlAnae1GGDcf7KhlfJutuRmWgnIa5NhACW03x977TfgK
0alKWPbHYmJAtUqN7IcHs93oc9ViDPeCYfit2GnwjH0xRLlo9B/fGZAO41OJ2tIhxVPH9Bu1btde
VHppojZCd5LqbFvDKkQtDohYKRPIYs8z5aRgKT2ApXuIeH0iR40QwdzqL9Zzt+Rjhm7PrLmd4OxY
BaN+/ZqoXRatsVRAmxDyhlvrXMgHybOLKHJ8L7+dK7wiR0ytt9ts/28ZxGXuXT/xUNEnC/G4mn/P
IisdLko9b+v3mSnpyG/FJF5fyyZ96iS//ImsGBp2l5iflqKicjSmz+ZytYG7vmYzxRZvcs+HKbVo
lUU6sUUZDfJkMHYCt4SJ2EvhaEM/A8zcGG7TpGdKVwBpjLVELX3AMr3/e7718G+dm8yt2Xv0NCKg
YVxmVMEocOoaa8DU2rc7o3wikBVywO/IUVU6ZZblNPRy2cun4vLRgOuJOAeEc1M0AsiX3V6sleYD
TOVneE9T50b/CTSzon8fDzpvneAIXZcAcrjTQo0dCkhUKX7xPn2LT1F61Ew7/vi6OHqlBFI0malc
iMQj+sRVEChTjM+f2DP7Nv0n+Rb8wy96qmXR1RXBg2NTIXGW2DIow7iLIFlgw2euLSm53es0FIHw
H+BnXPM3J92p2ZzoYyQ7u8Rc2nTcJSZWBp2xIJdpv+hUD4RNVvQyJL39iHFNUb98inwQHnQb0z5h
rfwky2QWBvYv2uCrKVIprzaCH+9NIsVu23F7xV9vIXIwsErnjEBKoEs5+l96o+R0gZQrJAFtiihM
covinZVejYowjILmbCokY/sIWgZOdUKmfiDGLdZM9SRXq4Zo7Hi5THmYPNoBDBVtSAgGx6eCP5SG
TScW/RFh1Zyl+Am+Q6RL7W+/ka8i+qQsoXeQM+aNt3YQattKCe16b8zFb2c3tbVk7NlgQuiRnF7F
tbGy0h4XROntTXSN7yV3xfFLuMciJxgOhpCdYNve7ZOKko1HK/PWEN7jTFfnp2V/Oly7wCHg0gE5
09p5o72sHOPvrJaCn5HhGdbmtWsEa8JkQ8przSEobHie9yvxYP9kmosIt8LGQPr6IWAqIolSs+hQ
u+rA87vcJNZhpx1zT6fCbDHGfiDxDaf/r/ZtCX0i6FQiXmrvJonGOZ79E1C90LrLNrj9Sy93lz1C
ZsLO8eixoh+rGBfJmj3vEuFC8o/wvcmE15vcRYcM9aziqURivS/fClpdpvdKkK98fxqN8ZBWpq3H
QDFj+s0nFQRNmx46NqJmhkMXJNbbhE9gSq9CIbJgR+BYQLMZqqcKVmrAVaBct6opwE4YiNPTHuSY
OIqalCtEn04epfo3WOSZ/9S8FVqYInNVRHctpVrff1PBHaTIYhYxDiJBPgnZkeDlV5xaMDH5SCGe
2n6SzazJ5lhjPKe8E44csMPkubURVxo7aCZknYeiw5YyCixoXvKT4QER05OzQqa5rToz28K0+0Jd
6uFd1YPndZ8vwwCy8KzCMyA2Q7qj7Hp0lX0FEaUZLUO5lndsl5x2VXwN9HlxxqgnZLPy2SxfGDRd
wTHZtfHiz67ukb7XS7yevxAgOiqWTXwGF2FoFziHGGI6nzsReqPC7QevdwfXaVRD2sQPMW7jN7y4
XP4wbXcfCf76VlljGuKLU1PA1CCVg34L1XDPl+fU8VXrdEkogyTJk4uGobZ0uwyeldPAbT9y8ssb
hYM88lK2MqQDz/wuHaGD2aV4gVMcvWeEJFNkB6CdEH01SMl3aZJZq4Xy1S0n0qmjYSeBZ0COlhi0
u/O0c3Q87nt6Qk9m20iIZ/xsCpQU4H5dSEzH/8xXPsiUZUruqOQ90Tlr1kzdoiC7KERvTJ9IDvjq
IwHnzqTfUSd4LZejv7RLA45pSJS2lniutqFCjoaSmDMGB63tfI9yJMWPe43AGitNmBqY1js59KFc
aidzhlrLA+mIyET0aHWr3ORn8n6sh8Q4xhXxBvVCYNo1kyenZNHQwH2cODvFba/xQ3YaFwvXgLlV
8Ta3hMQUBDqTsWd/ODrFhQ415mpTb+PG0aFRxkJwKf9hWpnyDaSprnlWPMYITYNRvNb6CZ/DfIyh
Y4F7mJ+PATEIETXJ+3EygOzb9uzqIVWsvaiSZJW6/pAQsjcOzSAz4fjLhnezn2mhMpAB7BUsljuM
HlFbYeDMXRXzdh3EfkpYXdYJBWOaY+qstBNc3Bho+OvAJgyaDueE/5SIiWONrhCDIV6GvaSYgFHg
C40Guc/FJjIp6c+9cnpMyx8EVqBdWUnAbjxouDBHf9rjj/EOP2BWEA2qyOWOx+yVutjCLVHEjFWP
+/ehqZTlVJAKJVAQC5oHMuJpzVNOMGxIFPgjTy4xIxwS92lcqE7GmcX7A4qadhOwErDZvTqwLhZp
QUs/NoVB0yLAgg9ykTVsZZ1CKFKnk+U/QxpPTPfVI2eU0eHIMMNvPLaTfstLUPhQIo95cc5ytFYE
pdq+UQUgNlbYdp9QMybXVH9lAKJjezI37k3aMpVc8aU/zW3yEp+mLdM+Ou1xlfL1iMQWhxPR8N+/
VlEYUiMiGxuH4ukB17SYOCuMTc0N8RY8kVflhUNlaPEDSvM7f9hjG3vVqdnEpFQ/RA8QkPJ5cILo
jA20FFcetzpgsnDydSM/3MP76IbUisqdEC04+c1dtT1k4z98XEkF7r6vVWuDY1NUmypIimMnCSua
VP2SnIvVTS8zFIc414PYNBGVjZEOwOD7IfcsoUXSSg/uz1ccUGZKiw3NOxbORp2NTaCS/721nqdx
nNBdKvEJjmw8zYMl/Gc+GIK5r69HTDCCIdAdWSiazrY19mtPcSjzTc92Tipyi8RUXB7HKWXUYzz9
EuWjHaW3Ix8mY022mXHulCxdQOcYqgcLPrhm00vVgE0WMl6GAV3bmtxpXx4RFM60kw6EIr6FQAHO
vN8cz7NxSWnzIYrLg9kXPICxL+pVWJEK54vWormLCfqT99TZccGzGSODPvunQHZfw+PF6gJSMLIF
4B3AFldj8FYNAIcI7RDssWtv/3jcK/oI9R/7bDMqPCUERlFlz18Cr/V6OH2qYeStwDrViCQi4UwM
Go0PV3jrVVi0FsVdqYfUBoXUANQ/vg+m9aouGyBx5bVRN6QeWtVvM9Alc/G24r22NOZWlaLPEIuv
9g1YXNp0u/NfGCyrHR2ezszbT2njVtiMi2AfL+jdtUyv3VfyF/S9Bp4y+JfVpPasGX+gjfGz9oy/
QOkiQ+VdQIFpaLmgCuP4gSx/AAgKK5azNMcRUHMjT87kKKvRq0Gu2MhJZ7EVU/ly7Drrea9K+LOO
F71RvK21Vs3SO2g2CL9iDVpX0dR4lZF3S8q2QrPlswPTpCCHMS55ArxbEOBLy2hssl8KQDr/48OJ
13evw36SqVonD1w2lyJuZl48d5g6ilrWmb7i0lmNs6c23Eu47MqWB042m462N7FQsKMmI+08GSFk
7KJUp/dLR9Mfj1rYFL9EWUn0b4tVWRkSeURDWxAzmiSIB8ZHYG9ZcPFYZrimtuxw59LxIbpQ4c/M
uTTgnOtJQ5dKww5aiMLoQWRxyCdluU4ZaQPeQ8owLhMAn6DsUfseY4l043CYheXuLfGNo00slpHU
9UmYIp5xE/vnL3i+xzroBtq36/6ZbjovSlBuL7z7RVHaPyAyLmQGo6nTVl80yLNJVcyFiqlBf3LS
rZqm8VoYVOdeyJ2m2OCPQ52KEvlZjwxPxE5295QG/CTnpLhrlMvfH5DlfmQjeHGURGEv+GvKCykf
4CSWKcA6nPmNufYoRMqnZMJvMyObDnl3lyzH5ZxSUJesHDrGbIghfDUJzTbRNtiK8nFlBYHYv+69
jDRY/PbMIICLPqRtqAAs6tuJIfmUwAK45ofDgW/FwK8RFT4Qb3tLNBYhDmeuZG1SG5z0rz6VVmH2
Nurz/Wg8+c4cYu5Z40bID0mzsutac/96uMkCX2z58/vrnu8hlUb7X13n8NysWWOAQ6zUWiraHzqv
arN1RUFN9ERArVBNhsiC7w4ZXXd0nihKwEfMhb2VjU6FAFVZn4ibOLNoJVK5rL3oPGKsEBUmrtwD
py1QjXFcQ/D3rZwpagcYQPaH1bUBNLsDgIy8DSBUsm9MAS0qyMyeLRLNJ++d4or6Y6QozN6Y4hu+
zOa29bdJgMEy5cmxTE8I+7pXW2y1VIN7QepQnL7p/ic+zc6OYw3lf31qRmjS+UyLP18N/XDCVH/l
q4E2Lc4baetTKVjRfS188cuIglLMxShmWEiDNio3XYMpZwe3jhdeFPd/aX+tPtPraDnulvxJoisB
q69sGhekqkttuWSIrjKfe2331b1RxdO1Dgy69jHuEerJ8Ww7/Hs1nd2y5qhRSQZGDGxJ5CaRT0SX
gbywSiTRQbJNxGTfwhlqYkYcUPqQ0Zilw1zfgn75uMfwuUSiL5qdU/49Tj+EluUVfuvIPGZ8fEiF
3yUenmfsANbPd5HNcjhMN1XNQk2axH6dNngMti8bvwqILb5HsuwaUmluUJUtVsdMMhTu+PCih5ha
YVwD9OV1R7Vf8ZZwmqlfPvc+XpI2AzznZoD8VS0qsk3Np8lWAH6552lfih9sS9Pw06yFEgAGlE5I
9Jm9mc3IIKq08avpRuAAaTbP+x7byZ0rjSkEAWhHSpmhJZDcF4Yru2bRhhsc97OEwm+dGEN1g/90
JuFWyYFheJGp3M8YzRlMkBQkb5eo22XeSgCcy70p0lIsUluKFknUly8heWoW8pb/MKw+Of1i2WMR
LEDEii/91q811NuNUa5QAvVrM1EEqVONwC3IhKxfqWVrRZRMii4bdHHqw2Q2dApJ6qInrDO6oRoA
bIR5zOUGjzau9a5pbgageyyvvJmGy9PJP5LsmGmMbM4L5W1qZ5iJmWP7740WvQbDVr+/LF6vbo59
/JTrdytfPlF/jn75UYXr7eIOIAHty4m/ZsP7qY35LAPmDb5CONAJtMEUBAlHYszehvMdVnucfKRv
7I6+8SrFBQtMJYsikOIFUGyXhNS9i3yHyCRQu2Ch58Rhn8cHT8ZHTUwilfhgxzKExrOET2f8Zvs5
Hylui4/h7rayEpCiIMxB6loUC0XIk2MfblEuM96eMq8mHyHdhCxuYmjs8VRrf9O0zcoHmEngjYxc
oPYXKGtIB881lbSBWXI9Sn1c8/9VG+5nWuOlcBSZJ9yIojQKbzx73YxzUJcpRFA2RMKFUjRr3xmM
V6mK7BRN3Ypp1k0om+gnUPomBa1s2oLp0vzMxXJvRfum6I7k4UiBlQwIo6obiAhzz40EwcXuwtOI
ogHeTMmaZVaroPq2Y8dVyd40jra28+eLdXOhj9UlFqUpCmDopupgzM76gx2e6h+GpAM/FiKtUgGX
Yfb5uk9Rl8jKPno8sLBgZS2u5dQ3dH08+88f3/lS0ulwICojKv1rCdsvHU7BPEB1A2YyOoesjpRz
wz/FakQW8W4e4d1cyH0Rnx1Ntzcy1qztF4zjXQu8WQW4pESUDF9rVuMSLc3y+MQfOPY+2UjctrjG
YgPIK6wvOK+QYyv7knzZ9YSG7PKrYS6SHmUy1Bjubnql0YNnlLrx+hes9pvVPddJfQpW7DIoNWfe
xaik7qwGiaU7VvmpBGURV+pobRwWrmziGpA8DlXe3NCs6RMeiVXKWEVMZPOM1+ieTOxqp4ENdtHp
4LPaMka9l+S2POVgyLqsnB+ZDhvmqAyL97g5ta9H5MhcFOA8q5Hpe4cewKChxkUS888dAdUVhCDN
EXuER34WEMTrklO9hU5q1InXZ2QarYF6RtzPaUiqDmU6g25vKes842Q7dITcLb2yg3Vq74aAVYDd
QWAuqMavH5z+fmcSbjtsZoYrlNwGGLYMA/drF+cURpaic00dVFlLLoKbaB3Fl6nkOtY8ipEqBe6U
/Sa2EUcgM7M58Z6jm03krudiR265fbMGzuT6S1J9SnKUwWQbBq8bcMvs4obWoGFsVe53Xe1lFoL1
Di9GA1C91fGM+A2xFDITJgeXxVTFM1NmGHe1BTHPzl1D+Ap1yTEnxBiA/7rgrdqrnnRubGiW/biA
Q/I4LUAVgL+/Ss6Gjnce8JiJC+9QdudysiX0/Cp+ZsqoipSTGNuNSIbx3txgpNPGuiTF7WuKmPDo
3eTESpM8sQIWC74GxzWuWGHyv/xhImaD7sHjq1qgyxkJcxt4DqfrhC6wBJmliXdZ2WHZ8/ULWLRU
TpvJVoMi9J/gMXWXUQOdueVqp+2Y/wy7ZfW+ai5RzEjYRSs57QSZ87NhM5bVP+MFJRMuSRna7NF+
sO5zBwclRiMIQMe7CA6gNbiBC64vnDdH4S6zNhBQQjQSOSIssgmFJsQ86QHS4LhAsHvgRgcqi230
SXTQcyLqwQXdO+gasHzmAAVw3KPiRu33UmEyhTNpm9yxL0QpCGMsgklEwXIdhpD+VWc12vLJAK35
C11Rm0T/0rqNq18w+9ag/TjF66+e3SJOZKm8fuBHRuWEJqUwtJLveWduDizuDOYnffyvVbeKea6S
aKVtWNGN3xBXJTw6g2LZOqlq8YTXbm695lwPlcDRSHwr+kfGFSnb1u/h+V+2mukWL5xCutpjHGyW
1Qp9z1p54nAUe92ZMN4P5QKBcksxDQ6qfPSjHBD9bRmDYcotZHjJ5kdzPPVFTOQ5XUiTVGfYFOn7
6JkX4/2YZ8OQT5DhUDnkLZfVVoylKM91iyuHpuuC1rzX86vS15HyFz5dsyDo5Gyf2O61M9OFI84g
9hxrx4Zs4gGE4w+MnrN6EKL3oyhG4tPcDRp5LfL0aT4kr2xLWVW2MBuWfJnadgbkmeKQE5q/UiE8
3aPW8odNoJNdJnBDM2qrDuXksWu1gTU0RUBg3k55GRUwn8PWZUx2wt3l+db1+Ma/+whzuLhHqI2r
uzr3iDat28XFNTLCllMGXtaXAjEAcuTq+VJoo+ND+7MpQ+qd2Tsf3TTZrEJrehaz6uhnzd7EOSgS
wckJPq/9tPnDxylm+7ix5mEAtSnar2V5CSVaBqDd0B7JzKa8VoSpZXGrJpCFVGMQJKEYCSozWyNM
vC0msqLH/ix8eFK7Rq3Uk4vUi/V+l6kpqw0GAF3fP+lyI44TUo5sOFaNK8LPsUxukkkIFGbj5zRJ
Ph16fIH6MHRLqqCwSFJC8e6cjNpHwxUK3cVs69C+dgUWIfewqgyJGzEXlDOwl5ugoMyCL7dwjYsC
5VHSR71SlIfous8zEjlKovJ/6gb4yUQgJNzg9SRjXGVq7Hf1daM4JUvWhmVb2LZvx2FwYY8M4+Eg
tl50q2F1zlkjUw8JcYFgt+BjKzFed7dsX3YWWMwNMoYszswjm56X+X3ZBPaWFUMS+Yao0Z3VcV2B
6FUtUDUQ7uuijfpdJtIVWLOYiTVNzdpWTPTIHzcFnrd24hNXO0UC6j8Oqy8RfYG5FAbwNPEIoWzX
ZhLDv/5cEnQoBC+A+H4x9WChywWSXvdm2wYx0zUO8RNn8b89LbKKX6BgahYdetKTw3CVL0RDICzi
yhoeOWS23VNx+nh2JIpJ+fWoQrozq7K5bRIGapbet4zoJkH3bKVtE0iFMnCMGrEes9IIbL2DJ717
s2FdRUtOOGBRr0NtWqWbLysP8aZuRGVB5KBDvt9xt/uBkec124FB1yVlZq9Df2IXUYFY/SbNE4iX
zaj6ViOk2cTjCOgQOSHh0NhMOzm1yjPVeBzg/Ru3B/D2DIwVS5KA5EVoVv13OHk7V8WAvL1gL9EI
8m/FjdezRct0zo2sUB97KJl2IzbqqoiiewpFXPILzbFzvJI4OZ9yHR4zmfMdwRu9kbXI+eMVEthF
mDg1nOQa4VSRQmhGQ3B68v2yhN/exotFbA7sjKW8htx/nijxz+bZDWrdwfWIHxelXpdmE+Smpud5
TUfjk5VqRsp/Rxix4lkc+XEY4dXhgVZCRPquGDS1ojH5CGk1dEhmj/Z4w6KmwADeM5f0MfpxLGPZ
E0kq9cAE0S4/4bMPPw31V2S67ljTu803Ef5zrKTCjPE+GAmaJZ8h4KMTeUfJUhARxEZyI2G9pdoN
+ASuN7NCjZ8S8IXu3/XcLYTHJPm1mvNrwRHwKURv5qI2amZzLudina2llvNcTHMGYaVetKVTCYZT
jJtDDgLAV0nYPhUXbo5fJ814dj+sPSdWkbnnNQHqe/EaiVEuHiewoh47rPbpHFeuG78fcFjchTbC
1prspVogaTdpq7FqaJvTfC3XazXE9R5agm5rKI0ISEcrisZ0SlW5g2VJVxqdV8JihazBXOi64vAm
lmJuQLPDP1259I203ZfmQD1gqvZR2ocnsib5Mq2dvmUcQn89sYvw+aJvM3OgzaYstMb2eZkdsrtg
n3v9f2WFNi12hQwTQcI6/h8gwrZghWiRjFs2xq+Xn1kFv8QWIRlc7d412d5PSdkOAbVarxq4UxYi
Qq3aD0c04/X/wKn6JsTsCkqPjma5bz+yPVMmbr0quxIgkjPIoc7lc1OhxgVi5TGM4hpFgYdkn8x5
TUySgLySbeF6wwRMDjIgXEOSWIUYrUQ2LtmlyL8aV7M0pfYvtemxbqMcvXuzQd+K8lJiIpNBwpEC
UZSvvvGFsfYjl0N/LH5HBWU6xvHfwrMojtZnF+/fySq6lqKSaabMX4FiswQ7F+OB+W/7ryzC00Rj
j0eM8j0Tcc09GyrrUadoVDgmse27+Qb6FA5MIOdamngxO9Du1rMUe7SXCCjnYFutNgX9qSMUV0UD
oGVIzA0zIBjLKMyCPENgyK+SU5HY6yFrp+Qxl7uLSTf2rl1Cmry2hgeqwm599BFMsMZx/3/tYVFD
O7sHsKnkztDepIdAZdWpk7gVGfzTq3WfsuTdF5s1y3i/qCfExhTueVd7BzVyc3e+hexyeegosaP/
8zITpeCuQ6xRBLjc0Knc1aMGj9Fk48wehaRVjIAo6GJVOKk927KfucuzwrZzmjzeFexUnaGE0wjw
VVXUvvEF6GjieaLWKPA00p2RF5LuvFqn1JWPLyl/Y5wdL/s0Wh2l+iba6p8P/uYnSM6fXFNtKuwj
OtbOXmk9JsNFwkbG0nJ7JPxy4PLolsEmAvr/AlpPvPAp8O2yFB4SXKz0rJsumF/o5JkM3BrbUzkJ
qWkF9seJ9UvEVBKZ/F7J7js7ERSg5HJEiWDp/0djtkDgNFqLwPuKrsYFyMphAiO+zOqlMaFNjKcM
oKZJijYX6BBz1b0hTlHuwB39EGUpoYmp+UcR05B/F8AnzzdEL/RHSKu6yOQaR805sSSQcxbgL9Ik
jdZiyLamUnIe2DL5k5udee4GGCR2TOmQSKmDJMNFXcse0+Fc9DWtTiYwVzLyip+Usa5yDfmR4gcy
Mfhr81WWsIEiWGLfBexi7zLe1BuXa171TzD4lvkCAAoPNUw8+d9rUkw4WswvYcyxzNY+dRH3Hw+g
JVMuKxNDnEvQ/0j3QB5h3fRvekSW9nW90/otQ3zuUhZG8q1O7LnqeBNnIuEzG0ThGZRbMcvqNwMm
M0E4E5YTzyLgd3UTR3Ay5RKa6jfTlyxJJEoPwIYOJEjAMkIcqsbSXFAu6Diz6CF0Jtp0v0yH7D/H
CvqDJjouTE+QmAbG5dpI5WrxHgj6QEFQhpRfT5Qud79BxIg9ZKpf4e/Cw6yidajoeCOoM+hiu4yf
hp9SFUVNnrNmv9aUc+d/fApHjXRMxl3towD/IPXhFOnng2HJSibaly2MAaEMyDXLMbowTB0kB1VG
Sh87iwDtDMj2eoSvaNBo04nwgsMJMlWVK2neKoRpu55wNN+tfKd3t/4bOHqUTOs3IG3MoUn5dONa
UMyg2sF8OxK81zoNuvSfrHhchymmCdcOIYijRtB+x9glzyHjsJdyWc5bZJadDbh92quyUjjK/JHj
gLVjuwHsjRaEPp61cocg2ycknT6ClzPwKEJASghpjCsbx9UhxstuLFQTqUNpqCWgNS+E1Xb/hPPF
T1UW8onvaDZ+U9TC3ki8Dd/xva55TigVZn1EOjA/2L38lS3CX1zHP3BN1Lne9djlqyQUO7GGHiGB
G9i9VGoGT6UFH1MvN+yYnOqFOTlGPdSdH4jkrzQjLo//NvIEO2+9IPegNzpJM6/jbVgI7qOhDjtm
eS6oBN3MBqJLHAyV81fjgjLAsHVSkk60U/RtLGWBZpRRfYjtRLpAHx9g3VO3UfK/CBcstoeckttp
8o+9WmBaBnB9awN8FMb52Kgao5PmmVAMVBfKLG8KRCQBFrvnigtZXbR6ZOkDqNrjubS0hp9loObM
ZZvLWLlKpIxA8Cqg2QNK0NvW4NLlaKhxsvGN0zcEdLqMdElwpeYyARDehu2L928PqglTZc3ds5Vz
Ye/3cZ7Av0r9GD4+m4sWufunOAy+a+weJcFjSb6VuSDegmM84zZ8ECXhXqdNaSgrC1OV8c8t9iRC
nfH/gxKGJij/yqw2COIC16MhDiWa1oV4CjOd4oD4W1Iobq6D3SRx1LDnNkbhI4LyhbG/ddpMOp4w
iHACT8DraPDVn+5s4QACKcyvgYMnY16eXTSTdB0K031kf+bSlyybWgmpJZ2NbpRi2un6KQWZSu8x
uqFxqeVoSUDlI4lEDGP35jcLmcdMtFB2eSz/3pbltmx8YxpA1x74JJwG65hl6RM3eLbnz3lR7604
xw/I1oorAkDGqW2FEQWFREKYo2Bs7oLTM71SoOupDWRQfwF+RKGZ1aXa0eAWfVnaB346HsvLCwiY
Z0ndrHaTkTB7lBeovvvwrzQA6QUTAJ6vMoWsp1cqErf7miRCmYQg468/kZNashUz2yw1jtFnripC
x5LboKEJj73OlYn8kxwf+XX+RzBjeWlLjYBN4RmYHOVWP8/sdfdzxgLTQIpSaFlcqbx9Z+mffsed
Q8aJeIKDzjGXbT+kQET9tOQIS2PFFTd+LrxU1hFl2TDdmR9wgE1M7Fwj8HspRUTvKqDp12ewfOWc
ZAGNVM5E6w6bObCkpNdH7Dni8ktQck7hueO2+I5+g2yCG+wmIIofQi8llxpSCiiEUYkSdFBq74wV
3iBWqZjQvMkkBDk/NMHq93QgIZP4bOphZ+F7z3LqA84lGJHN8ghsD9urMLyIo9XF8P2haBoQtX+W
l8ejEjVEsLxT+est/JQFaShFOwCbxCNtVTwrLZ3C4XOxR7zQRaYy2O0w3NGf1oXDOtz19klcHu64
GznOZIe7GHJ1ghi09mOqZKxVQmyzHLtEFTCqfHitPA8Lm8sgH0hXTZ8EsqzlRMbp6UFTUqaO57IN
E6I5TdB4S3HPZI4iwnQOOahxPM3xA/KxGMTss1naV2Y0SQN8m7s1mRe30v3B8UdsHLWQCYhIMW0X
4yPMViz9BaUA1IksCoh0V5RhpYWDbKJBndMZISgau1q31V4t3+ePnk5HhF2dE0LRcptT/4CWSzOR
JIIk0fyiFU5MPxaXATe5GcgHhirRwYt8vLs4Byofomd07YSfmjXcaHm5RgMbvJH9Tw5zJ1qnKmTK
Is8hxrTTp99hGYe+kQmhFqovWNMYyOD/1/T/PUC35KDY5+Iu564S0e57o4QwMlRx1Z7SGKD0hrZ2
cjV6FNp5t2vogjmoFDh02EDDktN4fhhwItBBvTCdVHDa0/JdaPTuSB4LBFaPkuipZjiTGE5Z8axO
4GQfqU0nBvhGSFdYcJNeq2bFohxHf7Y3Bw5jcIkbvGnL+kMNDnCEKXBKzu5/LjYWUp5zTdy2eYf7
oLGMaKjPt/vleo81vTYDAWqb96AVTGqtncK7MBRrPLd3mVC0DeCvYJbUb5C78QS/iKdXc2CUSNfX
FAqAHRU16bAkCX+DHIX/8p6QGbDWW8ePDzEUVEoYWJd3S/YdDI8DA5Q4xveXFyv6YZiFcJGMKgxq
s1+2ZkCJIwbJVYx3OBWPa5yF42FlpcfSMPjsPGxu/utpEDIaz4uGjJAnjN701p6d58tKmVCTUu6w
y3UCSi0fQPvTeirUwH6oH378PrsB2WdsnHF3tMRimlmaAGfVhofWDlsXpGLWrH2VIfm70ARNn220
pmPNYoN9+lWH5oX/oh6dJSHrmEnYTk1xN3TmdFi02k0Evr3uO4rSTnhgRopjulEkL+rwTSXVtvHQ
1OTnjQlm1azodo+QxQFhSf8EyAcJpY0AvplYWFVwxFZK06vz5hUNxABQDuIWQXpQQ7MQ4eDTIF/b
hFsz8B32Mip9Mx7MdywqdTh/Ntaw6El9M5TO5Qy3YLhsT2FyoqSo92EkDubmfXLBLBQRM+Djn+1b
lHg8Tudn+IKFwvn19jdTAjRSI+YbOp+ty13i9UfkCC4Eb7fZ//BxgR9EVKTxXCPWv2KwVeS/f9YE
L6X8Duc2RDyDd8fuf7uwBuDV8ibyMugpnI+naLFJDyujmkTmhXHHn1pUQHiAVA3aj7htNtyHMBUe
pjBc5dRFML5RXZn4xemLXjgTmkiVRvi7dpUgB7eC4M2JpyPApIRZKJB6r2tRepfpSkEdIkxhds97
/XAvgiX9607fGNO8/cFcqupSKIm2lpclMGUDx000au875u/jNiUkWjve4On4Ad0iG1U45lbE75qL
sFSQh+bvWPEM5n6fE0gqS2nncuRyNLhK0J6aBO3EjP4bMcJ4e9hVyAUDT0R2BCWGv5vaokYjSfiM
p1I2AfaPtAb36VWUSUUqmHLPs8ZWDW5e+VT8Jied3IsVFHL7rwNtOAGdBGpcWqkbOapX8skN4m0j
LGeNvgxK0oWxtefNZ7WTtkdLR2e1Qh3JRY5YZVNJYu3kNRuvokqG/YvIAC9DXLojDfyMHXsXuRAY
T0TELkc6lKNopLYyjOUrDbCt7Amc4veEwBEraAqxBScW+DyCLvN7F3/HlmOhUQ3vJzjt3t8arqI6
XeGwyvIdoHxsWgMLNC6WlXz8rYX1MZQLPYWNo/6belsP3UEiedoVVIQq9+wiigM3DFhQosF6cx8k
jcSNOOKIopUg6l1gg5oEBsCB6EXr/z20mAliY1aqr7mgXf01qWJhWbMWeaM4WXuWoK78M9svUMN3
isSlrkD8T2FnoC/B+y6AvorLyT5nVh9H29T0Rmd2L4uCkqunaJaFsIQZNjZZ4ladYQ8nWalP/wd/
ZexEfP6saoz1g+SVj4/w76EAINwXZKrnTxh45DZHbq7TwJ3Qj2P6yi8IEedpQHnwTHr+2xxFTBGJ
cRSyr3LdquTBrP03WR9ROxUyERv6OLVbO6/WywSB6+nFHrxGU+pkaP9xnjKPnuvFWmgek+Tct143
MikVEZVuTc4+RK3gMDlk4ehhPGqfP0je2vkj3G5GKfkFQxX42yXC40uUYwem64RQWjjMku3PISeW
OWFTfsfXpcfC0iaVyyAouQzagWhSxWf8Fu90gKdCk3dJ098tdFyKQ83IS5LL231TEegibODsD75G
Ptn9RwMTvnyBdWzddwEQ0fRQZDBZ/DHy+eoLZx8sbx/VoNrfp4+Iqq4oJKAQJRz1s89v9ZwkCPZ6
7qonZZuKnhAYZNpoMG5Tmm75kJdfL0pDafv2wJJWRrEtxNzXmqoIdCJS76vLnI/qzO0VKClwIOdN
tKuNdGb+wtz4lg5n2gqhIHmSQOXr988W7HQ2Cu0vZQ3o25btYmkkmD1MkOwCPJGHs8Dr9R+NJKeO
O+GtJEMCAFAwlHJ//auf0+mpJrZpat12OfnTn4bOy/L5avvxxgv/JMJr7BgCsEXIvu7tAJ0N7513
QetY5aizp4IwFA1QkARAfgI63bXF3qtdX8ziGDuGL+3G9dBEczGfn20Fe2b9EHcueF4GcEz/ypgJ
P308lP0L7fYLs/3wb1I93drrTjI19dCjco59NmfDCvzu8FhoNeeDe0ODH2l0d7wi5+0s9uXJyOpd
5gFgMKFWcYFC3Rnb2910LzTTtMuzwNFgafVP5i7ICicN/TQYfrn9vBBM/PTNFsdJay6BvUNHEFnQ
KvlyclHnAg7cCvWV4vwy1hZD7sJ7/BTicqlpgghI9hSJ3P1fJiyqpEcXKVbnYmiXU7yZaaTh2bVl
9FT8YQv4fDZFHNSPPMUEFz6HNV9gQfy0bgNE0qjqN5mUuYcxmb7NNkRoZ+/GJoqYbkygT64D8VO7
/PaZuPllF04unM2lo77utuxFt8oGxwvn2vLGgBX7kkNYTW/7+WYj/zMbaZypzEF/il+nCdLhYufn
mBtkb6EUmOIIQgppmmE9hPzJPGDQCnew86hM0RYITrQWEAjQKpjDUGl9n5lqSyTVOjkrcCoiwnv7
GYl9lu1PTv5rbIphTWfhf0206mSfiqXX7GRXDc0/dkKfwRGJFNZexQVPKkJyg1lBCrj4PcYX7XyQ
q20mVHAlXUHTOuMowtf6vP82K9JsojZDhZElkKkd7EVqXpB15TxTtYD+9s3fKS9LiCXwYPUZUZyw
xswLFSkFM7CY/UQR8FdSzXSNh4c32/ZzKogXRyMh1GIoK70XLHC3CWaaWXhSud0Y0JxeSFZygy5y
reIH4CLJqdo7o7tHTe7zf5R51oZTY38oDN8BXK+oUEvAvkjEh1BriR8KZbQ2yBs9oeT/nbfrg7fy
abo2ZyGJjIDvbvzc6afDbKxtiLzrMRc3/pVgLO1svDi8c82ihJ4YeTaXsfFO5TdzsNbQLseIMN2n
IfCJkLzVKxJ+w2GMudaYdreq6BWG9BnwxBEbY+dYcREQimkKietuPED7L+d38EcEY1iFHzadkbfH
VfFNLZzM1oERP2cFPB7PiFnYutfh+5p52bqsLpHBxx4v+cHjZGUhHWVPVPrpmvAuCY6AX9BZxwrg
G2YTwuoXLrSq/Ueb2QIaw3jSXhe9tVpZ/nt+LoBZC1MSY1KOREOcVufTCUhPs0c+H+n3LU0Aya17
1TY2ch1Pch94R66AzOR8JN3BakSolvHKteOkWTRAu8CdXxGH32FYwEtl8Yp+N6T49834oQmgEu14
DB5c2WaN4mXGbapNcDRXBGilKG9xsrCGd8iFJv9+YZmXQXJinOATCbzukMshvqb9S9ntf+ufYOqL
pngq3l7ePsmUxeDLK5d/WK/O+iO2B8xWoBAxlnmUKdzscI6UGcTlhU8MgAIkj0XE4FUVIEQ0JtI5
AW1xrdS+hPXQeEiXrh1DDFtpeWz2UOjREt2yxnJT2Ec0j7OaYCBc7aIGun4YYfZbNnv9gXDv0FH7
lO2toOm8wTeW4kOVMonIFMG/M7Y4vBqfdoDdmTK7EDsPGEP9xd9lFVcrr3uMVDYb8oB3ajV4oUoY
wcptoFGq2AvS5EX0GGVcIlLemd6T7ZGG8Pl7Viovd6LlJR8Jrc2gsxw9Jz/1P4bmZBkjb5eG8YXu
4MyKR5WkwlQfBsEXudHkRHHeXxMXSYyqikPygbejtTHbqc5htNd5ReUvnnUyvc80zC5BJKUbNWRy
xOubU+tzOLQIzxpK72yjuJ2S+nUK1/eCpRaDi17WAcpGR3XNf7OimupY2uTF3W8kfMlqcZiUloFd
Q0ThtlmKPVKprKK/PzklVgGq8UiNSAF9U3ain5wdByqLOrfyTDzuRnX0L70SJfp0EoRbN7ZTma9x
DsnNrFtcJ80hArv/cE4W3LtM8ojAHDcDNtFi2gXhnQsbiPootOJUVtnRMZoTJKRtmT5NAhWkG8m4
QH9wzS7PpNy8MGpZAVVRwj00zru3Q14z8jqvJNcMxj27tFwTiJu9RtN+k644EEAbO2vOvYs9Sob7
HnM/KZwk/lIQzuuhEW29JaJ5d6PUM5G2/guUT22nk2wqeBuEABVU82TOGu6l5TY4Z5i7PX2QtQEW
7c2V6b+YtiCMND1lOlHIB94t53/vmT9qJAt3BSQ9jUvI76Ht+pnu9WQdtpb4GPY+k+QOze37Bnea
g3yJgjuvAw877e+7wRNgGqlAJjfhNLEr2gnkeJMnyzGhMh5nKkJABLMwKt4+hOJjWlpXs67GLeEL
0GO2g0RfFa44u6p72NgP+jM9hmyLfxIhwdyqXsZ8OOdd1HScNr3Z4RL1SWXOePn++sXskmBLYUiD
Yh5g8X3hVYmR70mRT55DzycoPu70eUF/7wuraZt9UxhPeFNHE3H5RD78yuRiutG3Nu/0FmPdbkFP
zatjIS8UszKzMvOhAHxNBPdWO2IqYwoIWtKZoSR9lELYqG/2uTVV8vHobjY2/wwcjXZvzzwI6nl1
fKT3rFqFeXsGCvkPG1q4Q3NQUetJRXaJFqYH/1DSIzbbiVliu3aiP8VGBRAEQ3Vk6zt2gbaacqF6
xFoQkP9i6cZUCB91f1/JYve4zOtSiUHNwXU90b9CfzeflSRbFpEWtgzzmRBywot35mnOGHPdNHm8
FH3IRdAP46UwdqqfyTxTPhuQyldGQD0LQwevnhsIGph+VKHWPam1VRXPcjU+1fcrzy4NN+MFUld5
YMcxpJkFQ7Gkf3kj3HhKM+bXAlLqZV5M5UgyDUkIS/R0Vs1az4AbJ21xpCG7Eb7afTBEt2twlG1O
x6OO14F9ojnuIV2oIvbyzUxue1ZdAKyT7xX3w7n84UHRLu6lHQ0VcZdFSUAgAA69jyGGeVET5Itw
oMANnKS75xKGwgP9W4VXuLbHXtc2DaNqGiF127ZRaJVP5Zv7UTDUCYXovvAHmjvodLpic7Q7xFDB
zmJxvo+ebldSWhcrC9bD+QYQcefq/B/yIWGsgqi3BT41U40kL5YMF1CHpXL3LghnjxamNhAEzU+x
qnGJmwGF00nw7jUHgZYdzW18xrpuQ/nkDGWHjHcvJuu9H2OzWrKfUCX6RLay7A4V/4KCFW1+ytxZ
28ZkNE0GkfI6ZoQV/nDjglMzEMRyuKaLKWZqEpUjUXE4rgECPTvIg00mZPLYv1UP3Zy75kCCmjdN
hN4Hgv/DVYnE+jAIz8jV4lv1VtoQJSjGHgYe8bm55ZKJC/nzlxHKtbyGLemzGtBnS148ScycS7US
xE+uR2eMQZ/I9rs3jCGEkEZJOirC5eMJuWHf4/FwWO9n0wGEfSEuuTlOn31qzMX5v5AA8ju+CIm9
4UedZqesasTZwyh+M0ySIUofGOgOYJ2XmtOvhr7pjIQ8pKoMbLjJ7Y3+GGkbNrVBP/J10Atvl9J0
By4f+lRg/DPCRjZKqPuKwrrUpCWfMAoZexRbyzQVh+tX+TjfpczsQ68N6jQUtamRLO3qzjZ9DLWc
/ceSBhnXMpW+k/BWRft2gYNftfmOYWUm5SMEPwsvC2T0i+qJ6giVL5D1ZnaUme/YtIZJfqgf+WQF
sBz1U/rpVf74jD/i/LpxVP+nNTrZL8f8x58dYziLWPxXQlCJ+d2WBdgndsMKkv6jg062kXgM45Ps
/kZZH/zUUHOIZQybua4CmurWpNynvUDUFsxCG6IFK59Z/g++YM+xBefcvf8efMrlwJBccY/zLIHJ
9bWZ5DHZBvsswqiyNw3wVcOtqWa8iY6HKLHQ4nhOQG/asw2p8nO3LoI7kzQa4PR4dNK8YQ8bz4XM
SBVMNZWm8T+MLrH3EQLAYVq5+wh6uICF4vB6s5M/iw67gx96rMdsaRcrcfBJErA9R6sBZ5zVcXG1
OTFDupV/TVLDyLySWRbsvvPjtone1DuFaubHUvxtzh/3MBXaaTLB8cpdzMwcTBJWfpauH6VUv4Jo
bL5MkU1UIK01CCFTVGxWWeHSZ4CDnpDmvhEsWw6FtBU03JFu8D8tp0qKMu1y3aRpHzbVWhFNPXyC
sEzmVTmn845UQNXywMDVkISFhIeUqabioCFaRLvLuhp0quLFwVA/TGxcLoXYEYIoc4a9AFbW6WEU
pSIopxGX+8LtwT+oGU/kNyGgn92XZ0b9rA4Xvb+Of297GB3ycO86ExNF6mpmaaHHxOlifY+t40JQ
nPi9MDkjGMOiEcKvTJ9Sr427cj6agAzVjMZzZwNYJ0qMs8Eh4CWDppP2JoXZtaLKpK/he25+qV57
rWruF1gLKTjd/cwtoHfwbWv4lc0ViKBEW/2U1a9PfBv9xt1+isBEyYxDxQfajuLC5esMl6RViIRP
ClzHxw5AaekgpYL3Fu7S5bDCctNdfS8ZXPpqc+Id9EVFYZZkyq7v8fz8Jc4Ubk1qf7HWTNmW8KBy
E5YDZKFTD6IAY04olGVU9o+8uvRkDz62OZEVoJGjMREt+gtrA5erbYRvdCAFTcEZQw4I6oXKleyz
bUORBImQDbq7CFdLDT9Rix5FU5dygUOqxiv6Txga26UExN/e+UfWjSSCqN4Psho5vbGgj9OPgHqY
wbLH8VQU7ZkqS1hEpx/oIlGpFay9Uypw8h6I+49I+hzJNX8KUZN+GVBbCy0rKFusXVT4c+6CJNdJ
9IUNZ7K5e9aRda9pazRSCkVN88M8xHl4XdThbKhMkRklZAndvPXHoh6qWsCtkzGFmcn0RhJy31Mv
A6rbDjx/hta5qbgXkedW8JJ655PLFcVvV5lHySGPDJOxFvR8ieYeriQmy6+g8CMP4YMMXTVqZPcE
lGQWSoiWw15hxar8dsK/exLnre5p6keBneFZU/m6boWqdAf8DQWQwERIkWjDko4F3tFJE9BxeTWg
V44fIq+SfduZ9b576eqobi/D5MH86k1n4UHtGa2IdTEhinGOGgPfIpxzGlxMmo05Wg8GEuv4zmOo
qR8+wgCT3m+P26tWzYE61CFvJ1a2dTvwy/pU+f2wjouaizL2DKjr/uwkDTGFKsv6Vw1HBQ7413cr
DvXYq9p+C12acIqWwL+bNGgJnyryRBd1XUXsE9u9ouxxpC+DvT4k5lNhcWAj7KpjbhoBfpRH6fki
j5WS4tGgeAFmMoxWK3DcLvLZhRYOEtsf4Qu8klXYZrVHsSdnK5rsckkSElMtujeMK+cT/2POcsGq
QGDECXVpowo6whWPxqxushCTcwOXRO//aH5N7J+gcZrhbyNBuQlbZ1FeNf/Hlxu+4CYgVjb+x7L3
8d51Ymql94MfXs7JKGK5srp0HqOUB4IDOQd/DnA08YsKZTI34lSNZ15ARpEqgTCVNWbup0WTdqnx
cICT3TgFWy11MtNnpz7/6crkFRyBeAk59UYYlCdv+OsDKMFJy39FZ15zFS84NhhIQp8d3dpRqAeQ
k9hDVAjWmmIwpcYQNoxyLFlNl4ntuOwMn70U8E+eHpz5VhIOIvgZCVjbowDQbw9CeFFr0yna6vdn
4O8En6NBgOymihvLPRcPA1hKVR90Tl6z/Z1F1zEwDYU4i6DFRgwF39cvippo7mX4pSF90SoLaoAy
aJHY0rozZT3EUflrjqXTaswzira5wwJNzGuqZT/6bAaLMAs9vZjKXscnNH4SbH3PoKIQ3QaCUeXa
0u56XA8379N0e6o07YfhtTO++Q3WmeMFOxj2C0hZQ+7Cv+D0q/7clskbJAoPvve1/eX7QtMZRMYB
X1zKEmmzftKIVAuGw/NUEzsU8yKCgntiuxxi4ak+z4L02kwSDMxTC64vrxS8duYVIozBQtGWBiH8
4LRviorvBUlhG948qpNug3GytgpxekJSxRmHGmArbJnTsgcxF9Z4srfLsp6QVcfmvzCQlTyoajJq
Iqvx5i9fxg9/5PTJNw2y+grhr03U1PCS+w/qShjNXprYVgIEJq2EcEBRMQJ66l2/dgwH+CqDD6m0
03CTOThMN7mRBsVgE4qYmMFUOm/U+7eZlp2ugu1tJN9UYe9oAOsdmKQtQJD/0iAfZkz6xn8OsAb0
zyoaIATV3uGN85GrpFWunYf8UOjVqNnEgeMqVgYiYtSjF4ld36RoXi/hwCcpsOLrrTzHHYt9wyBx
tSqsfSOa0Bp/f1lAd3oK2FraszN152b3uoOi1msdlfVmF4rMD1xVuvK7mGSpKytGHkJFgU6FTkFW
wVnl6OsfEtEEKfIhoOMr74R5EJxDKnzYMBF0AGVWWCnEg0i69KNk27QGEbaa1rNFolnaEX5EFYWT
4y634wizjNbKAKScXjl9KcqO4UZJUDfWFwpjngkUrQd3gN4bcF4QvepD0IodakXELcnCUD90wPyd
wUI3OlTr0dEctImYJiKj5obh3Pi2ZJHL+NwZorY5gSIB5wHw84IbeCTZxAHfI/197cd+fyFyMINM
qJWJHSUXeIi012M8+NGhU7zXzIyEobaWqo+0OKX5K3jp7elwpHxglYGAvIKaabBX3KotehpugmWU
7zQzXTPbHQOLPLOy7aDjbHHISIS5ZWmc0wqoEimmANAAAlhpc0B6Sqxm/6O9Q+/YZZArDh6nAeIU
bTuJ2x+4PIZjOb5+W9/hpWs0J4HKjkUiwCJqqqDWfN16oGtEcMS4xPIq5wqegt7vAYrs27VLKdBH
BdudRl8jz/LVyR4yKrs9FIbZMrs7fzHOiKbukLOUFVRs2oRNoBC88Q9/NZWOWk15INVkKXsHykMb
1Rj7p2GqEAKIEXHh9nQPBZt/53niu8qcY+j/QEkUfr65D0o33UUdwOqx889X5dwDPla4PMeChYor
dwxIEW/Ag3rFNJUhu6w5XpctWajHAu6zGD7h+GY6CWVZhQjMwTkLG3G5Vl4NxmSaiFGwW5fHkc/G
S6uJLPekcAKyGB9mPzkQiLMtIAp7onNDVUx3m4vieuX4nHMENuCynPAGknnaBcDDdfsa43qjAgCD
BrEJNZTlk6nbM2xlmJk41RtBDTv8/uQ6ke2ORLF1VzbecF37PyEksDP5p+fDaoygOMHE262y+jiy
9XGIk2nwLeHZYo7g4CVrh6J39bHh92EFcXC36C37QhEeTSzUIX/oTIJRFZr+2uHZ7IpBhA8zE4lI
N50R510743id1JIIv9dhwAGgXx1spwUuhP8RCyl2gvfZwqhaeNOzrfT1Nu/vhVe152Op/33rWazR
RqJraDVKjw3ITzO8uuqqN4O9TTQDhKcYyWu24FbWFl6DWQk88dGaj7BO/7L636eeL0EBnL4/CE+J
TnWhFu6N5HYPQQ2sS7qwWJk75xnwvqCFt7qkWxejt9T9nExUEitXn438uaukNcmZxPeQOdZnFInE
x1kIG8momGlGb3Du1JtCjSKRkKQZljGMSRVbVfxCK+XiaVumtfUxGb21aM5Wy87tuE0pd4NB1Ctr
6YwqSHnXV0viC96SBDwZZbiIbHUs5K0+MJyC7dkzYOC69GtPKsI3ltkJ9dWhXXI75TyrO2bXiJVE
g63s7ACGkfLfmkaHgw8LA7y2LPEnDDwl3kZHC27dOuwMgB+UzIgNVJR0PtMX8hqit/WLBunA3BVr
ijuJE6jIdNmh0tWX7kG5AOf5cidZfcaAyNXsh0wy/yiRFwfAMkhCl+5VXYeBFmC6+uS3lIpQwiTW
GflM3Xk+hmdbrqEkjchVsl5QT1LItL6qdwCTUi1RIp3y7lqJ3+b7ZyWHiYl+o1viGZ1mpiMhDRWx
O2sEbAQcQQiQLkWk0l4B5XWJkGT5w0Lov26khZ3vlqNaI5/oyystuM13mEqecWplkXAvEIEu6HvF
ng2EDkhpiuqQw2cwyFVjvRyQOyRQSn9HwCMnnB89Oi/T5ZzsD9qdWwKmKp70EtsZetjZmmaZ5zDx
I8QC7qYTzmMBK/3XFKMAxeGiGxOt4BUr9CnMOoOInp9nCcgtRJYIFFpP7RVIS21KWBVoQPL5KUoK
d0P4jlsh82qv+YKq13fibGhkFiJYLGZBYMXVwmjb3Ib6yTCPHzBWTJkUniH5FitpER+JDhvCCya9
kfIVNgm7HOoNxtI3UvF3aVI8taaEPKX6ydxFduavgpKGLjwCm4YWghV8tZwOIV8+aHY+eUbp0oYc
fCDdo5BZkVMAAF7KIGPSUKlaij62q9YUe13J8V9fY2xkD3N/qEkpevJDrcjZWN9PouzU1N5DX6zw
7WuLquE7NGrwLwBl//3PgvF7JM+YA8R50f/HqawvxGsPgZRH9zQsCbTgXVCCWBGSsk8XyMn+II7E
3ueDaKhifmLbrwUJwo7qmwF//74RWxyy07gSxBo2NNKuduADw0JUBH2tnBP54Z1i8ptG3rt2T3kG
tBBAEN8d1OWEOPaMIxf1E17oEqL9Np7nc5i/61/c66TKLl1dOwJrIRhs7nW2Q2qQCGaoNUpNWV95
RQF6r7vVdqznvCkMxxSIlHXTRWdM5kesZl8lfW8gZymCKuNWRekPtUYygxyoLmT1EFP4wQH0LPRv
kh9CpohGhHXTV1E0oN97lrAoLYaf+SnWV4gl7gQ0qryBoFsnogKcBZUwEmG3toii0eRcQMqEp5fK
PhWqokHfblapY035uzm+b0wDYyoDpD/paKOjJ5MXitrJp+rvvkYubSiqPliRiKGooiti8wqk5FfK
WcxmTqltBt4DFWlOgYnTpzzPtaMJTZM6g6bvfswgT9ry7PkHY4DySX9EuTdYLeJdQEebvo87BJqu
tyFV5jYeIboGIBsrZP2YR5IaSUBU8F+9yReeGtmPhSkbxQ4pt+ji5urN2+RO6AxGq0UdpNZcsdgQ
YBfZ/FT0FDHY+OnRpyErB6HjgXZbKi+TLsiLYG27EoOL0GdYN4E0GYHxLkn/Ph/OxzWLIYGPhDeH
BPXUzNn2q9J9bXi8yhp4QFms0iSD/l+TBnLgoNHVgH8O0UOk5Qyc4HU2ZeQXFipDyr94BUlAWstb
poBf+sbmj06IO8oY08CEejlmkV3RBobUIaMqJa4nxSviGXa0p9beBM82gPASSYq08my0HR2u16tR
4n6oszaiQxa3SMCKk0MPBjVgdT1klYLbQpC17uGjO3JNY9Z3kkA5HgqUvzJTUUQrhBsMMawwcaox
+uz7U3z9jLOXv+eDriAO5UpqCYxmsWTOxh9Cix0+hh8BWrjR3lodfTwBzdTMA5J9aBtOpG8XX/mc
rtWLOFzRVubNz8YD1BGy6VBbgowLy/qE00T6p2qVsAX6OD7KKwVIyIQVX9GrTah6CXoPLZ1URHn5
/nGwLjzWA57VEmhCoYRwHU24WwAVxmPePm0GJwMXjCgFgiKnW1eqXZxSTxcWK/oQv/sg5DKTafMl
xUoiQMcPt0QGOCiWGyVdL4wzVB5QKE0hFuWW0vWgbytoxlYs6Gv2dFGj6Qodo7yvdwu2MYwG8eoS
7vqzHtld2y7nnb1a3b2y6FEdpWQjxRvmt2gnCzhYiQaKtdy0qeYhJ2WpSOyHyofqGzgZwWJJMKTY
pRZ3voh+D7fQc2N8CeTl+xGmNxl7IclMx1BiXSXtWyIGZ8PHHb20IiGMynCHz8WuxSp7w5h0VNO+
o8xY7Q5NwENsJ9y8kJrnVm1kzdy1A/MUVXMStWVVne0xghlB0ZPyX98cSrnL3pwsKzsQWl/22RNU
rAPiH7Ie+aKZexB0E+TIIBDTZaM9A9ljfQ7zdV8+R+osxYtg5f+/StMl9Py7p2ta259TQmzA4N0o
nC6GBalWqa7zuztHFRhsfXnhkn9VeZ4zJjEaZJxX7WGmfoPcYBlAtqHOd/8CCbs0zKAcI84Hlh6w
2v4s2fAcEUBol2mCh67mHyfz7Q9EhX94LYGOeqZIaN2+Cng1bYKAjpnS4Q5OaqkuvAf1lOn5PoQy
vv85pXXo/UXqnt5aO1mYsuV6W9UArUpbZ1GEpa37F7EflcC4qQe/8nHUzJ6Q6Ep5HsPmaf9xbb1r
CFUNRlOyrhEmwnBKs6npWOlVvjLZySVzZ6hxPk3J1h3a8WuZxT8wIX5ROyoMcyn+JvInmlZj+QBm
5sgwYtXBciGQOUTro+Hoji2qvqY87JA6FN1BF2bHPBkykeZvQLgKrbWVRg3I/OJejAU0SFlfIXVE
6lTxIUdBemgSvVwpNAnO7Ljzl1jwlsx61GxpwL8aPRPkyywxaMhQIicI2b0r1tDn+H+j3y+NQR2O
KInnoyqYZNK65GIBVRDSvb0LwwkhPCtLLciVZ1qW8HMWVZpy0/8Aoo3SWJSwqh8gB4eo1P2gzCz1
2VAir1b1pek/8LW/77THKa/TbmM2ui15wD9Xi6vtEJJvK1N8w1xItrb6tBie7DJyogesTjdUasUF
yanUgpbUBq1Wzc191DN/CoGHWkkl0UXiU+vG//gSKq5wsohHjK42wCOtDmLY37HNdbLC5Jygzj0Q
7LCLcvu6+oziuzBAN+CrbztbRrR56oDVQMahoqqsB+849uYsWtCT57jMABsLVM2N7JPBqt57xq+O
RjBMJ7gKGndWd464oWk28qJyTOf47XTEI0Z7h/Gy+aWUHtmS2onQj/l1GV4jmQXH5IXMMQkH+t5o
FYZ9jB2VUKUtyicbLEveuPZepV7JqBkt9fvWvQ7xOTP2nX9MpXcTqbbp5QfOULo94MqCggmw1KOk
srEzazm06PtxD32whnECR47goYTgUp+ZWz+/3j/Lv60rh5/yX+zMv4ZNhD3jtLaOFuZVywsrYta6
QPlgjVlALndOA+WYTcWB3xdxzYb8L2173HAl7e0Dk1wRK5ofTj+7ysCiFmD0GuIBnzKQpELWjSxs
pnAhOvxVU1s3/7GX3q+nhHUznjRdwhP8wzXi3/lK8L3++ndiGlBNsLD+V113J0Xnp48Y8ptiZmq1
8XtIp3ZnucKmGvqpDBA9fNYY+pUyL37q9WzacYPX8RKxlO0fhekTl/nxEAHdpTxSzybmb5FDpVJL
XLG+kWh6fzQV3z/REOzSQ5c0arEbxf/Q9IJ5L747VSGIbGln3GXJiCzOyx3yMa+pUE5re8nm9Q4U
5z77vf3u3YdUwqZIYkquujCiuGzmeRmZENwcSPm4HGmypJmKy6agRbFoqbJPQjNR9rTQaEWOkghl
aJjjl/Sw1jCPplacyECfV2bbBlqjkL3BtJBQwgEXxYo3HCtwb57x6dmAeKWPmaF20PcAZppD2g+S
S0OsBq6XiaAbP3fLYQihIVllxMiBHxj1KVmWIHgxRAjYZngsIOFyUSY2Wpwxsgdxt4OUwQjTTZJM
7n2qsUk97+Cod/B7ZS1PtHToA97ZS3NRLa4s8KDRleAIxzkjL4mA+nFkPigCWq9HgO6xx9YlTWoD
hgJidjqr2rALhhqQ6UOOf0PGIvUHioKfzwuf8pnf5x1mqv6FRQG4mcwXPbra7BgN2awg3Dl2bc4S
RTxkwRg6cg1FsxNHDpLJmQXSQ0/gPmGlbnC+oWZe+mWm1tIsXy2dl1B6j7Qz/1EypfoNp5wMwhFS
OSEGjiyIFsApJt9BT2E3EDu7jTTI0fANjlKGv3L9A3T8drwlcYfH1RO+ulxgU8fAZ5hHI63ACilC
o4WgAyxaZdX2wXMz5iuuhAo3grybrqg/HHgCniq1hfx5TK5lgWNiJRpyR5pQEDNOFDZp52Emg/LP
9jz3vnkjc7UbJMpTyBYDaddy3D5g11HSNjLMZ3RzR5yoSD9AaF8Hk9IETUNg75b6cOUdWNr62kow
KM88Otb7H3bv+2YcbPryCTFhPQA85AWPGiJrsTDNwg9S1qqUsRoOfIui2ypk+t1uZqCsNn6oR/rt
z9j7ujcPEBdXcBJnMfNe08hGBr8XolN7QZqpOnR0oDFIJzTWaHL9vb42N8AAiMSQMaU3TkqTyMKg
SyEbZ3Lly8TCZJ362J0S5lC6rg9pIN9/GiwRsdww22lxfOwoX1ulthiit0xe3V9UA4WSHFkz7PNY
4HiiCieX5vKfOQIniFA7737iTXO/lXfJhcHGbExukrCPFgAMmc6/mp3+r05AR4XufEHIso5NYIJH
TmnIUznMEgPipGoXMrwlKNHvd3U3XXoIC3shlOrkaWP+vGI7/oBTaQ9oGVmGTC5+YrnQ9JVAbVrE
hcMwhTNy0xR/qcM2VqCWDxSd9f9CeIP5usaFDxKFQVilTK08scsJDHpRum0m2RS7OHzu7uKaFcOa
ehgEKGBuzszssXopLb/i6wrvD+Q7OoECOfpVDoRCwUFtl4M9AXfKB/rKDscsgFqMEXKDCCn20yj+
ybcyI7COE59ScY/H4oHirccDLoIPh2ll6rDkyIO40K9rWmXZH4f7bM/ALjzA03Ydx/vSTLZhsj6u
cn535lE6mIqzZMmxlplvW2+kckAiSL7RgNYhnCkQy/kjE0hLfPm6JIJMlSeUjGLw7hGU+RrHY9Wi
ltjFvY0vYg18D1YqO+nKgh/FVaDmKHr1GaUA3bhclWXGgVUpA6yPcVUwBOzlREy5nYhYE4dXYRd5
ztYFwmBe6vs+/Jy09IKbzcYjX/ueTiAFvNlBm3rr+OyLVrxVpocgaCN1xEtAoyfKZDX+bSl3s2QM
V9e7QYB8NVUj3iiYvH3rX9P+UoVUpiAyBSZabwSOK78i/ssCtEpI3GvrB0lfNX/eUhxbw51Z2bMd
rFP5V/y6D++0SrrDDa7vqecCN1Rj89CM/GeK5iu5w17Y6SzIEybHBm3TsSsI/CFYjBusHv7RsIIf
toB2cLtShKLinY7eG3wsnq1W+cSe/tsGE9oPf+b7db5j0Vo5dPoX7zXghIRX+YRyqKkftvYW5S2g
1hIMSaIdqBc4RSU76MTr9NT85IKiyk+lHcBpJUH6xeP5keAEIhZJZOlUvKjEfDnbQjDXvzwRoUZE
/lEfzawSIPGYVStkWhLhB69W7y0eTWoTid/CAQDW+aiI/FEzpsimV+CmOr0jZEDCnbJMDe4uT5TT
tkJBkOPxzvm3tdOm+e/NIAd2aGkMzptxZFW0e6Cg/RrEvVhOMyqUm2vDzdq6IBJbWiYPwhmeochf
IthTq3WHgkhtcr/VhP7YR++/aXrho84kYl1t8RWNXXKh/R8FEBkuAcML6RCL+jq1iPLPuGs42h6a
12kToLJtXW3OBpTlWnDfX/9go87fjFCWCUa3PphCLS4M69qKrnAM/QKF/1qFtHPgcymnuerZiGs8
ZqeBpG3pRQKIsnHjujOgha5BthazDPR1gHFT0X7xYu5WGQS0J0xguGSlQJhvauPdMh/235B+SI37
0VbfIOJ0z2MCQmYOntBV2aGGp9iusjF0ZVRJMR5UAAlEqzYN8XUBcFOaTqpk7KH5olzUE41feMtn
y7UWa/jZBrs8bKaqp6Xb4i45lmuIaeTc3DH9/onZOniVOT0twP+16F7oUAy/8Gj13l5eaFIRw3Fg
MIdX9isn9GGXAmy5KO3UC3clFoA2qYVI8vohUuoPAiGu4+uzRax1PPXOw7S6dC7k3jc8b/rfGZDp
gtK7Y6SycZMo7XEgqTbm50YGnQm9e94kTixB5m6cU/sec+dLJGi9o4ciyU2YlVEUH+lcNnCKopiY
xsRwhGAUq82XdwSPHm02liH5srzCGW8qLRhMyr7Bq4h3QXkTEU9ZlrGid5oFY3XFwDEfFb+nFX0L
cZO0HzSdTjw3cj2ixyV9khcFtctyVL8iUDz1lpBp9EEh2S31Gua0vRXWtMdXJMBb+v+3iiEV0M2p
Rl/EpLOcrlppeIpp0TBY/WEfUTMghM1pcGWOIRmFAfrgCDBAJ1KPZPrmQ4DQIPQxqq4kTgGGOGfH
Zlf9iAMF1W6uCipk7Z/escyaIpNgLp4GwBFKoBOySBt+kt1GTSD81g+MfWiHxxi0eeFM3IQXlXqg
SgJAc4vPs/IhGTryY6b7Opi0RYWVX7LvmXrRKZbc/mvnPezg1Veko4cR31ucI6BTRQzN9k+vMCys
e7pZyK13GqYMm4iqeEOcxM4lFXvUU4bL8Lqx5XKPz5pSmV/8fo+PzwuoZYfvsXoY+kZuTuJafobz
5o0UTUrD5l6gKx2SiB3k+HmGWkEdsWdT0uN9Q83golxQajk0PtVV8yc4UyWih6YYPZMv62iomVwR
bTSIZkLUVLenDZO6uwxM7UHB9I/VEcTkCeEJosH092fmx1+BKjwMJScxC6oZLgBoXiTGEpBYO5Qm
Kd1hUdVnDJ+jF4HkY+SKpZ7sdusUgxGk7AJ5HrqU+W9A/KuKnR+rAD8i6qfDziygkZsLr15/v/zz
oZefAqk5MRAWyziilu3CJ3gG0kY8aeHeA9JxNfzKkuUWo/lLhOqbLZP1jP4eT95K0UeJOwT46sP5
5axWk9ecadVRXx/Du6B19poEZoYvEKWYlny2i+Ra7DQTglKObCgbAkpSc8F8wt/Vv2rDLYR6vKoP
4chM0D93O3Bu2yuep/9ca1ZZSFFJEz636w74AoHXagYLpq1SvVAQJ14zp8pUN4OkUwQl4dLc+lWb
DAASQFwMM1lzZQL52hyZeuJBO18WwBsW28z8ufwz1dPx5n3iTc67YujCwNmcHB1rGHO3Df3EWkZL
1MDtcuHA9epzuYHQEvs+OPhdhtzR6Xh4aT2hv9qmtlG0XoczRvxhtBVAZzz+x6q+vX8Wr36guk7X
wk1s3bR0YGrLtcMx3KyCGMITfVmCxo+krzrlehC255tMrjFBuwLjBhkLmLWVqNU1b7kaVi1qKoiF
v0F0ntQF98cxxnR7Z2tBQU1yfaQqzuLavlpVTkePcLGlgiAB0bUq5c4sJp54JWinMokQtrqPRdDw
t/vA/ZtP1iw2YyTx7FFyMSmMYb4KYPlawXh8+HAwaxuTjVNQ6VU/e19OdDpqxOYrBkCU7xoe8eiR
kQsd5ZlVr+AwjAlRYoBiX2p74x5fB3S1DE46PO3NHKYAoSqyr0G7DUld6CC7Qxg66Du1Z7Fen8O6
VewTDxiLTvEe2rAOYFpKPmBPzoK0bPPBhf+wNGBOGLx45o89luCa707EvBMy+kUjM4TbDDMvcPTe
h6UNuEVwup7vqaowtfWDRl/UofgRDPoaj22LFLr33V1aUCznuFPsXoK/YgdP4W98PpMIABksU5kE
e3fzliFX80rVDHHwwcxveIR8MWKm0nz14ofAjIxc/rvhrfAoiktsMNDhdqHALmeJnbcgKPod2t4N
9bnsMKB65VLGn9UHfoZTMX9OdS64Io18xuFgFufFXYzCdK82bnpYXCXVNKwHR8CGrtgnhwTd751b
H6UMtj1ZP/noazdC59vvgvT3bRBwxce3dyt9rxozSLiy1c3+BSfoYDqVlK4AyaIPbNiznESUGCB0
91zQqlu/8euTouG8C19rCTftO4i5r8Dw54XwvmjHWjm0AyU9fbaucuBc3Nz6fKasMjFRqaDrfPk2
o9e7l7m2KWB4s4R1xUuJrIAI2VFz/u6WNRDBS9e93/LdKWy17VepP5j+5LWDFJEFpKl5BugqQ7NZ
0bD4J/Ds/X71imRAKuv30aWjyA2Jebk+897QiRa/W0btaZcGbe5zxV8yvYMlcWTWNhmBIjHgYBOx
5tq9or2GYjVoeVU033T9NLTDFe01jb1eiCidLXkZOXsTmOSp38cFjsbtd79sWSOEvQBuWehEVBOF
UKG/bUlSqK9j7zTwKJ/FJTZQcf7RyTgs7gBqkaeiqkNKsV8EpCimAKf2QRawvxHBdRqqNT3fyLZ8
ckzE5btHqcLDtq6OtxetgKXOx78HZUQC91cQAWpncra6gIuIdSLxvEMwVP6iUTcOQPNy6GpBwTax
0UOF5+4Fl6VnToyzz0XeclUU4QYqKVVz5ZVdeS+SnCcGctglgXttQ/DMR05gpVgj5dmSXejbNkr/
8msQGQrqyozIk2ghTI314+8cc9HNdeL22km1YGqw6jg3rnMKEB7Qq6qs9rT8LV/X0x/g2nxiGzRu
reeslaW/5m4VNWPaYgnk/QAS9Fz1EeeD27FQXEM+/r7cWmOOjSXDAB1EDTTMUTETf4RA6c6MrgnQ
v6hFMIsLp+D0Kj3C4rESKPe9POjesXQhvWKqiDAz+c3VzZOiVrghsL5oXBATuHPLfvB0VKirErEl
R1eQP9b9SOl699ree5zMp8TAIp3uj5gmEkiKhnnO2JWybb5UcUGFUNkmUSErKH4oS4tXkZuEmtcf
TaCQmjY9vkHBC+C9LUN7Ms3bdlzKhhM93uLiup98pIvD3EfStkKAzq+2QXW5pmG9A0uQoy1t5Bjj
QH62RsSr+UHXMcJ/KIMvlLnJE1QIFOszy28pvcHiAEH7gLmKt9J5oDxO6kFU+B7zpDN+VBSVfRGx
8a+nXSyCczgsfFRut8tFeVHc4PvOD6DlpBpWIusxN4n6M34GHOwJAYZWmsCi0D/d4vHDVmFjraRv
LSNT0wZiNprbNJes0IMHyluQXpHsAv9ADL0Veae+awApnBBnYCz0rX3uaz5ys77MpyYNyrRrY+op
L8Nn0aVdhoR0ZmDkkHkNcmF4GgwYlT3Hegn7FJiijnEOhmsy0n53g0QMDDJvUrDKKfKmTVJCvXhf
E72lhhqonisPWDdjTQ+lv05Xtcz5FBpm+RE1iCPNL7JisKvrIJ3m0jkFJbl9j9qOP8UJBQXI5SuZ
amdt1kMn05MFS+rK927ha7+eewkdYlDR1Dj6duXKKEXVeL76XWKdr6n0LC8H+JN9h7zZeBXuYyY9
dAxzQju+rMdD94lEWdIPqtNvqFZ8C+h5n8ZjDK5HNqeWO+dIEUL4TkLeLzf3pbsNdzU+6xb/LPO2
3+qZARc8rgu3QdCY6EWUZB13y+YMHVEViOUbgxpjlxZu8cPlCG16kR+tgIU5u76Fi/Vmr9E3s8Xs
A/Yh3wdsx5YgOqcbQHAQa1k/YPYfKNTKdrrkIrWrKq+TvqeYEgQ++vWotKrLqbtL8vK6zwQTMhNi
GBOQVwKS331UbRWGJvmTwXwYUthpmiBntybzSZ/MIkzhiBn1qohGvVgoI6yIDYAaPmTsICyhbeVY
M8GqM/4kdYbO+wXHIF5k2kCaMC1U66XGqpemZWzJGiTyZ3xH60ih20EIh1DSVf7XRrcL0bb7b6z1
8sq/g92BHIvGZC6jwdJXP1S93SioNVInOsKY/7ISSk00iKNJmA/waUFuqHLtDNZSjVAS0ILdYIUc
LM5TmKfJeqAdvXDGvQ2fbzC7lgpIJbvWB5R0BLgc6FzOUe0tWZ/2uDkSz2Rdx3ZbXO/7ri2e4QJt
2+OKKLyRDudnDyIsbxRkJxVfRjL+3Zmsbzlgqc0cSj3oUmaMvraB9rfsPCZucYXuI9aCjD4E2MQc
XPt2LMg8+yN07Jln+fg0A6mPvL/+3tt9TQLvyDf0kKu9MueyN5oKtNoMcAZKrcpndKexTLkc2d2b
ZnGsd53ewq//bBUI1Y9fAVtWfc2KXZ4y10Nj/6SwFE7+peOb5/q+dyXwr4RW1jVpqEfcGOeFJx9T
oLRHRDAtKMwpIcRg12tDUGcCIT7I7P17PyHbuuVbuFarCGKxlFAYWkJHYwG8h8UeVoUnxugKdyrR
b/t0btU4K4KiLJPYbw7H8mVEumr5cRwGxawkV47SNcDMv6Q7VCDa+Y1sY8pGjp097UONF+nZIHTj
br+PuEJMAOnqwpOJqT+tO6HP+Z3m2v2e/YavsjUNDIiOeFNBY2fY/f3wp7cKcSmBYzGrX0x2A2FY
gnc8tIGLF9503UmPcuHIPBocYr6eJR4Dy2o6aUVCb+qteHDFYVjnj/TusjH/XDrqEiWk+m+FXrCj
zSJWDhNEF6h8Jwh1wbrfzNsFreMI3pB0NhZsVjQNPwLhw1O0r+HMs3aZ87HFWBbmBErt6USZCfdj
/lLm+oJJl/JM3PmhkZmyhJADO4IpBZTQMrMolZYynUDRPk33iVR6aWUlRy8qHCD9zem4rmN4Qu9d
Iiv10bg3g1omgu8woLorwN/LnxIZkw41dOveg3NetsTtY0zVy0E06TqALpGC+5wz6IYubnwkVFYs
pJ9UBoN+GpyRp3ocBRUHGNr1Po3lLjwebL7HYI+U6ANEoJRpWF2j3udYc7bX1v+++7IhqZPmNGvr
AWLTIDUvJlY/G6QQ5hzQ/SwAE6KihXSiECwqgCUiDUxKYgG3Y3Pr2lrycUAVTBd1zM052xedS1yu
JuppDN79QwPdKgXyJde4wtsee8F6V6OXq3RhoAO+P64j3DEniACMVyk/ndewN1DqqWYmX1lbTkT+
3E3xpkiEYuoykm28NX1IlixzABjCnnoG0Qdrek+qyM8nqGRVwR62KJZpkYjIxO0K75MKkVaMkVmB
m88TNKtNKAbY2upItQ7SU0uuLc5F/ocME4fbx6LF02MABCve5q8IMJuMjnqdeA4AdIAdBbNrQfoN
8On1KjzNlRQjgHMPUTyZhSmxnZU9+zYPCmZNnqmlIf9z2h+h8vzL8zi9LOmlec7RD6A1hrAoZZFi
DvFNxgQ4y7O+OxFjxei4MlRSTcylav2ucmkYKTC0+eiP5NL1nGOUYOpIN5i9WYMr7QCSzpZafivG
gKUJ84h8kXAEcC4P3Ufpx3zztEeNqXvmLq5uEt+PvYTyw/PENFxmgYJ49FBOK3DxeLIp88m+5Bli
WSS8LulpIUVxr3zkljAldDBJ+TLY+VU7PYJeY+eKqrxIDCJdQPq2eflu8T9vb4TmlLTbii6MxnCF
YODkNiadfpSFKt7BZ7+nwdvdwFNOKEbFCNdhjq3dhwbKiEBuDJnGgFlIbcIe1XBXzX4x0dVl9rWe
GfpVPgcWp8NeSA9RA7NL3orUnGV6biPObvm9pYIE+3TQTCV0twnxy9i1NFPf3X2qXPAa7fF6nM3a
YVUA8RkpZjcCJqeq9bAvZCEBNHfY5Mh1wRT6aaJ6lmLI7ixovVBHIuiUQUbPFDDlgsolCGWln9HG
Nh0c4i+XqATmqQaXiRlFVeaVsyujOIO1YXWxegdDrAEDdKuA8yzTixL45kMj8dGaVExUk5m0o7Rq
3N6HrnYD3pNktAvClRZMJKgBOimQJX09K+5snFKGGWlMf8P+n69fE52AO3+f5yVqUzzdRiosyScY
guguc7mHJcEUnp+wDd2rtzAxQ8WodSY0KJaDgWii9bu6IPCLLxPmlZEAq5v24uumMcCliQK42JjG
FFGYtCYenT1FTG5OQ1EW3bkjJ+3GzM2WU4YlibpZcU5KzfEJth4KBVIndQxXqQ4MNFxZqhbKRMrO
xweqqYPp7NAFedovhCgZoZNJq82JFRmHAeDsBJ84T4Vum6ezl/nDdd2eslYCoaRmIJOiMBdNgE3q
ixXUUJwOBmgriV1Z+znSPbDHBEmQE18CgDyqFWRTEXqSIi4zzRI0txYlqKj02zBo71NPKhYA6HuH
TJzrO1frS0jmYrNuv4wyC7ljiLy3616NusvZJmLxYwd1hQslSuTcevKcxpVs+N+YqPTtYyk0Pikf
Y+se1Bt7+wLD72fTh/Awpx+45nnezG1YT+KTyZR2PvrHBqfD5HZio0QARnS0gxTA6UH8NJ5ziJYN
pRI9yRcIWbeBGK8msC1xxZC2G1QHVakAjSN/1ecZeESY8p8MYnuFwCVNqP8mEgkHMVMsA8hZuhX4
OsL1IpUAs2yxmdVX/UFC3yiCRnNyga7RRVgb1oRTx6zHN/90Qavc1yzzyAHcQr+MlOMP9KTFKZXY
SNuQK3mw23BOPaXxqiZAyxwOe1S0/B/rXfjEJXwmx+cZqjx/HGKr1lqk4OOIFKXi+oaHi0mfDjiM
f8BNOcTX5bIusK+APr3iX7+2cc1tsAqC44aFWNwz/Bvt+2W5oL34g7IfroOw7ebU7G+5DA+BHEBc
MRd1b0BOLRbV63gDM2DOykyynAdIreKzRPJEOQ3tNOdVpFwZCISqejqdKxcMjw4f8uhdkh90vj/n
wijxArw93NyeLHD5cXeuosbqzWN4ypC/MEtn1ox+s6SeQMOuO9pyOWCX0DZzl9k87zMx7RPhat/x
hkpvczF3Dvx/FQVJO08Xfp0XGvSM2WlGM37BQxVyNJRnoSzc6vIMaBXORbWjSCetxpjBzCtN7a6J
iAtlLINkSjJ0s+JN2AjIdXyD04+eyRup+VblPekWdzxnEwIPqn19Yhm+QeXSlgeUTAVsEBTC9Of8
sg4PbooAZNfq0tPnDwo4OdzjOGpU6tf1hc0kvQV+No82uA6wqCVnUvR8fTsZn8HOv1NbZEkMguOd
fLzxot2a+skKX4abRdzW0SOrUxhUHIV3oGSdI6Z1jShdJyMbtHcE1euM82FSfWLsSzrxRKU/ayEC
sK2feVMP5WhNkGqwaNn/OR0Z0MehQ3A+VeDg1k0oqxuUuvsOz1Xn1d8BXwqdiIgHFcnKY+/HolP8
+nS5mSN38k+9Xr+5klRORAy7eAR9l0kcKnerZMwsY3g2HzjivdcRFnm7n94gF90hFLGDCxkUd82m
/ZlUQ+XbEgY16wiTKbuX9wADnnJzNNcm2cKy0G8/tqJzGfEq0ajN9tt0kwxh0XZ6GJna75CuCupT
YhyKZCWeZNxJhIxbPcz4h5VKOm/TvWKuOnS+gBaYeKd2kgKfopOjNXodFtX2wOda8edXc8tJYO0E
70F8mll3QO9BDror0V43HAFHhZPc/n5tDKKguNwZLhZu3xnFBwYetGLJcumTObO1/1RefO6l5Oa0
wmd08XrqZLM9tkbPjZwSZLoUVbqEIKbOpJrAt5WJH87pSKymTKCNw98D3pCTeVXsNmpUSOqmYanX
yukfGVBcsXSzCJwycLjz5fUTFAfCE2xKBfF9yUMI0Fo4HuS0mP6z29OH9K36j9fNf4o2Pun0PDk4
YQrap6WbEkCv5zNXSrmX1klqDfZh+QPRZODqg6D6S5RGFMq+pr1WfxGG/rlqmOMah98RsR6DdB7g
GS25W/wgL/nM/72vbv5Jbf+tBIMBZM2jqUApw/ae5y9LesMBdXCYbL8J9HPi4rFiIj780DM9BGHL
WrXVcZO3RHlvdTZj0HYF4zcvf1FE7Crf8BbwRlXvGK8LFv2CbDys39lLq3xTRD0snc3Xo0HEeur0
y3o8MJVf6Z3wWWxzTlsgw5Gmowe+rJVEQQqEQwzP1ee2/jZbukfjd7IxQ4ZshRIQG2Po2lUQOWD2
TeC5MRHUYqtiFbKgQx15Nntk5XYk2XtWoLo0EgmIcTUBbgJylIbyZIGLO/biJG9DNVwb4oBVRba8
1MKoiZen7Q6y6uKxyJyFrrePvl04TmtQPB1HsKShNtN7kOkRyqCwQ1hhylyz7pzvi3l34akh5Vz1
XS8NNoR9RNIYny90HClWP61Rx9Ubx3vpebDCR9wMiuMX/gHrK1lZfyystSLbchQnDlEErKQAsx/h
VMvOA3hi1EmCLi+07ZgVmrKj/ankVCrFP5BwzuL0D8RG3QRhympl8QRnf9/cfphM5aj1CVuBkkgV
MvsJBWQNcwImKlmtz0AG2O85WmY7sQHShhQox2wD0ngP3lPhBoLsouMFgZ3az5yGLw8ERLVlWKQ1
3tIs7QZTjnkkf8KPrUNoQN0H9m+sBsdYPofgvvHBoaLpBLA+yCAm4Icuse+Vnu9UYQOLeL0pzfFc
6ZeO5N6lik3RTH5QHtSamJVzCxNRQuXA0a292easHAwqDRSeSRSIsTFbzGXob35rOcR4P97RsmaH
blKeRD3ZwsgQHmYhSNzHpA9N4LJwAyldGqZaMyyfVxTWmZCM9j5pdE2w7bUuqlI3Lg68oiDQcMlv
NZmq5QoS+J9IzzE2pcQxzmi37kx9LpBqWwixsYQMa/c1xw3goQ2gPFOsRG/MSRe5MirO4rvUgT1F
zIuen1tXkW5vxZ6K8cXJ5AhWMmxSi/Q3dUeMxSnQli6CK8dSwA4vUFkRbHZZeLsToYdokz9oALnk
Ffp2PbOwRnOEzL/GFrNJhImsuC9uJzfr0FE7RQKHVBlvg3uokPifg5Lq0vF/rDpleT4Z8KMOd67J
yYC+aDlCIPJ+NdJRdziX3nBWJJgzPgKncbTKX9udp/LcUkgy3tvcoxXHj9xFaRRpA7XNhWEIE/d3
NO22tRES8HX8i2qG4ZtksoubOc5PWF5N6akxVwuye8r7rcMorf1X37jZ9iRzwe5YJD4PbQtPYx8D
nfrxorsuYGDkosfo1BVar4K9a5Ho2yySMrarVhnWiQFP99XL9ko4iBnalbJoqyANXa3uMLR4UAc4
YbA4wA5ZTTAOQ5Pkl/yc4hz94xnfQLaTrXNp/JPc+spfqbN3I7l0OYyMFkHJl3WQjVNRYKO0ZiHF
rdH9GH6gAIq/FPi7zw9WbcM2ZJv4R5MGw0O1pemnetoQqjWzH+83udVFaIFaA/ed2mjfnzksl98Y
uuLg7EZQNUkcbi4vz/wR3iz17QQLkBnXlWhq7ZpU87VR3fnI3TWTurjy1VjZMLfDew5MUR+VyCa1
00u8n+bnXjJP21f03H3G5fijSoKgUZ94a3Yeyt5Mat7OKBuDTqGEI8KPrvjdpOK13SmDBidG88+B
TwnHvoa5yGPJ3MhAQ+IMlN0QyxWI59TJ3Dv+NfF2MeAeqy6D8JTWWDdRcZVgFsjGjnQQuYAIiHj9
TWSwWBlhQ8eVIpe5BLXPi5YO1bYarcRT69NCR8TNc4mx9BqHF71I6v7BLDapn3aqasCKm8gWa7e6
O34PbOSajbrYn9aajHwcQWR4OVk7ArTzhWaR9GzFy/wc6hBP8HRxBLyqaUPaxpKawB2w6sZ17/lr
LUe15g1KbM/pIG9OoeHftWoC7+lLNTZdMaE8aEfaFHMbt+Twdf+nTU9LXMSUqHhaTBTbWGhw2ZFM
Uo6S8g97anYsGiCIPWPZHHB+wW9Hy/JvWiEcMhxSCog28gNBoc/8JXnHkBH4RRZ2lEhTrF9NZGoe
As0aq4EPB+5HPOQup2jqloolagLwe6jnx0cwLWcOEpWGHcMFGefqJQvKviwiuqlZ9+wRhzDwTU4a
FkX8oePj6QqbL0y4JQv+dm43lNqoLi5Dd7PccnotYGprlT7OyZOLxZnUNu596ijOe2ijK0IQRDln
Kra+Y5iZFeJct8CSMc6MdWAo0zb+Fjn7391ueM/jvFeKgvcpWE8TLH6jNMKp2nAU5PdtbEwPoOsI
3LxfJiMLCzo8+FuORG4l9elFKg5hlN5A2GNZ0GijE2jCedEsbGXgcxX9+8LPfVlAlVcww55U1ekQ
yahtg9naKcd+R6qhJTFUvQeS9XuIZgP08xIt1WgfK3LTU8ev55OHdW1JQs7m7M5evVvTF49G8Ss2
P0B/7V2/9wakj8A+73/VvADkJuqc+2UzzEZzR8eHW44Y/2Rpu1r19o4Jt0etfW1iR5DfaXRq3r5v
nFoy/MHRKbMV9YvzP9GJbaxWlnZr/WZXeLJXPRkUeXKHhtZUXKpOVvODGh4/DMqJxu9MWekWqoSW
y5SDVwPt/8Px7HGY8Gdd5rTp6XUaN1bpi1NEXQ2/oY6qSZ5SofIFDqEsAgN0uIOJMZV+Fwkid68b
CSSSuD/5KvRVDiAsleRb36MXoO/1hiHN5HZbXcuHEJW2VL5PGa3AzzggUwRVYb7TKpJ1b6nk2Fhi
dpDh0SLwuqR+OQ41eAtOozT9INJOiOr+kdtzciWFwuKu7Avm7ajO+F47pizMdNg89x/DcQPSeMIS
CgBNiZ5odtZHmYxpvUIn3RZuFybWimozpnKgKZWM6/rc+t+GJl5u/rpSpVQbOMPaV/QZd9Ajcuzn
mCT7GG48V086RJjzqTms/+cZuBlkrRxNTBIPrLcgUjGrvargxThtF/e7z0wMTGod3oJzb3xFN8qO
a1/AJJRCesxLEAJ/JzdcyeUemLFlNIaLT9V8TKs3X1HjxG182NqFtwNqkjElVll3Vq+zLlYtk9j2
qm/v7qdBodXIK+VKHHH4LkeUINSKj5oZZPGu7ZMuTdkhud0OTPj0J5XV79PLM93LdkhdT0e47ujm
Wa3BoA3u9x3QRdRknb90EZJ4Ve9ySi+1ciBlFmhKZoQQtCcp69gDdHdshyQz6kUUHd8W+Ay+AdY+
T8o82JjII1JVyEcpSiiZGK9e4CEyTAM99olCdAJs8Xcehf/1BT1uhQ+vqAM8gpu88QuFxF23kL2F
8SokyDkm5QvlNVVJWPO8wdU1t3gvqr0tw4h4tx50XtKA+5gzOSgF5NTIu4CgXR1bc+2CyCFpt5in
JAw9A/PpOOHoVDIyP+gbr6WD5PEfHI5yh/nPc8gfcoMVXizj9WftELdS/fJhhbfqlxcTgJMazUP9
1ZPOC2Qcqav7v3VFstj5isWuUrLNAeXB97xO9YpNDKxAYkMQT0GosBHH24iVaTfW+0ASB1D6N1Th
Gyjqyx0z1AxVOMp6UBr+CxG8LzazjnDIrLzy+lZreubkZ4nq6lMcMCUw0uFctoHRVe/3tk/Z5OB8
jFvtKKXC4tfAhTBXuGgR7LRTYlbz2UxmYbBD/6M2zD555872n6NYnHYYaplvAHvqCRErc8OG5GGL
YzOKI5QRu/9zRI8YYeLRJsPMdNQFJm+2KZBdK6qPfo/w/fnwdUU9bjjwbpDkWnfpRAsOC3tRiK/I
0xyt+h450Yllj/ptbO6ShZisaSFulZlSfv80SLz23ZhwJZWMN1Uk7ufZaEA76gsE49yNYnqukVDg
mh4+Q+dnv+JB8EgS5Y90bdRWSxpbV6KY+/GkDBTfjRxxCNjgoJvGwyRS0waZwsvyZCMrw0zgju7X
mYuISkuRGZ3xytVaRyyKRK+hfslSYMTaxnNmGHInpy4ckbyKJEjNCsiZMOG9x63LabdPRN2Fqivy
AUxDvkGqD6PVFE2J/wTAQj3obxN7wqplm0IwAT/r6+dqy9AeTfHdWqDkMjuCpwNw0MbqrF3qvEtL
5BTM67lGTb9KT/8EXVwTpYq6XMSNp1Yfvp5upm0CpgiVcj9vOBAyWfEu9mii8YMJKBGiKHNsrD8w
0SjmYB141EQj1x2aEBJ3CjZ3aQNhhwucDF1HWrxQDugaslj4P5KA4nSxxlBNTLIV3qoPDx1VAQqH
tgmOtdild2IEwdm+F94HEG9u76h3eIP/Cfe4PBT003X3qdmmBLKpEwcDFNAiLgA5F+v5O+wj589N
4wg3gqOEdBsS1OknkxaN+azktA3kYhDJJFwONToKmlyHE8j2KEhJtqu/6eR1gEMtrtvS1L4KK6AP
oBWo+m/4YUWpRFRiER+CfYVf1KPrdt4mHNfVTs/v0E8Fdh1nMtjfZ1PLr1t7GhQ4DNjWUlti2Xj/
Ifif30E8RHb8aQwlnbE2twt4WGHAHX4jYcJ4VMhf/3zjzFQmbjrtsJleAIjC5v6RmjBVgiu28dB9
CAvCGKJJgZvNqbIL5iGrq/bDQz6UF5tiZbJzMTDKcOkABThqudV3KlwfKHf1PKU6nSwuqMnrHt7N
ITnPESQEdB2+iu7oaZ50zK1Wn0wAfrZCP+zM9HQ3M9XAJxe4MNqgkDSoFelNxy4iqBou98/PWYj7
XaLSf9d8YZHqjDG8YGymw5ffWwBXRfp4n0nibiq19yZGj2KIALqQImjl4guML5fZfGgsvNCG4jFL
Y/zCzFAqDkO/HAAOtvJ/l5yGuoc8Bx6VM+dt6bHfkiegKKPghrUSDUzoICwJA/NUqmd86Hgtpy+F
sPKCoaVa2Kw8U9QR+vo92NMtbtwT5y63ZMh9xHmZmU2JiQNsRmuv4bO25cy7h3pruWinr2wM8ZvW
H3tK4MGtzU0yjHEfl3j3yRgpUwI0+wGgN+9JPPJG+XX3usvD7+Chce8fc17eiv6zGLCNJXkvQVmr
pliWhr/ObtMHwwijTO5QSru9TKNpIFJy+g3jVNJ/dDxivypZIOwHdKOQ4uXJuCN5pduynUFQlB94
ZYGu0uNw9Re8LpJ5+Bb8RNH/Z88QeXQ1eSDV53VCL00vKIUA7JHs02HXBYp9eW8DpIJGeBpvXm6F
YXww0JAa6h04SAN4EdUT+oAY62aZANviYm4IhwWfSkYRxIuKpdYG7i7k7pAlNo0fRdwT4hvhD9kX
gdsN3Hd3LdR4ZgQeVEVlyABW6xwvR+AByYV+Fm7lAkEHgk4U2JsCbq25cxyArrRkZse+Wrd5zNBv
LmpC7kDWMBFUrfC/zRxnz46aseskNWXZvJ3br33OeAFhIAfoIKtKyDtocNZHuyogArFhE9WKdWoe
p5JtT2rt89jHw/Uc/B8Fs6MqQajU5jHpBE3kFktTVdwV1+Zl9lWLKULE9gGlMViB9s8HPtSWSWrn
KHMsLaXYz6GTxBuDiZ8ubabdmbV9RfV+Yw4TioVCpT5XOUfIqa/ZOdvxZ3IkHvfIlqbS+ZkahgBJ
7qfrP4bwEhWBdcQfuvRUSnS6Uti6JyBFztk+gq35X5r3QcDEO+PlQlqQ96WyRs4WBAfAcAHpKpj/
Fa25a6V/XlrLCD00gN3+DhqPiTxIqqOF3nazicZOR0HS41uKmNIzVSrjXRwNTTVKnVAjalB4OYKm
jWxSF9kjrVB+hCRdLLbjK8GXLBjf+YGsvqR5PkeM79fULljYf/wHhBFf2xgehsO6HQW7g+ANLOBd
EBWjmAaJs+U8ZG1gCGWLjVc61Lr8nfFHoE660o28E1b26uN1dpMfVknJuQxYXT/56nROq6wyfOfU
avwwBacddWExLBPh0NOCRxsXx3aGJ9wZI/HP+yBU/E8L9D+2eGqWXyFNdHsUooHNXKhWBvr/T6i/
+i8Yqc1Wdi6fIy4cc7GAXn/ETPBxq3FgDqn8F6Jb1fALHW3993OhjnWUwhDRxsqfo5HGhCFh/89v
o55XpctshwlHgWzJg7HyFc6Eq35pbW3SPmtDfu18ptaCnkEvSh0meEkmbwxnEE5cjBHDPQB3uoNv
xpIONx8LuG2PH4n8GNSgC4VdQBE5YHy93mss6x10GYstwCMCHsi7nxcTsl1xcMqTgL8js0Ea9EBa
jXxKuGsMkdP1jMcgMcgwQ9RvA3k6+16vJbYYiNspCwXwW1YHvqH50zf0De6bVSMrSs2cfKPzhjlm
NfcLocKhEdv7n4ovSvLmQq+y/7KiKxHHnuKLfUDfmJ5eclisA+1FmNZlTNzNz5tAJYByHQmU6eC5
HKhePOsDkw4wenNnyO1VdWNuIFM5u3pSmC01zOJ+smWmT0ynvHScFr4C+PmttvAnW/sjudPlUy/F
4dW2VUZgXJhGSEcLuIqL5uH5iwqf9Cm+WGUYsWs8Y9zY8W5RmWTkRHUYW+3SOCadj7p7iFPK/l+E
UMmZItfMQgpJUthm9fmOI+fwFY4Sap1kz+/Q44a0ckIk47aQKZtI7m4WlwKDcne3/Rz2rgiFDFFJ
Yszupj6lFFT1EDeaXu0LiwX8kaDlCeBDFKa875dvXcByW4VlOaEETOMqyFp8t6rA3jddvCEfoTvB
s7BF6C90dNcNysKfEI6k0UfSw0nRLWvxpfRZqLy4/ctMIh0TXUYdyZTsY/lHpSXtE41/NypbMN2J
QoOCLvi0a667QVL9RWp3iDiZB+Xf7lNWQmxAUnZ0EnEyPC2LcF3+Qx0kKCHskUx828jdA9VFPlrC
Q4kJ0Q9FUX6hmf+HjQhHoIOk9TvS6Vu69MAbxw456f/urfFDqtF6hUrHl105s4wlrki2d5dQGrBr
5nI6S4kc7YUm0m8m8tpeL2DVhxttuZEVSW+GcGM0f1gXOcxKN/WYX71fjc4rxcPHqn1+98Gu1kSS
Xu9+ynIbF6Dko0ujF/R+SeFQ+OuWCMWFn0/rTm3e0RpMu/MU7SE4zV8quhLCVM4EWaYxpXhV9aPx
URLacpqJLf92hlAwIIarnrmaQ8Sffdhpb7wrf3VRoaQah1uOqLpiE4uZ3j2zmk0oAYQtE7lOISrz
iXzNrEaN7QPm03P/Rr1aEnmT+uDBEkqqkPCR/1EqHgBUY+Hs22MQFTH7lGBj4jAncTsw7zbxyPhx
kgAEDxGoBeIEl8Jngi6t21qBeVdAz2OP3Wir16/VsDVCYdg1YbuxuKolwvqE86MCXwXcBq/tB7lT
T92t3anxuO0mBNNqZ5LqbLwmzLERYL4+RTnFObt6dau2xxgBlj7xSt4XKSE7/zD0vuZbycgT2yfe
Vw39Y89/zlDa1P0065qq2iVYk5/Ezu/zytoD3DiIU9eUCV3XZhCqOjmVBW2g6kkoQejk+rhUMh90
PheO57wqAQo4QwyNKnm51CqNCttvHrlFN46scxw1G1HB+ffp4cgd8Xn0vGF7zecbfRsh51w2hS9G
hhFL5GLLqMJR1umUQXhlH4dJnhggcSGEXAZvGS9+BxkmqM3PMcFk7jA2qCo4qX7w6zoeXHGffzw1
BjZnd7SQsEIZJSHRe9YpoB0BKFPLhgfeqQrYKcA9G3Vrrsg9ZQXukwhKQEcttS/uE40hDF0ZfXX9
k0PdNuKW2dPAzP5pQyTo0neBaYZbuQqNbFJXR2oSVi3nEVK1t7OG3BapKbNuO/HNmYcDmX4cY1Th
bqat3Rq4XQZ7bt7AWwruQIGmVdI1WjKE5quGnrFIrrQOWqJsycs1TOeddithgi5qiZo1ByS2rjkS
o0Q0jwvqVpkIoxNTj00wuIY8IHp2k6oI6vtwe5a5OJOprsAX0CE0RX8aGpVc8NNYX+8eAOGKxkU1
4bRtkUjVGTrq6ZXmmm/zl1MFj2qu2nmXTe3VhKWhkkesePmkKp5d6jwsfE7uFU8tA3FdWUDKsoYP
M9aigNTDNWCjDWFgSwLVmFI4b1OzTgOV5si+ZSpYasSwhsAMoFUvWjJTz7uev+NI6icM84x/QsVN
Sk0gquZdYmsRc3H5eOKlUXKE5EpSIkArJfHkH1jSV7TAtNwfIKr9LMibA7K6WhbPKWeAGBNh5HXl
N7WEkux/4lsifo9pX/O3gvi3XB/CxUXFXOTey8frPnWECAhcJCtfwwU6PoO/TrjMtqNIb5R5PXjO
zHxlMH0jKhAy8qKJrHVXtk305fIV2sXOeVdkSomQg10tlFjFxYOIGoExm0TMqCctlJCSBXjxzUcf
+pvlu2SFmjUJZ1SVfz0PgpQdVqBIBgv/UI/i+IuP555mUxYXLD4dOz4jKAbCF+DQaAcf6t8J8X8g
p4R0zMt5M6w+plaXIUfvMZRhvDCu5fkTdgXNHeDR0edzSMsPb1xvfsq+WkZVjOgtZu7MoRF+P9hZ
08yNsMNHamBtLfBQXTmL4IdCKncqBgXXrVUgUcu/6qGcdCHjpy0zVCbdqcVvwtNmVbrIJHutXnKn
BTULUuRjOROPNY0ZkN17xdPnEY84dh+MQOx0FltXVIngbzDlsXL0PltwlOTcVWr3yB5ZIWWN7LKx
HFU46gSjb+OrgMUU+yfjKkNq9vpI/dC83v6bUREIEG9nN0W/bXzvZTAYd+wY3gnbbWkHcl3+9sMQ
O5uwYQLiPoFgo8TzOqO5dLmL5T2akFKwWhyDUXVAVSgyopqgxEtR/S8rCRA+E0kBCsgV8eXIOGT0
9noXcsmhs3eUhhIo/rRLoHIZk9CbE45USjW9FLUqP2pEYwhL27/lVNgFb7e92uVY/D6GoHhwxqZ8
TpOsqCB1tr4tUX0HKGn1xlIWjL4QxduT1VFRoytk3L4VVaAGv0XBFv2ArTK7z3xrnQCIwUpoLEJ8
DwKu865Ig9ww/1s42fGtmYrCOklC4+e2PnN88nd5phB2yrs/wglCvh98MvJklhrhsqbxq8pDsixv
tDcNK56GU/wIUJFTapzl4Btl1pr7HevygKcpDgfXdMKNPcZhgYpEzTuK4EzDpNhLzn7fIdxj8Mk2
kJruV3spmsXeJVhmXcbhV57Nln9E1kSou5rgbJaSw6Q8JaxtKqBzD6EwCZD8WlWZvPLv3VPhFq1c
WigA/xnTLQi7Ck3oqy27wFZA/sFpo11TQqaw+rKybCv6/VlzvyBwSpwcJBShopubO4v4ZiFJ7BYA
MzB1IBCz5IwOByht/a/XtjGbAhOkDMGwfB+5cljlaogv7MNpri8bxbmcKsXsHYTCkHWo4kvfxFwG
x7+h+1SgXv5H5eA43aEfdUtmF4SkM3qjfCBp5nJq/0Qk9o0nqSIOsHJlXYzUdJW3iz0OgHWQbDiy
cpJv+CCYA4DQv6FjyM8c5yB5W+yuelW2aF/FyRkbO5qqhxRVxdBFVrJGMA7WtKvnUhVT8n0pKhoq
61icmgy65nx7draMu4srJbNQ+4Az7SWNN5OKHKQsXihs7cj8DH1H5ihEa2TGVz6RkxUmOh2134jf
whdTVD1Jx+i/3H6u88ZNRaOLdHgKPn+pD726YdBtCK4JsFulXxO4BPtd6YjEEHey+MdIVnrjm0zE
Jgle+LVvi7X9UPO1pOM8Br2cyDi02bJ5xZcHMnm0wprictnisd58me0ih1vWjepvTdWlX9pbmc1o
Or1iYQEaEpWL6llBI2c59q/GEwiKvGGrs3CX92X0xht4WilSqsXnbOEAhw+7chL8oIj6ZeGFuEOG
OQJxjcuqH0WKToVF3d5ENxFUghqHWh77oxR6fNVqm8rdMOZ61F8vyTlTzXg9GcYm7Qooa54CJ8Sn
5btq5mj91dqTlHjINh4C2RAplogFk/mR7hLqOnlJ7OhpSA1ouzk3ekr2l6glEKrGr5U3Yej1wWgw
6+/wvRVVyXtY2me+BaooQKv6palc0Dz/dsQaTt9G1DhD5A+eRtIuWj0xJwcbkM1eNYi1ho3i1CSi
p1HQKHkqK1PiX3x9OCRJV5Wvp6xpCGP4frn0qNUojmCJHEIagBQCIHYayT7QD11Gdh0+f1MG8CB0
ja0K6KECRqcX9FLZ01QPZ1PyBs1+/2j8e3fw14TNHMvwn36j05g8d9BR1jertR1PtMEgFJJMTRQd
tXJvLMObTgAJ3sJetSzPDeujl0kK2I24LIPdPY/xBvF6++R/JMZL+SlVDrUgasuvyp1nRMx38U8V
mub1t3sgPIDu+aarNW3PYdSF2ctJNTzI6xET6HkskViMY0YnwD68giNZGjFnE4yP+DpsDVnO/vE+
KkDIzgm7yhp5btBEk6VXHPPOLyzal/AclrW3rvC5v5SOkB2HI2ehNU+oi9ig07qMlNWKpS/JS3lJ
JNcJEHfuUD40qZGjsN9RqJbxXU1lFsa7sOd8oy91g2NBF4YU7NaAGMfZyZsCCOiJ/k/0YVywZduH
wgC5RWBu/2OdWgln9HpWQymv6fLB4GO0y0xi2/Rjwmmy16xJOx1QxQakGl3Lmvwe56BwiexrklQv
wTKnHQhYmc4SkaXk4ct2jh3/mfv4V1GyD7tthYIAm5e1SKtoD2k4b7TnXE6BoIFzratldymyZ819
1KGyQZGFkAmFwDwZKKpe5o6OQrdy/Id0/n+1OoUwU2pVI6AOz9VYLpY6fvFdqeND8UF+TDhuS2Lj
dYynaDyDlQAlFf9IjzzaVdbC86I6EohAE/m2OF9KWXyhZnhknIGXZJhTlDLlPhTPESx7mS7yzPQY
ObdTehwLE+5rLtUmmhkFIvJ2v54L2ZosMHBEy+FJ3JJV1yhn59mOrX+uZcTlyiU2bLkqb34uh3L1
W4N499MMiK5+SRBMJ4S3ZfGAXOZPsS7Q46rwp5PmLBlG2E5DEjcJOXtLgHSDHpL6ODNxpva0J0In
zpZ0qIGYkudyC582M4x+bevWK1sOtPR/Jsz6C8ElRaFRYLi43O2EqT6WccJxfpMWfwpHUxcA7P0M
IjTIW1TAq6kl/PuhVCXsadfYbXeM0RwU3se153P/hi/gUgWI4A1nFv01FgccbueJrDNfPzJQKbrk
rBq0qDvULTpkJnzBXAbEobP9vNK4a045FGJX8Gq/FF67hluTRiFrWrproga3fsYT1B+V5tnD5ZsJ
dHGQv3KoS4jrmxtCsS8uQt79JktSRixxz3LvMXDXSPh0+Shh3yzczz1ZsIpSSNjqh+3PbyyocYBi
IafPRP5k/fbZnD3Bi6AMfJtJw7jf6jYIKJn+5BaTU/Ge25IFB/60OvTdbXEWBZ8rzdV8CqerbNuM
/9eM6vBHZ3mUJuY+zJGabheeeVZkDCEi0KRzxz4TsYiM+f4Ec5Igvjdct8JHr7SjuXwESyVa5Xu1
hYwWC+Sg88qhJ+X3u7ayFF3AliAyiF9LoRlMnW03Nl+I/ntK1UPQpslqzInSUg+pESqLNlfVOUpU
S5wmsVWx8ZitRHm3efaRHm/VZFmTWFUOm9ACMaFsG6PCOiB6EVaXmaJXgxJZIUaxbGULFE65aTqe
jdmFC0O4tHzrM4mXp7Y9rUykALXRPnxlVIWPg4VlHSzY08lsRdiqVGIGL/mN7Y1G5ruBCW4zlHKh
HsMXYsPzNE/+GlXB90sMdAGUiRfCL8CC+ZUcExS7mJmUAzs8J22tQ5nadXTJ6Sxux9bP7JFIgpw4
Tqb2Aqs89DIEDfFDZJtr5s7ss5jDsPBHCbPbahvRUTDGuW8Go9GiKqDgaog2P0jLAW1dfgE90yts
rwTNK9vUmqpkGZob8lqf4T0PBrYGT6dvwIenzBTiIrfULN4Gv/v0GZwhFylR5ExIWcTvI3y/REqi
4W16rdP3SD2BZPWn0U7Zjc8qF5A1rgLrqxT6AJkLjjdocGauHEDGAAgLMiISKXfDS1Q3+Ntk5CHz
RiOIgSmgjy7HBqVHcwifd1ehbJ4/qBYx1zwzppzbLyR0Aq3br0RsYp3x2I0pxIyAHMDlIOkUR4vp
P7bCSm98LcC38qcStPRJOdDD7F9YnU3NLKV47dxUhPLn5IY4yAKzLtRqb/Qjvl3HensPMSASfvC0
+2OOMmeEt/njX1vW/1QLWNDaaOYtdY50LDmwfVhsdoYF1MW7PA1r3USHa+l32RgiLF8Va3zpQMZc
MMHS+Ot6TBfRtTIRm6AalvhqvncjlcH91GysarAm8sTJj6TIMnMohVGNoxXfSyU7vb8T5I71xEvQ
RcHOMmJ518kRP+9LtbVqi2YsySHpcmpdtmkr2eOXd8qqMtDvPXmOkCMWrcHwtFMQL1Hsf7fvhHYf
atLkpUPcKFh+SbL1pcLOmqPU6aDaB6OLi8MK4nFsEC4YivE3lpkrNtCM1eXD5HgADIX72uRbtYSg
gMt3jfdrir4/D/0y6B0+IiPwEtBmTHv9dJyIC526Qf4C/Sf5ESVAr53rKVMoRDPmySHVr/IleQtU
w/fLVIywD7nlIrSTbgToA9NcV+1p0Xx3mfh4kLDQK+j2HiKqYwXJLfKlxEaoiPcC8opndQ+7LZL7
3uvN3I1RIFkl0QA4TimlCTsrXe4/KoQV2Oiew7AqoN9/V1TRSIXXyITALzMxf6iu35ljrqfqLwdn
ByDtEiIhX0R0KlCeC/nyelQBQbKvvrW3gne1eHmxpuz6QULY/ntvmfxFDNxIJF1TcF+49091xYRL
0GQIQ1kaFTNiZihUBgCs8e77IdxwXPNcVJSYd717RV1yjByQq+QfDifE2ntzg5m4fCeWhMZcu8Jf
A3aTLLh5H8+ZDM58d50UhNPuGl80JuFbX7JM30DEvBD7c7K9tHFAIrHc3S1t4WtijB87kNktCz0v
/KjNctIcLn7oydjd64/NBvARJrhMelYbRHpC+iamf8kFQs8V98lGdB4Fa0OkS22OI2gaby7WLFN6
tvev3cvUJ9W9F27Qyj+Lo6fAK2UTMuYaMoWbBFr/BkR42pJVeTgpcpwHHNPP2dKT18mum/FYxMjK
ptBhkTDWp+maNWMr12Lpq8QICr7iMGVtB+5ddz2exmCxgUoneokhdP4ahdZKM49civUL3VxWLLR9
JpuVil0QF1m7qD5x5gnXqMQumTnHQipoKt5bXK+BizqoGvDrrniI6+rpSl8LZAcOtUJABHmFlBKH
SKeb6ypvTwK9k/SHZ3mUIVAQOKTzBFiqfG9KfBdAMw/07Zvv6WpPwUy/xsz/sVWU59+ghpYv5WcG
uP4EHvLIu2ZnkCiMbcIdxihXUZzAztDw9tKI923yNd7WHG5NqH65rg0ncJHiiG+N9H1YJ5eiGqjf
v9X+ydiXJ8OTG24BLxzrkhqRCbeEbWQ6h/Gv2PYPPeMFQy4JXl6CVeQw12I0IpionH+CORv/6TW1
EmUnpA2Fr15wCnbcnPs6DBy/QCDlhxpjygcul9vROyt/TjD9efEsY1ZKsKZlwes/g93Atfdj1XJa
yFbaA9ze6UzARlPZ5zHwQOaqMkH4FN5EioK8pmaOZf9/D1CYSSDwQsXrEQNUckJPmuciIsgert2g
ZnlPe9M1KqNj+prsC/IGhkUo+bSWDv5WZ64HwmAMazJA0UIw02ijd2bXR18XySbMIaRvCF7s9I3+
WTyX5mdllT+BfebWVYyZNE0pEVjaeMb/BOdXYOkdQm7d1L9tzfCjp9BD2TrSRSLQnXWh1mwERs7V
HVe2OE6WgVsbgAPVPySaUmz7sHGpdubJGZa8fQKw8EBjaG/ouFsFSeoW+IewdIHzQV9zhw2kunLO
Xk5LWVp0fYqZlCLWr0jojoI8T0o0EmmN1UWhwRmFyP2U9K+BK/xs487BgzSQLwAyH63a4JrCSATF
VY/oOhKB7AEt+kSNpGazkgo05fNpWZFzBZNI1+QZbHJ2HFO5xC6M5m8LNae/vqT6XkqPMKBIXU1i
kzhEoHSYee/sP0gUC66FWWSSpvOD9j4y8rvQch8/xtmJDIr9TXMdX7X3gNEG8MbWTaRsZnb3Zla7
Cbaw4Ube/K1oKp+N/VApBT7erCJ/SnPuJJx3k2X3LW7r9Z26iXa8BbtzwmIh6AAtx/h8OtiQK7GH
rp4cWk0jln9MXuDlM0c/toqpuUCj6GSnMozvzbO6/m79myM1Cr4Zn1n/QNUrIL4r1NxFzXmBYgGK
Qwnk/uTjGEQ3MOYpYjFSuKuKE+FstIyk1JcCl6xsvNz990CGPhGrFcopBPMFA1B+sqf57dEGO0eP
q8+cRyrUG+Smq7fJ3GIq67pyHo8guK++GeXuXei8QYqIeMb4i1WXBYH8Dg+yzMqjx8ANuPipDSag
8UOO4J6iNjND3ofdf2k2PUivQ4MxL2LO2g/FS529xvjkKW71MIR7Ig42Q1PYAciS7YbkemwHCl6A
8Vl8BwmNCXRpCSQB23Eol75mbMOe5CJaJ901Vp2Li/kAG3QC0HqMEp8iUoUy2ES1m73u10iyqrxz
F9yz8pCING46pHzNjfCA6mCecqkNMIzImV0LXqgY6lLnJEdedhcg+5GtvcGPNgZ5idpm7+q5Iaxs
wCZlWlIcAYWlHFkTcAqyiC0j0bHi3YOfzlvTYAYOx3JgIMkxbIeUkJ5vJ56V/CPyMDjBDd5vRqS0
6+j1R919kv+Jqa7yXkhXfatL46U6ebQ0Bx3B36SUyEFIN4AJs7JdbCd4C90/8ZQzVIg2JI2fNOfW
1qS9YeFYhJlL4zoEJQeZnUoaV8HHp9NwODBm99QOXm86u5JONER0fZv6HhmeByE9tC9aCM+wC0Q6
UP3yJaA0ZHo6no1sDnQh6jPW8k7xLh26Dp7KCtSVlfFZDQVyTSQaBx2eSnfL8h5r+bHvC0Rqnylp
8JoMyGm5D3wjdQ3ZCFuGI4oQuO4JzvlPFy15jFXGK5sQ0lXHt1LJR7Ypn1aVD3gw6wkoJZR2E9MJ
vIJ9JcZ0aCJwJ6E51jzKjciDxV6mqiGJRooNSiDMfMlihtDxgMbSNZMTZV+I3w/rg3yWwlpkTR4T
7VaGmnpkwPxrZEsQ/82G/wxkyvvsZBbTOcDf53qI7ZmeqW2V0Jtmw+aJRPCc7jBXv3xpQASEvDb4
18lXdsVyTuLEuGQyfRb98IxRYa3Z5OaBqgpl3ThTgWwZw+CyYa1Goezy6inY/TadzS3lyhukNqbC
UJA/nRtHeBhs1vpepv1WUStd8a1xXdnWG+I1diNZWfY5m8jJa7bJCwQQBjgfUWrgrXmlyRaUUCgV
PNvSSEfR4bbKKEOhoJCTGy+ws3VyALj3G+HOuYmEu9CuKdEII9uk3vMkYNE0fgtx2nxrZcd4IeNj
0QtUmMwxqma3WFaCI9LHPpFpTJUSo90x4R+sx0Dltiufwn6kkRi8liFnj2wXX+YLl1AIawkm05Ae
/pLWqwB6jqUW7+UMwoydohacJ2+i3uMlwhjOYiArlw7CF22QmLJ/ep2EWioymcmzLPlhNaVP8EEj
HfU216f9/NxWO3mMo/qRrrRUSXBOldNnx1M+WF2eQdvwg7oKOqGiVOAHE7gCEn59/7I9O4CgHY3w
fiWIeUUUelvAMoFM6MGNRVmd53iF8sgsonXzEPpwizRDxyTNs6t8DSRvQoV3kklpKmLxb1xvLqB5
3hRErHFT5gTfklL+qcAAT7LtzPXxZC58WL1HsJib6WgmzJlEJp5G4tjPVCdPo2XBEjPPm6WgOHbF
aGeIMtCm/zdsdR/aWXPdCnd0ZpU7j7mlNa6SY0w5SLWX0XLozA2Etzct963YwijHSsa78Q3FHIT6
OjnFZEaeCWXr9eeKethDsHWd4iymfxNOD6ipSzgsYX5SzMsJdLni8RBa8DCLIb+XVtioY+RnvKYo
piKXDkDT4Ud7wFZYTMWgr40LwR/5fW8bipq5ZlMTJJaypeKF5ZvlK7FUOjfsLpvJYexvscyWqHBU
fHAMur5j1GN60Z72Iuc5LTxii0m3F9LQtsOOjXcurHnwfSHR/80a8hJ7HCJ8bORFMFX6abwrqqPE
nJKzfN8mHbS9o972rjy8HTTvrYFcoN1Z8X51wTqVCXOj57Q0oOu4zotTYUPJ4ymnzkdG9X4yJK4H
noQPpJssFIMTAULF6w7eOExvAGl0ORhjX1+2PTmxBlvULrh1estR1CDGiuhXNaDtQ93MnKUvpoN1
FIlNkmTB1tjR/8HOS/m3Gp7bc0El3gM36prO0+0Xixjy0rY2YcnrgNf/1MJmYk+TeXnyeB3+FN7g
iS0B9EXueYObX6oV30eBRXBHCMuTEqCU3MHJSHx/Il707eAij7MlFGSohWwFCJpzfRwRwEnl1oFk
7zZzHyvDH0/tynefwWVRdKMTXlcptoWuQcTDCtvNSR8Kdw+i5Zao/j/IItyhPyToz6pBVQVphvqP
RiyoR/bN7E50UwDZ1Msl5KVFI51BRrAkKx3mQvlra9pDUDx2Y+ZgZrAuoU/mMlolQbu+DAaYeOPI
OwHIeZPrZyRO9LYdtyo9gAwmt0+kN4Tql1Dy4eA4YMyRARf+MWGKIj8I8BMr+lvtRalWbK2Ex40x
vQyEIiCtZouNbu3/fAuA85Bigb7xg0Ual63ifdVv/mUFeG1+3Vu96aZvtsWPdw/glxsTvdB074Rb
OaJr0/gQdCC0Ssr8I/9s//p7jjYSOhQkle4Td0dtT/vZhfTIKbB48/9vcXIBB3fpmfj1xZtofML2
NgWvuhLyCx1ecrr8SVMXgiIP7lQJB/oNiCbJWxCLijF+3LVq3wdpUP24kbYhlM36A+7Avv82lb5w
VfdpV+iZV4NrfSOjJ4hNLR7KnpvLa4fGK+Dmpv5cH8oRoy4S2WBIpHwuBZlYlV9IQoR/RnDy4Gj0
tpnTvy93C5hQS8flA2NBXUYXUwvKOaF/bAjGLxzHpUvkIiRwFli2itqIb5bPOi2K2waEHyX/e6aT
rqWXB1Ve4vRpw8lylUInftevwPzZn/5/MXeR2I0QtTLDwBIC8VCWTfEN9S8jXiODsmLFcq9cEukF
qkZEwD6vRzStXI2/Ps/+/6p2wIfSA2sjj4eMZEtp9OqsCnMuluXuO34LXYlL231XgMLMFmQ0bXEs
2LOIg9HuRKRodoEneqReYpVipRw6zj4/bPpwfqLJMBhB8lMcigQGlQlB2BPIk3aExQ9wCUcJzTsr
h9fWp++NFlwAWVkRwIWfFfJGdCTSq0ZkT5FfR8RF9AuIbrAl5mra7eOr5Akk/JxCCZRjWa/OXeFh
55L9nZ0ej7nKzY8n6cpBofMie9bPaHSYczrgTeD6kvxD2CDJokSSA7j56H/mL9WINizBCgN9i2i2
XmzvxjcoqGEhyo2sLGBbDs7Hrm2kWy6RJtXXsLNbbN6fqNOsYyC3C4oUdp5ghYUvIAWJ3dGF1MVK
uduGJLA9jRDa1XcbhTblBGIOVFo9oinRcW+gSl+tu4ibFWTqrXU35qLlUiW4XkOs9ljfv/4g8N3O
lUVCb2QkLaT1qdal7HcD1+nFDQm/7ZADRxf1wvZLXgFtjbcdc1xLWQjWrwCUTnsHQvvHbEn6+JpE
gOW1I+XvJAgaJwzixrC5lvIuaKZZdlpU03cB/BD8AbV/uaHZ1yHERQfiudWKjYjg12CSHcGAC6YT
gwVLPnbHBzAO4Q7JDXTRLGn9ED3/EHepL0xI66tE1jUjPUh/erFf51LXehGl7MOu8L0aYvs9SAw7
sT0M+sD0Q6IJOpUBqk7C64O1nE/CiH5xJmsUmzvzgx3QK3unliY2rm8785SKL0XtRLoHW8D6iVan
ubyiottaOLrcXDhSyTg/VdcUAwtXLvCsFpKRKvmleCdvQ/kOwYVValdlapqsYhrYo0uhJZjzpeBS
6dQKjB9JjFMU1mMQw2RS3M7gpeZTSsVnGxkOxpUqDDblveG6PkLm1DzUZ3fl68nJGokfNzZe1skO
rJzzfbuZ3qWqjy9zME6RrXAWluHTxwUh+qXyGqqG3ulAVOTgPopbfDBSbTjCxpd9+yI54ujvfR8j
5p7GvshOJ3ErBfI4WWB6a0LlxT95S4re6g6rp3hIqMUHFHDT/rvP72Z7nye/dEfr2NZNE1KWDmgQ
+/8vuMCuWw+y3K12LcVpktdopBH8svI8oBM8yhDbteN6DowweKrozquOuxfPooE8B85TeEF0NKz3
SP3kTB/8voX0fmiWaGNE65+fzqdYFl1CTglBc2BsQa/XoE24D1jSUNnmq+PPZZmrULEUcmGJ9mop
VTuuAvmRFdB+3ydQ7VaeAOHXHh+7bNLrECxyfb+FF1ZtXohb1d6j0Pv23Bp5atLtvtbpSFDXYFFk
6s0mtTC6HCO0PIRH07DL+1S80YhVDfVdtzWHnTThj0omhprkQTA74h15sTCARXlOaxIqn1niLTf6
z8Nvcnnx7ouYBsSIIHUC8EabD2ysgKx8sekdh/A006/Z2qrqbWAb988opUYYvhD+crm177oAR0gK
BsC0x5Sj/9z/uciWI5T/ghzLwP2PvSlON7J560Cys+nDjhrgGJ7Bwg9a1OsEJEsTWxu7B5npQS3y
m26GRc5otkJCDvH5TQLFi98PYK6cJqViArrrO2LKTrvPADpescFsJnLaIevbW196/F4l/eN9YejK
sHQC6Zd36j0je9QZ6wEbP6aY2G3OVMlyiUCf9SJfSZ2Sw7IqqUAALlk2xEmvnvTW2IsEA+A/Bov8
siZ+q4jkgnlIHZVR+TzpVKoG3OPOyjEDDc1IjIuIVCQ4UjYt7lF6jm/RwolP84vzEZ0JyDeTnHI0
X8bEBVDqIfE+RmloVf7/8mbJC9fIJYS9IwyFAtqUGHi9PeGw3l4W4PvfS3aEedXaEfPOp5vdT4sd
nm9zMdimszZ4SmS2crHDYN7dVsxFZ31S1sfv0vzPZhg3mHam87gUXG6GMAinpLimv2/65ykwPsxL
mp4WxZLd7tKtJLJvaa1crrGTFs0zEgonhZbwyh1NnBpGAuDH6KA5zdgHeky67Uxx46hi35I7QTpq
2MU/IP8/62ILnfGQGG5LRMAnRD8QqY5PzRNE3sSnWonRTSKv2x4JRhGruwZSnKqIRTribnNnoqFD
FMazIxq0CQjlB7Y45YJuxMTgutIYgcu+t4Cqc9vAVl0UXrcdc6BJsnGfZ8OJrOUcpdVs9bP2UOVy
HBvZHwA5FiQ2zYrw5w/nwZWRZJVXTdUXuxqU1NOnQht5F6XaGkGXZtd+6ypEDyjUPQ6pWMgXNMwO
ZYY54dijcbg/3G+IymbBF1Qe8DiE9qfkhg5sx7RW+VU5ZJCnSGrOZl0n3WeA6zh79DaG99D+nrl5
vD9oJoYVhu31V9h3YmAfGf2TV0Wa42SVfB2GdI+oSWDDYspYCb7jXd8gHDUnlshkbzl5VjUMS0pn
vTIDWah95wki7K0zAUKotlz3XCmwSItFQRgWn1irVDYzk5CRjJWfjIplecOUta+rIkMqzwgdO2w/
gK3b8zuoWTaq1ug94/gOmrQDd7YrN9GozlNyzPAlhRjsaP0l2Y3tznMZvztmADGZdS/OTc41HRkp
GFaBIzplF5rdMFWEOkLMqJEcYpDo/qztSV6K8GLu4wqTlapi/Z3F5wqP+aBpifzpCZ6VgX/6wzGO
JQpZiwrlN83DjBLSWWYC6ZzGfob/PsTLOETPSA02vtzhNy5asvk+tftzdTXr3AdtFZkpOfAoOdnf
RzEdHNnG0GzLCSZVRlMv3EHfL3xkT3kcZ0vTwp4z+0uJMbwTpwCfxwPP4QmuL/8BlrMAbRqzmC+q
YcvdzfcdTeG7kxKJrKVAQOWQjJFddiXj9bAtG0hDbSbvaHMlXn0WP13FKg1QqBAjbdmWV6jsXWtG
ZokLMe93MYRfA0F2VydrUyNYMqwdTB1BGm0tADJrw+EiGPuq0VYFagYy07+B0qB3ITz5w7tuV7/o
cXQ446kXCTiZ9XM1MX/x5U61CVWhOelfzr9Tz/7wRh5hExqqOuNLteCUyL2GGjinI0ltS2loRx5/
6HlpRwERpGRt6SU8tfVbra8DHyuw7/zdXIrIgmqpubaQhLUrPJ0qQ0nMECKHIET4yDcc53s04UJs
lF/puqXJgpT8AnP4/m9q8zK9/JqvdwSF6x6ArdC5LRSHtdfpP9+Hi1arWAuGu99UpBciU4DVzNGC
wo9UlpYyKhfGq5RmxfXvJYVO1BcbK4WYD5qlXSt57vICWIQ6uk5MZR7YBWjYXrqP88/lol6UR9W7
N/istgsFVjG8j1bg8mdWGmQ5dcniorjpikJUYx0CbMRNpd6DvGz89NA9HNwkclj4fbgwDEs3BcfQ
yB2rCh2XLeel5IEo4F7XGX8rFYes5pXCpJdnmntGcEKHjL7PytdLZmkLvpKYmo1ihdZr1R29FWLE
qX4P6f577R02gWsRCesMaqLTbpNAYLKSmrjxy+6AEg2B1kGVna44pPKiImJjztf660Wmfkx731Wc
+L7WjCCtFtG49HgZhpRFy5B8cbTGQr96vGC082G2wHKtAaKE2rf5Os41HmfOhT8SXh29K2HPjBVn
fPmddh6VxeZFIw8rVHZZ/1X9kt84A5Setg0XR3pIiKcHCKGZ8qkbFd9oEvGruDbX4MirmYPp5wQa
r4ReGdSDjUQpE+27mjj45ZARbMUaEZrjoLpeKVufgWwt09/c0mxR2F9oIH11UoC69tAKeiBgPwl2
8i8y9v9gVx/iEveQKfIJIm7ltKnlraifznOcL86vz/BasAWLMJPcQQ/V5whweIPqPbWqgL/8AHcR
NSXGcZ7PsT4zxNlN7kJxemMe1Y9dUW1ZBFiDA3XCvcTsX8yS1d7yIKDeyPyLPCdr2TGbp0mukTk2
P/JZcb+sGrCe3X5oN9dPGe6mT8UUXcLKUhPRwZ7dCEnDXPCjicYwvcwcgZU+nokxO2YqlcBXGqZd
1o5lsf0mM7MeSjlWVC9y6ZXdrYoR8de2ndaU8fIxCy0pOEhJnwhAFbhNGBz+TwFme1u0qE4Ep6u5
ChlF/1dj/eJNDxuzhGst+gz3UlSUxZRiHYddhjs6hmZVr3qB0AyRiy4zkUZDno2MECNvi753WmI8
SpuVcvCm1+MiclChKHWN8+gIBbpaPZtupCCydUIGLtyJ5YA1OcQXfqjYitlfKRTzovNOQaag/93s
XQowIMahX3aZQyv+2MMYlZEvVtJ/bhzI6nFHNJwdjYA5DP0DY1IUAhDJ0V3jcJiaKpEisK5cLaaB
ht61W/cXuNKiXuvCrRxzSxktAjGZhZRoFbPUwNJ+XHfTTSPSFNRiHXK446fdn2EZbIThlxfsWQC3
LiEKoV22j6boBlCXg1vRCXAyhWlZO4E6z88bOIHXrDeVfszaW9K1yczO48gRBlITZhkN0r8zRrEM
x1J0+MpyZ+ZXhHVpCaOxceltUZCQ/m5HQDuJ0708RXEXXLnoT/L2YTJmMTSNXfcO8ikHBF5dPqf/
0G5Ys+r40EBzvvKnRoPHJxLsolhD0Y8NFGp6n3iBmWQmRvqEEJvOOZEMGwqfpHI0xvXHouf6RT0c
grRFpbJSxQkhRhtE9kSl0fbjKkR2qINWPkde2XpNfK9dieGx11G9ZZZNIy+ngbJwvSenNhtAGEsY
cqU9MwnwwI5qBs/KrUhuVyq0bhVNSsOLRnUrqMSCukWmg+vPoWDeo5XTEJTkrRYjMFJFqpHDjh2x
MKVUgnbSmmL5wlXfvL8PTLgOrrEltEHTWlqoYWaOdcvoSHMhAJJCSzYFIl0d+8LlnRzm27ZiIynu
TplqUWgd4NQRh5496WnIZ1eyL8MGjQZYOoj97Fnc2D9E2gTQJ8eF5AsehyIQRTh0LXgJWetGIVWd
gHiYygcBeU1X8QFBAH9lD5jmHqBUwOHD7pg0bJG8GS/QlQ6+QU40HJlov6lGFHq73qY4tFA3JJms
lXhmRNddxGfto14cAX630fW0DCn+awmB0Xg/+3DsVoI4G6y6V4vzEVWtaRmaN6XejbfhMYS5EW+E
CO32472fvyESSl2YS4XwVs8wc2on7ztPMj6ArlqN+HYc4I5pygp/Rh05cBcCKfSZxah8pMGtsnvG
64v7URbd7KWL5T4p2byA3huTuAtqnCAaw4aocxTCQ/sUaGyCf2v4D4b6HKkmDhgTUWb6PZVRSij+
8tyA6zzrNOl0UZS7DZHRocXfbcy5sKv8yz8fwiB/hSSifynDbxl3Vym99BDi0w+tRd/YjBylEdCB
out5dj/QTv9fVUINds7bmMxx6xAFs0Y+z/pV9A5neTvOX1gxBv6DTUJOBJ1tQVSwB/M+b3xYiZNB
iBRiAUhgxatc6HWDb+r5TIt6jawcU9gRRnNiBJdOMc3DCDtmC611oOhzmV+gsdGZ5IFuvTYbpHmy
Aj/tJEXjIxQQAEXnWVH2bXWBhuuE9ZfQXXf8wbqFxL+opETpMI2CeqW2clG58zE0RaFoOA9cgruP
ayo3NYQg5wliUOyBqxNYAyK/1V+1jN9WMNx/KrZXNCV4nzZz2DTUsqc3jVW2Iz2qigp9foPrWetf
IIqRVyZ/4QRAHa5Sgqrrrmm6pDMAhzcBxdbmN3vG2qtE6XlbMqleGyIqK1wRhqHWLBiUc8A67HoH
T1QFpFSh9ylMxrbtW6efvJZTQs3in/LpOtWb7m1jZ5tywERGK77pN2FMoez7qiwhlSo8MxqxO12J
tu35UF+jfJA7cuxsz4WqfICqPWyKhLXbhufH5kb0agjeJ6Z7dggua7xnpPEbKM1gdPj/Gv+cd2EY
3rdhwW2JODF2OKAfJY7EymarBejGeYmSnfHqy+Z2bZ9p9/CWYV9bGNpY90svXR1HLOXiIONrJLqB
lnDjYqC03LEoh1SltjX0iM6TsRXQKiVk9JfPFBL0/uEXXWug8tkuwknVgqnEwZzBDfbzVW7kGeJo
HDlPvjFuXEB3wWJ+wymlijrF3hvO1MvjrQlTI13SspP/YswdFqe81xGMetI4TAzePywZcnAWjTgi
5gZUfjHrtd/EENSRGy+P44BojC6ojmUfUxRT26eGhm3LNdGTE5JMDkw1/FGZHPIn/ztx6fupKaj3
vt3y3aO9fPBe54SCopV3OOWYQNTz16vI4BLxfS4WIujuolY4+M0FD+VQkbN9vEO/Eo2Ox3PSOF+A
BdlY3WLt4cRGyylgKgOrjoyImnQ8xVevM/fWzqTDW/L884idX7WiRF8TMNXqvZdEfJjcbR30rie0
fQuTo1rHtG7smymACvH5ERYVzvCeMTTNGFRyFogSMus4RI9miDM6gxv0f8eJKm7/QUAiYzNzCEf1
QackgpE=
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
