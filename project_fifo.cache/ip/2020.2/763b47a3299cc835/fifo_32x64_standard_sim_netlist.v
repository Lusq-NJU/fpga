// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 13 09:55:06 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_32x64_standard_sim_netlist.v
// Design      : fifo_32x64_standard
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_32x64_standard,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
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
  output [5:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
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
  wire [5:0]NLW_U0_rd_data_count_UNCONNECTED;
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
  (* C_HAS_RD_DATA_COUNT = "0" *) 
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
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[5:0]),
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 100992)
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
