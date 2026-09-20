// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 13 21:56:31 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_36x256_standard_sync_sim_netlist.v
// Design      : fifo_36x256_standard_sync
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_36x256_standard_sync,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [35:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [35:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [35:0]din;
  wire [35:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;
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
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
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
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
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
  (* C_COMMON_CLOCK = "1" *) 
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
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
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
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "254" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "253" *) 
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
        .clk(clk),
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
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[7:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
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
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[7:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 77792)
`pragma protect data_block
6x974aQWh7tCOz/PP/jHrYZawg6bMSebziZkLWpp+kjpW1wSDzv7KRtVQF3vUEBF2xsL8cS+CqWS
XhGteWS862YaXwjyjqds/zOHocOT064IiIUvCvLeIJTk1mFS5/7CGa//x1F510fF+ERt5ngG5EEi
3AyQ2HQAGYT6h90XRSRCLveYtKfTYJW7wdTG22Bh4Pg6l2GbjPZwOEWoWPupdPdWVRzQz7t3rUvN
zalGv4Vj5WG6l3UrgpNNdgjMOD87XpyhBLGNBeKvyNr9+rfRmO0lxOI/y2hOh1wvmrTsx7T75r6k
fa5yqjSRQ/2msswr7ZuZ09xq5ehCFcyVQG+QAGzj+4Xh13S6e8OUNL7WgQtsm9GEvrqjQfi29bR3
cZe27iTHC08jU9UqBNr7ONql/8F/z/lK7GY6PDvI0A9H0gKkTIVgOtHuTQsB2vaB9G2UDPEimu5Z
PE3zq+JgFBmsLQSrxhelTYvF3tu/6Gw1u5cIW7kK5rw3co3HV09ytoHgTVkKsnz9rbkTXn40nuE0
BppHFNdwoQjG5Pp9ip9Wy/1kvn0ioCqhU+QGotSPJNhEV1TciG2SrAA2vCgNvcDbwdkBlvsBrOF9
KEbSI76KdpwreYZL3hob1XMBHVEqOH39jaF7f0dCcYPuhVvV7gy9XJeyLt6Hc4E9olTwy9E69kA1
bTqh7tIdImbH2OziE396v3AN2TKOOVCaj/eGFKFXevYX1lu/nb/0NOvRkOTLYT7pmkhUMEAX0OV6
SQzTRhQG0Sy/UKwyLkXHxB0Crq2IJHIr1smsqbogESdaQ1k9jV6neVX/L4cDKalhfbJObrDOI8pN
TVpfGtnLvXqGA4j/fmbyK4Wt+BmqJQkduC76S05XvYneTbJfLG+ielP7ioioPh1fWDz4UAsE/nfY
xfqrBVfWKQoJo0ywRgiEjTY8obVmmTeJPAws6SFGSZkc81kCJdqO/8/Tnk90CljjCz8207UcYbXc
E6trWF368rGrjnReSWoIn4+NDV/gM/I2OXXJmA1UEY3iWt8QercEZIvZFMSO3QIN0PeXNYWtEOj3
efqVSFTxWAytULpfEVqr+kmhCGpgn8M000n5aE12mvpGM6fhv3r/cbtvRFxDCV/ktjLyd5aZR7wE
UpKBwhpJxhOKOkjF/OCNL1McEjDqbZ1uO3Q7q9a51V7sroBn2KWGf4zpl4AV8Y0E2VdENkj4orEz
3Va8vm1XtuXNcilaRnDlkO4CIyxu7BIk+Y+AvyJB8FaLn+BNUtIxarGL+8zYCK6D/eJpYh3qmqbw
ZCYTlAZNbTv0mme7bWBxB58KfLEq3pin8Db/CgKvUB4T/+akozjNarxqK7B/vysWMK/Xrhj5YFTN
xU1tO/h1MQ2x4VuiwzDm1o/YhJF4bBtto/VYNp5v5+d3bxH4aLq7tI6thblJt8zlNaWyPRZj1IvP
p+jddgA6HxmpG3G79ldGMMEdQyQxxAnGz7kA9oCTRu+eviUl0gpJPucnJJ0/wIyYw7W4Y+DVhu5f
8rCpwaLzqMCfd4beeoKLeT8TIsx9WwsrYgupXh/Ze40k3v13+nIxYa2XqnyE5eNvy+2MMpwM1K9r
wgfwlEQw6jtORsMr0lH6RnnQ8/lZwIYs63qtOrrJDVJuUr0PYXOTQXUWuxCaoggyD+LBC45BEl9b
E4Z8CRQO4GJLRQ+wdC3kn0Sf28IF0oG4abVLJ9s3PTxcDLrYimR7P1wsjnSxGPE8rdp1PGQzSUk4
Q6aPMHs6lwEuHyhGG7DXSSCL0T3YIuuq3VGFNfqDZmbUqVIWuTtD8GCy8cXHn1aw8aMtcjmLkcSu
2etf8zn13yfVPMKlb2dcCvLzYjnsBFd03VvDIbB2NdFuQRgzugBFeVUbNN9vVnY+u+rwHrVnFKov
/JoBMkmtT5POgB/yM3LQ0iz1gG64WdXBTQhjtUITRuRvbJCQWz0o+AC7KnLk0ES1C8ZFCF5OvXKa
0OHcw//zoRJZLecmyQSaNl7nZFl0hFyfJ6YWk83jeM8DX8Mp0Cnw/swns1ZJ26M/FvtMS1GYg5vw
XSl5fAeQIiXruGvrj1+at79Zqgnlq870qt//sePJdK+r/IvzcnV8/Ahxdh6d1ERb7l5RW8j2L1rB
mPneVhX21Aev2E/iIdWYP6g39kaVumLIOSdm36E9WlIjp6pXAjM4lvVu4C822nqrh5B3TZik13BE
A16TY0RfN8mtsK4W0Xl5u459y7OLok7CZfpdf0rXmVpXZfHLiQvx6HbP0CBNrgDb2RiBhDLV7NfG
YGBoSijarCCYhXP65ddTzUXrBYyAeYU4JctxVk9xMy9XLNeOeONwSobGgTokkIggo0bDDaALEwJu
sn+emL62bXLjnVaX/mWLcqFhE7dPTT87YO/wHQ3DZ7eRHKJlwno7iF/YzaQ7bVw9ZAz2btFMfLy9
cmxBIzCx7CUYFi6FjV3+xMj1fYURF9lOHwTTlsho5x0SjF338ISWF9ik+3f6Dntk8ayTGVlpAkP+
RqxBLJnkR6+U8fUx7qTYzl2dktEhQsTlN6zShCrWPgX0t5oLUgEeQBcz7dSAfK3L8MgERHmbL0kL
Xa81y7uLBUVEv6F5i4e+V//4u3uY0gLHL5gg8Re0GlDjyNk6dkXVp58jpZj19r+1QMyn8QszB0TJ
tXfR3pWhWqjS7Hw8wtapIEcHiqsVrPwo729QRCi8eIEZ1Rvg0rm9ht6PCepYCHO/xX68V2oREXJp
k8md2lhWOTcmaupiN7d03LPXjkvYGXFR29kpYO2F2xJkyeQX479LDHyxn/7dJSDH13cVVucGbmcg
OIFSNqNIgb5TdUoZBJyjMikyN0ctsguu+wTon/cHUlpamxiFtxk7R0xya+Q5JxkJ3GNYjX73Eon6
YDjx/kHMsu6fIAG1aVG2v+CswxZwqOn1m54opgxtuHblEJZTEHyEPwy8DGwWe09II068G66gbuky
ZblN1wRDbKilJw6aUu3NgDqvNKzd9gTLyBhe29ks5ELHIvhdWKQxG1L5hsCEw5aFvkNWtU5CB9pE
l73+dUCucxm1TtIrWOGGUBEfaUrJ7kHoSZ0vXOlyYjIL5tfsUyedNSBDrTxaeW95Wnxu6nxdpToR
sErD9glaWUr7os+uGSRZCbUBPBbpYJp25p3P3iweXWEJFz/qCpGfo2jcuYkMixFlMRLn4eeUX7hO
r/0hWJnoAdhM8Hwg9moeOOHIgAi+bPSK7zgn6ciGOiN151WYEwOZEawGHMsmsNlP4fPH0RgnH+y7
CHIMRnp/th2n7I2uICqIHORwdgBvDVaoO41UpyksdmMjGExae5tpSHmwRq6/BiRkAPA3rUa9SGEg
d1PhUXHfFOWpL1LvhHdRAoK7mSBueKsnjZ0drW/RiZOq7RIji0ene+/i0XPMzj3REHAyitHLyyv5
JuYSR76bpJNsrP10Lux96niMIPclfeD8MEX4wn9EFSdzsczMJ/IK7SAptocdC4XcrR8mtvSbcXpv
5KmudmfwlGj/q6tqKhwC7KX3sWpdLXTnUDQ0cC5qzq00PnEw6vKj5i1UfwdfWHDjGTszVjzPm+DV
rHVDffCieuywpV5ifQ4QtI2evu7HkcCFtTaDzJ/DfJFvCnOF0E8mhw8cQy7hU0NJ+IIB3ZUroxU4
UVznnyFe4eq3C32VEsdKHEyGj4hyJVnEUmcwHWLx6aGgE+aDXCACmxOolDsYJ/gdkGvga5M3YrQf
2AMh8MszMKcilewRWAdKusC87cJ0259otxgw29BF7pxCpDRWUidZkbz0QcCQmZYWZsDgp9eHgwoK
BzssniX3WTFc21OMpR2MypR1RSKZkNQdkWc6/0Tu0abRX21J/o4gB+6wsaH+DrnsJVMdzsu4M9gp
Ylpww31rIIsP3qfqHSq2491r2FOhhbttKwO6XSxVlFV6Q0gIAdKc64dOyPkyQv2f0TDt6ScCshDx
pjewZ+d06IU8IL25hgjYwlOETU2NTV7FXWHxkWnCxbRDtM+6W+IB1OKI9XLb6cvaTyP55ck9GEb+
5TUlOgzLom1TipQno2EJtIq2UdGU0vf4cblYVeVJ6FsvE6SXJhxXyRfvXVn9a0XlnDq3+/4jRhLy
GEW19A4O+r6Osu+Ld2jf1ycdn6vu9BlgJ1h/G8+lGv4g6lJYLwrzBXJK4iHQAkB7FohRGnESWoIC
joElxjHiidRhaBUr6RwRSObjpyUY3tqizF7QH143y2bvrWtpHOmI3QkDHz9AMh/bE/btTdUJ+MNc
qmz4VQFSoBvqdZ7kfz1FDY3aMlPdlKtg7X+Pmohm93UrCMFjEYH2bRPF8ev8cXowLYzUjG245LSm
lh6Uo4zOhfpPfu5xBZR1wGfkzzb6hizvuVreejqfevGLcGQoJzyLHEmTy0tzu2vr6ngFAVlqxzNX
UsT8wqZnfhglhXEeqVzv2nZxjChGZFjjK2zag08iuM36sW1NihfcsR5YOOQIUMYRtmNi2UOlRDYc
dzYs4Nuw6Dq8aLteddwLDyXk7hfKxDSMdSQovujTdWBuP3WuPN97o900FAlroGMSJgO/qx0GPgLh
TjKBA6jC7UqJID90cFE2bqOx+zGaIvfmC5JBAWzOtHbi9WSpCsoUpkrenAtoxTqQkD0CzoYww4KG
AIaYZQuRUFsvt9ZRMr28dr6TwTIhLlkHLa9DJvC4JCykj2/kMaQjN63dRmrhWR/bgiKEmvmGTQVZ
zP+5JE4NDN6J1ndIx9CSO4a/XCqlM8Hoje1+4mGzvn0QgCxGeaUC7+xlCXGeL5dVzx/cX7rZhNTZ
shNbjJk/2mTTXWuEEkhbTHChnaA/tR4eRyTBQZte0rv1TtCcfNWYjCQz4jDp/HvPqg8Yz7kui7v6
RYUOb3+mGFEIDGD4J5pL1uvgbWhBkPBdZ0kRjixyCkcdytczC9hlw0Pm9rsQMkgaxERB4txlk/Kj
XiQpsnhx4wnySwAYpJsunB/HoIlUhmIGhe3DqvvncM66HRHsbzzPMP+41rynzJeJRQQGTQdPZKqf
aY0AMf8897lZy2uWy7K260kWAcMXatYifJZLNAIYRrAlw7mFm9etCgUvn9s0GKi8CCuCurmH28tW
8kkh4cygJ/NzbLKXqcZ4005OHS0wBGwj9ECUI4j1tQJYWfeuCbTagwk5BQ5COsxrgAZo65dszFvr
YdR1EY46FltcZXqwG0f9ck5pw2LZq38UEtj1yP35mKCm2vqO8smt+dNFjXKwFfL6rB+V3su/lsxx
u+012k99872YC/DZhF3y+U4O1AtNZfCjm8DhjG9Rg5d1Rn9CZ/BywGaP+pL11Bi79scn9vqbpUf0
+/XUM1Uh/YSIqncdju7SYBjSng+gzEJjpMvs/Wx7np7kUSiRt9iT33VRIVtZHXIAm+LAJaNU3cnX
W6ZDquWXQ4t2hWsRO6S1s+8ZnTTKKLLQn6pMNnpuYdpNdGlRNFKJhSUNpX3d/7NVvqX3twX9ZmUd
72DpuShThUIjTj2C6wqJLbr3S9A5vtZUUuEhvzS9iYDN5bUpXpLvqLMi7ueXKnZSpgnsb13UKoBx
5w0+SbW+uM8VnCWmR59wixLevthCfKkM9+L6XoHalBlSpUTwEBibbX/pgjoozjeKaBuUD57jT3ll
Hw9ApzwrvDwgEWhNqCYRTM8LVvdUOddav6/WemCZoq1NROxxECUSbpK3RSnoZ0sSZ7ruPq812J5d
g2i99HM+iNOCTtD7gpHq3hJ8d6ksOw3MKGi3GE7eoka3g1b4kFqqdKUU74bRPUx8CmP6E1zF2Cgu
NIonoBI4h+rK3SYfL6Ii2uj8jN4cW7IYV17jhZDPn/K4DQivjDgBa5nl6ew+04SCDVY3fKAghEhL
yykFDFt6giZ6i/0xQAMUNjgySubbTbzm/7beuITWZEYZRWP7tKrOecXVP9EMlOGytjao+9e/O86P
0bRYPTzOXTDtYeCOaZMNdPy7p6Yyuzs4LBp5dQpkqNZDRdWc9lK/EmW+9aGi716HjJhJ+S4f+lY3
h/2TZyuAl4SjXSHwvRxV+2nkcjp3D/4IC0G/1uU1HRs/LOt7KzIqYydSYR5URlC+Qsa7htfVTg1W
Pv3nrNHpg1XyQ+06IJHwANsw9rlQgLtiemZpbrbXmfhRLFkXLYzmzuY8QbySmGmFI9Il/veeUaY2
EIrsHRLI89fX8XAKZMIKQMJ+dS7WrqQ+O6ywoq1+Fu60z9z83xO53KXvN536GzF2Wn6jvo1Qr8E/
yMo4+QfGK/k1EmQwTaxOUjZIMBeFkQnmAf7ex4eDjbgRExbEnWNIp/9sA+3yWBei0yOa0Qoz0ewj
KuFROkzRmGVGnfRU7J/UVIuojZPKV2DIc9pLzNmJp5U7rXvzCAVLKGXDiGdc/kpluHvRqKWIP/PH
sXthjmd5zz86WgsZPqltwKhUmS624WaI7x+VKGPFsdG7cwaCITBeyKkdZSeRInHOre2a3BMcTFE3
G8O3LPnSHB8/iNQlks+PbAMcRV2H8qeXq+g0eVMavkWjPEQXJIGZV2ZU5flmaAgA8ezbsfKJfeKJ
vyYA7qMwF1PavDElC4XBzWLtFkxw7diSzN3ZGlBYIhubw6V3cocsoTZ81l0Cudnl6YYfQPKWuzKz
ec57pNZhV7wvYE3pkJVHW+SrS8TYJCJgR4xlGZtkNQvVi+ozQPcZ4vM58rBYiarERqOkFoM2/C7n
jcdHHGZwZaKtNLtT+J7js4fG0bouSJW7VTS90ikzuforTuOCiJBhkpX+gyTw77Qama14PQc44oQl
MNoisEEojI655qu2hJYfvvjW9zgHJh84LIa5wQRTRxnlF2cy5FmV4HzJeV/SHh14w8iZQhgp94gC
H6zG6N/h2jNQavzyRVlUqbTPpem6QKPdhpDPoGURTwYdZsupyts+Buuoby09O2dVTUz/Z30r8yQ0
7aPTpktMEhGv506zbRoGYT60pUv6pBnsaAIa7VzUvbK2YUsMF5COSWZYdKJyE+usDXn/TsXmncH7
t4tT6cUKI97rCzCFiTSbQBhzRiPVIiVmm7VeOGQC7hn0xzHzZMRQCSkkSSRGVDI7TnjeWB5Ghe9C
M5YqfsyLA9HjTZb70hlVc4xrBUSu0KBh5j06j0p+VxjRFRGphmy2xCNX1/XeYaaknCbXFI6X65Zt
lzbADtUcYJzVJtUmNpZNuXjwMxLv537F/V06HZ6RTkLlPYvblIPX7p6KzJehoScSPRLFQMOb/nTd
d6dIH9Pj/nmONyYnAnwhfHZUIZyvV9FYnmv9TTNby7sN3wQy+evpzhr5Aj+HPKjy7fngboHIYPsz
lQmQ/DOPf2CKx25dhVkiL6I4j2YWd7KT6j7kPV0lJ82oeuysIUqhzYgVv7lG5WK7PburxAQ3yDMH
WHctuhbPNUgs/JfFjA5GAdzVj/qAVuiw5hqduGvUFXiTHyqoFYEh1CCZ3MU22w6X9J1ZZwIZiV2I
EuAfwyzITqvz/6xBc0m+gbD+yjidaHLOh1vp71Rlg8Vdj5s63A0+ih60NC13tdnDQm8Fn1YTji4v
t66YiWNM9nqjxIELhaqtxmkV2X8yW9QaRPXh63XaS4HUPbQeDJ/HMsSuxYJQwcnyKi/b+72mZxN3
MpzZM6qudDoyg3sQb5rmmARhQG+UojJY4BDW8RjQf0AlaB9y8ZgD+UCmoHJjPt+jIPKYoQKZGWA1
t7BZkIqlHWHLaY0iRS6W/zBg1xBe1GjOtFGifN8b6kEBj1W+Vgz6zW3Rn8DjfXJmcHqhT5m4pHAT
Hii0jHIBkiQoe9z8ba1pTbM+vC/vN+QpQJ+fhLVZ6LiD5DJ5Y2CmWBo5XED8j3d7pLmkXVsAPLRu
5XN3beQwVsgX6tPoOf8phsOZi37KQlfadG0/5sx15Z5zC36iR2dZ4oCs0ezvaVNk/tF2gLE3OMeu
YtbAriQ8K8ZI8KO3JYGQ5bjjUl8ehf4PRF5nketw6arQ9Uwh7iu3REt78ZTSseA+ZitBLcdm5q3i
EkBzw+RUrN4cxgkklkC97FOvW3LnleXvch+JnWAsBFutmNIIJUR6q9otifMjLkNzvOODjkk3ddJY
F6pB+/EMBXgMVLzqj4oWb5c1j/1+BcWgkjY91t8TQ3zhm36HNcyILGAL9gp1NUIWdut4YkN0hKke
I9osnI2FHNP5lPFgKDb5aPTPR4Oux5LY1PmFii7W4DAXnD2UlJ2gUNI3356YHtkfn8YhE2S3EBPZ
4e6F+sWRzBL8mDCoynIlkrT9ftT6gN1XZO7cPbsa3C5PotBCJNokWdbBVm/mhs2jvVINHIymF65P
M0+bWI/AcASoKnkaOK5K014nq7EkjV4giHWmgfHtUsSLyE7vhP8oAbNTaCulDwVKxMATqseea3dq
ayh1UnpR5aashbSwyWeSYji7CXHc0FncqWsb1/qBdL1Zho81r6oFRM0H73QtULpOArLvEv0D4q/t
pS9UfTzKS2NuEbSEG+Rpv+vIW1oCPUR0MW7tkjuMzPho4PI+I5PeusT+VIDp2Ic3liuCwpQNP8ed
qqn9qroLMAtvV3gsShZMQzC9mDGofMSRHWF4HKq1yEl7q0zYjnfGP3aS7+PFW8vaEZvaEe1/fcZC
0/bFyV+/JdLZeExfCRUfk/PFl64WDcsda7ZV1MIPO4dBDV8QQ5fV+WbNx1lIIsopBeejEfIjBme1
TYG7k87lzaOQJ4iNr3CFJGGgJ7afjN27cfXJzeEltGAaZEenZhHp9Fu5ByWkh3xPeBouY+KRj7Le
+Z5yN8SsYlvHS5CxYWekN3SbfNsBc5h3RG+nCl+9yaqhNrOxpw5yPb5qQ0LHdKz8Lxo98oAhHdUK
/J6VPD1yeAS0NrXiBaIdQG5s39BIuGMrFnCyVLziGcgd2cYOEX9Tb6pJptxXsiDyV6QTlDrY7z3r
amiZ8yO6XjeGxynKUrXwICLHEufywZEnrFM39UDkEHGzBXbKv7qNmg7qZNo4poa40M6V1X325ddS
Eq3X69nxa0LztIHgQZ0k5MySIXNWZQtPKqkHLdEfP3V1PV6XchsYBL88aXP12toLiSaOWxqPNCJE
+zhG5oFCT4D64MCBqL2VXQ3Gb3KQcOUe4KuModxH1GZXJT1T/LtSZo3BwwDG4YHBofpOUuddbl3q
+Nu9xlxQJlIZG7CWgad4496yJxXLdiMwNkR+XlpUAWc95Y3OFbMyumx3CimV4/hxNyu2d/7daFpl
7hr6lvgVixQEfFI2dEWxcsdZTIARvKlS9GHPLeVfFgADJGL7bfCFMSwgbRH5Pvgq2aQJatsu4wtp
sRTYi4DabjY/1j/z5LY/XqR+Z+i6CgdCn6ErZwmzM45eZp4uYCjOhxZxQQzGZzBVpgwFfcF/i1re
pK0J1kpVtuSdJdTindBOoc+HzU72FhygJQ7YwBzBd+ennPkl+PZyZixayveWBYqJ45ksSOo1yzaj
f1y3g3L7QcdcrW2aqc1jZe2nHSUPys9V8ybMCEbL5jQYWeCS4IYhSZ+rAPCFVbAJrVBkmP1E7Lfl
4PX6OXkgKY/zUdJqnj1tGgolItUd5sl90Df+Qzt5BY4MUat+fwGHhQ1jr531bFXpKmVqx91ltdcA
AQHaJ+AKRmOusaG1GnfPPIgG3IOeM1nF/3ohedh8VarbaEIinacrMiUx6cUozvRka1DELYqIaCxc
danVa5y4dLdDjYfC++7dRdTUN27q+uTAK7lLuEmuQnQwA2kHclo4+9cKdvGPf11+31xbXJH5BwW4
mleE+PtAN/ulXO69YFDPQQraMkSK8D1NMjTXBGmyE4qnU1IcbRKbyKPKRtNyPh5DM/eRSbtdtEbL
nK0JjJAY9b2LIexDS6j2JHjdOufcq18Lm3zJAt6s2oeJ8c5HYxGSPvbPYv/uO4J8sJciC+zP5FbH
JETpmgzQ8Nwh43YlY3RDF4sUjnL+YMuRmYD1MqDuQN1hpooALP8fvUT3k80fcdtYpViu2rnrw6TM
65iT1ogpyHsDzQuAny92qcvft21Dippt7tYNiQ+dy/g8+o6+NrHZl8BS4JLqX0XuJY5jTbFBQNj+
eU0N24mZBQ2D2/iOQQWJEkOg42PumgSfy+GQhgjUi9m/gedR+QzZsQhT/4PahlDtKUe02K4adxfB
/QrRvxLjc6t28LOn4IOg8WAfALrcd0isq8JdXPYPb7xCL7Pn4054eMhfdKgz5a6lyN7C1hcCCE/N
n/C0eW3Qhnw/gbpGZY08bpiIJx5CIb6H43wo3jlhnCeTFSomFR4JIp1fQ+/24HnUdwayAbyHHB6p
8TYXPfkQY6GS8mVjkBF55GLThNxQyw/fGb6g0H6K3/LHJIgnE+d9/tNdi0x4ZrhZwvr/bBnkq91X
q0msBkKLw3VTzmUSoyWZSCfCifwem3XC/96QqxOSD8do9TTPl5LtlHMlodApi+M2IkSXL0Zv90L8
cnJagHaKCLGhQs13eyCah+jYvfEobhVUUIG+W7k1/WWe2GGr/ePBHS8y5YP6wkkcwlyL9ZyfdTWR
+2LdyFt1GsYppDGoFqA9OdQJuXD+sWXX2kX0OC4EQnRXjyEmULzcJpyZBtXWTwjT1MOJQsp8lONu
kW0enJiMSJrxSLVe3Vl6jX4H8UPO2AESjfvfvd5BcEWCRtAyOmw5KI+o5rF9/gkdReRX5C6wvRiB
oPc4zjK1lIdHHzhm2He0FsMuAI4BAx0yTMUu3C29n3tJbEOGZznAEEMyaVqdi2ZSqCpzdFmQx7uI
yMACOGh0tyY52g7eyfcKsy2e3c5KxL11uGMqFChzbIOWuT84ho6HcD5V0aJ17XAuuMfL19+mBwnI
EycYJtQBCtH/bvGMke9jzGyQmHlfcp2uCUhukDf4TBGHrBllrl3jDU0IQJFuxqdLmIDtRwBqsxZ9
LaWPo7CtKe52w1it8XSlzHpvirg1soRP3brvhrEc6+CRcD56guisQq6fPblmyy4n8gssDAdiEQkd
lVyTIUa3mD4FeHwypsgBzY2n4dcX+5o14LB8E8SbcgU6A0jrFRT9goX5Vp4V/mNRCa0hNI7wcgl6
Cm6735YjYci1B+FoefTi9qvOkfMCCoppM0F5t3kbRqtQc1XDNaec6C04WJTq6Tkql2SWNC07IR+X
GpCVORDckErJ8Zps4chWCikgQKlNoNZU+heHuLJFraspyN7oETsfqTZeJ5M03R++RF5na1YUDTY+
SpLdU30fYTtWHlOPHYFY9oCbOFzFGJOcmA7sB/ay6KqwouVZJMbj49Y/ahKLZctF9ot89TFfFG5w
YEjLJEPeEUs7dPfe1gSnLkM31SGptNaTN1dMucRko+/espAD4jRo10+PHOrrOjB+p0tLlKzsgL6M
gSm4F+sOzhpouJnhbSJPycNJoGBy1ixAZ2yarscWTZAl9UeHiQxA1l4ZbOE6WX3To/FTHLIHmzrI
RpfNZ2rw1Bhiv7ht+f45I4qeEgYNWUrVGfoDMc/93Y+MEbTTMqEHoddowLSoUs9UQBt27xcTMkFT
sxmoUAPTWO6YLDoK5Q/QmcgVw0ibL5OrXYlXgAqO8+CiSneVRgZSq7M1iRjrV1fvwR0cP813Br5q
cCEMy76rvs/YjZzrKiqbdVSBTg7w0aVokGdXY8EH+4XDZ8qaI2fyR/YJHB9ONklfBVmlXi66x8fu
ZdeG86+BvMIMxaXdKttwZrrNUxXdfPJwTIWn89bvChfNKp/pHmLcssY2dQf0QUdZJ5APtECmSN6x
11/9j48HMFlxwZKUF8D122/gmsJERV2pjq39MZlYDeck5McN5FTxG5UuaXosLatej5OoPF2IYbtJ
DJeVjGH+uzcc0N9HizrEBlUGX0bTFgNeXrQjkVr/FC/oQM4A7WmkzhFE1WhppmUk1hovRcQjH/m8
tdpgXoKyZCNSVWieJntEW+OdnViKt0FggM/JpBEGYESSgbsRvdJ40oDgAY2vITLJNCopgF5pVrqy
c1LcJqImDH1lOX2uExM0lNNHeoorWSU5AbDeyQaV+m6jGjAkAv9bpz1PUx9sgirOE+JWG9RU9kxK
zcyi9fRf7txmGHF9j4Qvxrt5qv6113VZQ+8m5suNpv6nV58XUBXYcvj4KXw1dpgWsyaEheTwOaYZ
r93NsTEhjHR/15VdLAv7pdNsInu33Uj7Nwq+xB9Zin6VVAsS8EsJ9SV3vsBiGvkJmWoCsOw4lrtO
/K2ZeB+DUMc+1nUnc/Ply/i66TZuDq9SeobFpamEuxkyV3ZBdf5kTRj6lBi6lZT/icH8Pt8lNuNW
yaEe2zHvE9aBZMpGW63bSeWCc1XmaF7PVgHJA9ymuTPls5J3TJIP1Y2w7JwjSj7ODzCjalKXe72T
V3TqhWq3EqTKjnkVo/YDiZVdYriXXv2ck7H2kN60Q2KYsooNxojZmSJFAJQwyYZqxt7MvuXGyiO+
Uelnqqctap9LMcE6rtd1mYNX5Fw0tmThKeuT64MThAMLdyXBEFoBPFiLt5jv5pIpSx5/rdLGzhPM
zdUAh15iHL+rRBkBoIiihXeP9UMUo40zJvKQcTesGIF+JZHMKYdWjoVU5JvmTX40I133DmVp9IIc
bp4gzDEuzDwLmg+SZDOTvjM0a9ptKIbbReyG1pLActk2uuVT5GAZfoxxXxUj52qTkNiApXlNx8kj
9wV/9/D8M2x/PhG0XqD2uvKMRMcfCkHN8sHDBjKVBg/HNcC+jATN1c6llzYwZrIvbW15NVVTqDhg
j0m1rZxTJAKO1FkF9AQlkgBY78BfJ8r67YspQKnUE60p/jRTF8DxydaV930R5ar0Vq/avGFwue4W
T5QJoEWbxOw4CMbpw/nHXSeNvmt14M7P8cdBWXtN2kJeW9d4lPGzvjhS9g3HwkuqjR6PwZySn3O5
DO1m2+sZRTON4f9Rwlxv5q5MBjxPYywVAmR3aFTx//HhtVe+Uz2mWajphFQjCmDvia6D4rSGk95E
dbAXfqB8KqxmVzvcJF7tS4eATeK+dHGY7yT8/RK4eNfK+jZKHxBKlMz2quRa5Qdmjl6T2LhwPMsj
zgMNGJAnuirNxWqboeTQhtiyz8KuQjm1DYuDJFq2bW8L8GC6uouJNpWhGqqSbqN4MZNfTvxntbJ8
zUr//mpZd2mrMj6TOgiMPWtdP0afGntyMbIm5Sg+e3jLaPgHlWtTKYE8z7Ty2MFNstgjpv32FLxg
5c+CfSseEqNRUTuRpI6glJi/EeREhRmee+kqNjkYQkNFt3xoHXfAR0q4djNoVTyTvFDDR/vOP6R2
yMhZuEitiQSmS0LSycmXSzhPb1UsQmFpv6RQLQBursZmbEp0EcSJsLFnfyeiAycFBBjNLv6/yV0d
brUhYDz1cp/oCJV0rHQX1ykyX6MUs9q/RBeYp+VmIDih9pdCVkn2qN2/y5csm4eqRdmiZ7ot+AJh
SOe7TJI6yR6ZaGd6deOYlISHH3YU3NwejV9EJC6dbEBo4nN4i5MCuKQF4qofcmwFnF7SQ3T73HHV
/ml/Pi0nBZJeIgmvGo+VKqWssXJNZX6u3JWliZzu77bwilk9LvBUE8f4hZ4zVtvIApeAEtY0q9oS
fI3BWfvHtpGbMfs643lEgD/t5aqszSsi5anEmCEg7VClOFFEBGcnZLts0RgSqOxILy4+b+lNpwHh
bjl81deEy4TtfcWVhM6DzFGdd16sN4kJOoSF+xrJv/ePiBXuINCjIO/cN4rUbjACT0VCCpP6aeSu
8Ja/A0s+t6dx7fqcilUfeTetqr4sFmYWz209L7J+z6gRfI0D+CqlCELAPsDfvEA7sBU7NcNF6PrV
4LIEbnaggtAvFMRCLdiw/2zgh9FUKSBIh2K/Jqd7YTs+ZaJPJXe3thJMkARlqfnTttpphe4Je6sq
lPG82VoM+OW04qNEC4sXBgjeuWst9Q8lKeu0+fsrae2OB1eNunSkWP3CbGoU1xlFE5xUHqqEh3XN
EEWdqZrl2DoCczmnOMvpdriEjaCGwgaehg54vuIRlEbZj2c/u0o448OIO4vkSq0OzCz+L+chbNrF
8LHCIPBbDmNVn2TrX08EfLscHUQwNePGdpoq8r++sp56fc+VSr4PJF3ZXddt7aAL9MFIiluI8hIg
w+Tqp2+4tZUjNqGDjWsBNNM16ZuDn+N/LJIeB4qJ5i1bszhwhZcoPHNuMfK+EamZVrHiq1eKPm9b
KWH2hdqiKmQLvCYrS98zR/e4vi8g9CEHN712kPCq0PBWAOuQqC0jFsnWtXKBHK2SgRBbFkkg7KYQ
C+zA86XAKBXyatrPmNzJ0aVqtV19NOROX+4dVDLZz5Bjo4p0IkgT/iTy/0cKNGAflLWNNEvaT7xO
8RilnoBOXm08qnf3CUXV1Q1TfP7shxXGMNk9bFkXSBnqQtwSO/rqy3sHfWOJdFahjA9rAsisr6ul
IqDuymGALgsFCzLGkASAxrwDP3O3R7ZFOOjcY7rUNhmKBXvR7iG8rzAs3BSHQIoLH1Do56Sxlp0S
aAiOpLQjpsel7A/xO5MRlcefe6Vo23f5R0VZp9QJYUFiccLTG6XrGoJA8UYCewgMFS7ekhFny+L5
KZXNyNbc3POL9QJxdMHKENgRJWqFxPjBa3F3U9OFvyvTM9TFS4ByvZzRSeL6OTceCZOQLmMoPDwh
XyCpxJK0Y89d8+31aqdqnVsaasy0Z0lemj0+Hutg78BBzS5aT92vg+4iiGF07vrmVrM9VYhyetpv
sQ8e2QCDoHODBOTLRTAwj8Uo7VBkXSZGF+8ag091h5Qib8emXijIte9mXWGXZpKJnsnZmo7vCctM
5HcL2PW97v2M7ebmR31IkoCi/GvlwOV7SLKSL7vvXWbYQuNLaf6DKHGVlFAHahmLid27805b9fZl
AW3JX7Ceh2mQwiK2Hzvq7MjeryApb+6Yzx2B7PRWDTF227Vuw6zxstL+SdSAyRxYmxHTG8IqRZBO
wsZ3mWOhroIWmS2nXT8Ol4hWsxJ9q88jmkI1cFG00C1CtOtMvUHGL7Ems7EZ3aUpXI+RtFvhzEvl
gxmZXILXyDTmYMQYiGWuit/b38R+YTMpOf6Oa0w9WMBDTmP6BglAR5tbnjk5lxTCARgEKPJ6ndfN
QXOuwxis6wwmJEhqzGotOdJe1dF9OvqN3bE/eEXReLzaln0hDnqVzNIP3r+GbW6ZBPYLTHnLyAs+
PTD5aT5qy7auZaSDU6kgnomblUHoRWvPPNh7ljTx5x1itTlQnrjuPBFY9UKvtkmmI3bIrZdnWVPT
eMLOBhYYLXPYG150WH1XXlkyx7c2vbVhnKBx0T1/RE2Mcgbm4dNj8AxubUs7rNIKjtixJA6aLZ5I
GeMJ+dy2EeH7m073Kry788TpnP3F/EWPU9xwVbchVt+VHxa90ZWZTWQ5mdDpkOOrWiGk8GFoeTcy
UX6GyPwpZVZjgMffJw7qkNSAa9u8USN7zsi5N+llhzoF4K2IH+v37RRReakznxYFKelzTX7esW3O
P+RSh8d5y6O1c/J76EvdXMK99IzQJX0afxDF5BKAgMexs7J9xF3kg1JFQuGsta2MU5SDsX6BtA8J
sdJoVuJP/iC92Uhe5m8wnol4ENBs3b9Qyb4jtqRY4HGK0UjW6gdxBP1/QHBgvqAowPcQmqMAcCJm
yEefu8lwOBcoU8EB81iFCvXGV5AZn+ox7RCBoK9i2dVTOeA5OAlV/OS0OVraezdFhkCvtKS6L0SK
+1qxeeRuWezJLhXlnct0A+CGMG7Xo+8rS67+Pg2lG3mQPMseU9kIrT0nufmEDoaz+NVNfpoxjKPf
qYd+xTcLfrxFynC6QDlgWisyYWpQHk3k/pJl+P1PgqICLMw2CecRzAvVP0J64rnnhecaPQdpzARx
7KrpqLrrbAzktrvbfVr7qCCvcVNF9FxwOQNR7UbvHRLOclqaY9+wGvsi3UQ5u5j1CHplrBFpyauY
d7T5Ulg9s7T7JtVBemqBKnqjAZoxzOt/+eM6yXdD8aMR4v2Oxg7OtkOLGJ8BZFtW1nVuG6/Egvil
Fv9jD5DdIDUrf9ChFIUTTln/G4L0Eul+PIlL06nl7aaXf8WkH1FQLy2CD2P1Qvj3O5c3l3l80yTB
oQSBmOB09yqwzgs1/KYdb4alPCy9adays1KRvIzef+35LkqCPqlCsSf1H2mkB4gCdl+KgJU46ndL
YOT+VRosgfivA0aqLEM8s4hjQu8mjIt+yvB/+PjRQqYvYb9ceyRKlvlpxCFYApJfxOZW58hyDSD9
E1G+SEVH//tgHABzXfyznWou1qcPsguyrEiF5vRkDotD48Klpl7ANnILQgJxZ7V605XvMutE5vJG
3ZaA/m5mqQZfPAy5B//RURP8ECMWYW0yUJz7s6+JRjG7D0DB/+Z2IaDI7Q42/uFoH2enE2UCEjiZ
GxCX0W5DXBkqY0wwsDc4cG0AEvKZffIswEdfPd90T85rRFNmMFFbC2yD6imoP0cADvf+jO+OI1kM
e4yCr/tA57ZJLn/zfSPW6Q7ITmJMS/lOg+ZPqvvnQOEUvHK0dpH2NZGajbn1qtIkAn6XOJwLf/W5
qrfxRUzEzPpkuKncGnE6Mp4RxMyMHxAYn2LrQCbeOcMTtYzwGFbDhckiU8XEIWoQY608SqNLms/o
Qb7SmrFoRjT+gQdRnihF+EpPTbyRROpLANFPiokhB55Ys7gu/rytuxIxxErAgUllbmMlhWO0pZXP
nvnoo+rUnvz28RxEQBRTy6vgNdNuU1CMfcVyj9Odwzww/pnT/8+Olr1WXO6UGE0NNKHuhoxUHdh0
5Mw6sw5DZA01tnoFmpGA7LHdKu0nY9aVCe8jN7WOtnSTFhzY9Vp4PGT6lHLQaDFDYiSHwFHzWNku
Zhnba3x3kOc4oGxIvLV5vzF2gcSnn4xRfH3m1klMYD+XCytAuPQdVVxokvXF3RU19MYIk2r1TcM4
j2qPuij39I91bedx4ZQOgO+wxttD2YSGMERXi4kS4SEUZEY9BruPxK9WHWI21K6D1fKeYhyM5NSB
rb2Z3awrUrIgsmL5vuG48tTPxtjLlUkepXlEgUa733rWs5TgI38+5GBfix0Fk6ha+T/ZZoD1ZPxm
7IdA9EgeO4vl7rxVKnlp7Twi+lU9V1SMyxPQscUuMjSFRkrXsc7fkAtzTbDf/6MK3CfASjO2qGPG
wyjXuz5X9u+DY4sx4MGx/n03OiDzIOWxD18ecBBqELXnULMwmfRhlraNh9CbZb6It8nIPMCvILtq
9TotoAEXDjFoeloyZyCbJzziKgbun2NqpiNCB7OR3mYJEHFZYkSrGc8KhrD0s6Qp74RBcSR++78z
tFfx9lAGF7D4AgfjOXP/wYi5OPjCXyamFAA8vbNSs4ks+1o2N3Xp1GJnLsfUi0eu+A3GbExsKZ6c
Ut7vymbJEo3gkufwohb0NZl7uxFvaHvtrt6lkFB1Y/1sP5mBfXbPHiG5RW0+/j4mWTECV9B9MPXV
yIYE403DN5Li3HY5E9w2cMzXZGMNLfSsPZ9KQt35IDGAZqAlX5mtPPBg0hHSfF2qp7ZezjgYXDHS
gouaHVgK4L+Md5tY4Emh3lXnY9IboDNZS9yLgIwSqcACvkWa05yH635YejXIT65LU4JhoY4SkMqi
ixo/JQdQ1sawc+9iM0V+5ZLFYLrTEXGzo+4ogvwkIuRxZdHfP3px8nPqBTo0K4FyiEXhNsuqwf5a
bz4VyzUFhv+BKLLf9Q46sQpdKc+F3vsNpVafo5D9Lp0Y//scxju/gbHAIcQQWqfLW4IdKhptZm6D
GmT/4e/ln0g4aMMSXhpEs3U/XeKGsCNNZQj9RZ7Jn6Y+Y1Q9u4KYchO41yKAgodn1iBHPDRJBJEE
x0BHKzeV/Oz02x25Sx3dv0CUPj98D8EZQccMPuUpEhf+FKXsgRcoEKd62JGLpm0+TZBBNYg4ybjV
5x96qtla8iDhjy7+fSckJ03U5P3z7WowT1JgGmwkIZhNGAAy2CQBkvsL1JjuehoRVvvekcFi3rT9
L4hFlEifkm5U4QKFBoo3nfJTtf2BXHRt/9Ep8UHaoV2knEQfwVi8xM9qeWtxGfez/ZoL83JzoKX3
Z6YGWWC8I0fP3+LvoQVojBKYYGx4Ckva4bD9fvawtvGHsQffnPENTfALks7DLronrTI9kUDZ+D2p
ZzuFqc10SPcROsQCl1JxNVs154+PnTZ8BZMIVPV8t6lUqxRDHyn04wdKuOdEmbzNqzKhDW1CkUcq
8nzsXrQWHjDcO/9k9aBrXqfGPWIXUfDL5sOjzGA43Hbyc4TrBYcyCHnBptXvExi48Q13Oa4O7cKq
2hgnC7Oie5Gc98/ieStTNrHFRxOyEm5l2I6yWyLkwoTNLULACFHkCpI+j3LVxS2tB47adY+/NiuY
sVJmj1shfV9OOZd1ielmZiqO+3q3RDLMAFPfZYptGQ8WTZXYFgzqengZvsTT1hG8RasQiQ3v7X76
spWtuhU424x+TIVXgVXj46b58iuuzrmPKQ9VhJvy8OwHEPPU3acRnI7SlrSVgJOJmZIYrzOQf+nf
h9UVPp+rFOq9INaFnxtgtPOBy+kZqFmv/CfbSfqi6y6FYCuZXhRdD2Ga/EnPLmMMGMjUFoIFPYjO
uzAwv2xpTxNYJmzQgJkAhhCs/fVBTB1r2U7o6KVu728KpB6+V4QrfS2Psx+abycVTC2//BcDiK4R
YkAsC2LauhhD/T3p75rO7dyjguAiyzNIqNGs8QKvt7uLINDiMRF5sTRaxzRGDuoAjzyev1fY6eX9
cfb9b7a99FPF+4OiK+5Bk/5DN5huZL9S5x34Lq41bVPZErPJ0tbhHoKnuZlzwd9d1fq/bLH+jCt3
6if0j5TJO8MXq264hAgrGwUJiv2NFkSrkY69oBYe5iZpSO2FmuwguVLkwpJMNNmTcsDqnoAKlzm6
aFMPjQt5uW+5cG7VDBcBIesdK7aZ1X9xsvsMG9FIZD7Uq3G+P2jLUr5zX6F6dwZzFdug23jWINBi
VWEueIold3rJeSaK5f4xjfMpcwB5k9suO7cZop3/ztuY1aRteZ2mgexmXuiy1zBthXZQK0W4gZzt
gVNJr0bOX5MyKmCiH3usOphMt9immRW2PUNcJ3csc7GFP7rmLGql2zppcGcq6LMi+KNHXfGnMWe/
s0M8rQKy68JtnBbmlFGZVgYmkWMW5KIL8HPYhFC25Pmtz8DerhlBwRgfhCEbSNgRnafeeUJ3/7FX
vQhrOX64duHJNhUwyOoh22YV2qOD2L0YrTIPuWCzz8NctBiwmHU8UYQMVm+WERLJKrD9QFg+VroA
0+/zhE6hV3L+031FqA2iDvPhVLCWH51YeQjLaEJ2oLA5z07QZJT2fujs+WDZKlq4p4BuOZam7kYs
qoUZnaaqgJ6ej0A8KYpQ0tCICmDdndrG2mHFP98Ye6FthWit06C7KpRLNobu95XTMV/Cw2n4Litl
6ds+g0xWTgDq45OTDSORYSrryk5w60NW3bZam2PFepqi+BhBKwB4Z6/319P/UtCDHFiunJ9GhvgH
QiA59NBWgpR+33u8lGmIuepJN3W8y5Vjv2SrioDfbBJ+AyQ/t/epr7+D/yqXuqb2BktiUJsr4otT
uzefTaUG5HjBYC95d/lIR6ugcfj58yh6hfKJMnI8ryEnZHhHmBZlmCe2bz9klJQ0WTlFXjOzqkml
7e2X8azTHYC82sCFSFAHOxqBNjE8VUVQ0V5ZjcT2yLO1MUDKxlUpiy19wbKYI4lOzwIQdls33kQ1
/SVpBaA8b4KotehAzgTUibUBrJ3V4pHz4k7a44JYbzuiVvLL1bWm+Q3KUBsXF9LBmiSV1ppsTSK5
Fq6DTN+c1w/dcQu95EzgQbEm439N/ggX/yPTWiJCPvpWjTl7O3z6EjNJ+0CLD8JtX3Z/hy3qII1J
5AKDAIN2SVLQkqgYd4WSe6cfpTP1qm9dN34K9qiV8VnCUjiv1jX1paGU8eplSqLVy/JQcaONHQxl
suOCXNKf6eaqjJAATjraw/RbfuZ2Pvuh0Qgo8Xv/xpPi6qvKqQLSmD4w1TprGDL2bDd4fyoAeAgn
/kwX78dl3PTvajYKb+mescsocAfr5qAqu4SzrS1e0FvI+K1MXaygzG6GM7o7yT6APnoTQJeh/MJW
FrrHLpokJmudKUZ9nTEeZH0Fqne38hfTpnSc5APQi1mm4dj5KHYPFG40dfQXStWTA87mLUq9jVBy
BNZjXtE1p6+OQ3wfQueXI2m2i2IAnZpDAWLJBj9ZW10YNmxquMp+ijj/qvSPIIwpERHYoK1tZ5SQ
WMDsBNCWKt50VGPZvmqPCdhk0j8yPz4rHUL+ioRW6yKxU2b6mMnlu20/GOfBgVtUfdnJMX57/d5g
P34y+VKbGuLBI8Q0FKsn0HUiHW/0Rd0NgPa+v6n39HEwMs3b79DaxopIWL1yPOhqpqi3TWauLI6U
/9XYA7CTmFPwiKXJJm0+wrTXqQaxWKIBLP02jGym/CXRHVhqNnAlN81X6KeedDYWUS7wL+jap0KZ
n0KMSvFB6b9zXREiKjJBR7pEhnYiu8DJkQMDCTOBiYdR5xIAtU6DQhSfYkFUV4zp4/1MPGx3TUHP
ILvY7l3Pu1m0jH50SN5/6d5pt7LCi4HQ8WyGkxHKT6SkrGKyzV51qJWNvqh66OcW+xCgqKq3GteR
N4+LSbhUJy6mtvsa2XFrJd1APBYHi95W2wwQblK2DoTs83wBvUowNvXrmpprUl09a1MrFbaUpZyv
LowyVq8qwSDSkdkdC82aFaetv63Uh72webmW4bZC0ZoUcT2aZcYnzE5RNAivZ08x4NyN5jpEWD1b
dbL1FHgjHoLYAIrbo3gyUoN921s11tKFMacP3KlycbazcW8T8qCHzaSxC/hHDCih2EJGbZcT7ogE
IPBXwdw2Uqy73lZF9Io5j/lvwBtCTXSvESwB22EQ/I+aUgKRMAXRKapcL9E03TEWy7lNmFYuTi+t
4/N1JB7GAriN11TgGqkBA434pc8TEzN3J3jdy+uUThWIHgMS6VSBsLON2CB8AvnjYyTQd/0DGpPS
1WtcWRHy4gQd9OFKN6CdbcSe8BQFCLqeT5E/3LX9KkWLjAoS3nMDMWt8GWWSgEPYb3BxFNhD9hry
XHlShNwgb1kWRBl6YWvZR0viY1L87hmB+DLs4IqjnaFDz5G2iCN0rgaDuVgNmqrzMN9zTvkq8f+t
KYtOykWlt0k5JWhswiVyk0SCe4R6zzBhukn1g6Kp3Q0czkMXE3hqqhiznGlRnQU23IclpnjqPvks
beP+HYyiGpHUil0a9sqagb//DSXclp6Jbm7OjuxMKHFNi9W+KUI2v3U/kwRFSIuu7pG9Lwu+H/lY
XrZ8l7fypxYQqumktWIjO+vNMSDU4XC/nU3d5KknI6EDbrjC/80C/ixn06mo8X7ct2ROdofGhecZ
W1ad4cddSPjMySHaxZP/pSnMHXXXNcej0gW3bcMsSyn5StPxuVNUvzc2NTLKRXZTuWVJ8WMIQWww
vJSrEx95bYk/vYZ0vWdqpXNEqr3UnUsf7B+Dri7Aiiwf/WhqdNBsM/nzPKVCpaYdSRq01qnwrVsM
6oCxs7fY+RO0RlVxUJPcff/H7KiRyGmn5o7BnlbjF6ez4cuW5KIRpbfT6OVvH4t3nLdmSLDGO/Na
5KqK+ob9ZMxBIbu9+o7dprXv7qQn4Y7XL94z4bRb5UhP6hSO+zWIWlx0kM/JFKGii82wE6LxF1eh
10kXtogT+FRyt2Ku7/82lCcTpaQaJWapqqHssLZdgcoL1mNRo7DG2FwSCaUdRkBhSafJKcYLAAAI
0NmZ5aD3CMi61UidMy/ix3TdPIXlzXLnmGfiWE+btSdfNOhxyAfZ2vaVkoi/6aYIE2KoghjgoW5K
yoJlg4PFs/TwSxuHDJYgMxjbeEzbCwJATv4eQ806+Wg9qRSZO3hdZhHu0hmmRMjb2sPHDJkgU3+A
NKYEHuLeYCGwBvwdWQsKcvpd2P6Mh0HORePM8V4J7JXs4mAeswyauNsnCwLiS2PhpFHzRVTvp9XM
+7dSoeOniBnWdBHkCVPB+jUary/X8yiygIWC5n+8VuuIaB+7Wf/iIPNi+3l0HFH4Z8ECdj0JvNuK
xHpkTqG/Kz843StTm+Axl7DccfLakjKfqeRy+6c//4HnP3vi/hOdaooKO82N0R6yad/2BiAyIgrL
mOBNtKQPVJEU4P9nVEr8J2GhNsZ8xmUT/GI9gZPLy4wEZ4aZBc+qVpqf6foGjxMvnRImbPlo9eom
3mCxspFfXUuAPTZvMsE4fcfClTc/wKph1jBeBpZPNm/fSl252b7SkMl7CixIfRF90rs4UPpRJP/3
7Nf2s4bm9jMHoMqBGBTB/W+qRVvlHWYU1bajJP9OnsetXbGHOiamqlAr7HVctqc+60obCnOClDvI
/lmDAS9IFlm7X4V2K/5oldvAMePESnD/Gj8TAbzifbRg6yLIDXs6hJUOybc3o17qoyvS8pqH08oQ
Pl/H2g/i/OO21TuuZpVBB2il17h34kpmS65YzmUHgN5hxmOJFia+LknnRqgNAx8xrPJa6R+12KJ/
hZExGfneFa+l4BnDtF5OVqkfbQZ4UeDsxC+glxcdDCol3du/T3nQiVRJL76gRx6NDATf/JIEKEjg
Nii4CohdOuX+qOWYKkYMw8dxgsAUtqJiawCKMpxArlelbYqgHrlRAmoXOgijC+HeAGeqJWDznt17
pfsKdEgtZSM0Zmntrj7u2hpwI8JazSXGz8BigtUqMC+bzGZXkSyUtjl9g57RxjRABn8uezmioKbq
EOeJYoP71APvI9AuRsHlT+gypUG20+sLqKWfUDABee1M5toNIld1IChkN4bkD9bdPzKdj/ox632b
tlMwaymXL5ETb8swmdQzd0dtnkpg94cH2X+YpJdxvWY9pLRAyl7x4MrYYDMPw6faurqqmUapCly8
wL99H4uZ0v//9rKmzlxh1O+SLn3DmSgjPsKljv/BmIvgRZKuOumh33R5vKEf1MKkYpnuY1YZWeS+
kv4puibg3wK1AGgjFkXmMd0E3Shndh8z9Vud9ZAZAjv2XtXHxwvfweOfzdFZvnGyGR3SdGw43FpG
/nbr6U/hUinpBlK+vyMP0Wk5UkTZHEKMM+ErUyy+JxvwnW7MA60q5E0lUsVgf2Fklw0Obt3ia0JO
N/rdu1N2rNS+Hr4OJrMrNII7P1R86AES/AnyV0evEvd0Xsps5cnBcU+b3fN6G/Q3MY4hgehqTAFW
YpyQ+z/eu7hqo2vV0fr2AlPLrzhCtyphlL4tYRpKbAttN53detcyMuH6jYKz4V2CMoS6Oxk3UIye
JatxPXLx2Qv4s8nFXkOvq8D3WBpjTdFPP5nwJR7eOWu7Fp7mBiwysXSXf/KTdAOUSTZf2T1EGgNR
AwzB9w2xm64sWhdT+kAKysj3krmComxmj++Kwx/tawK13DnaclPmztgYC9OdNDcYDnmcOy1AIUB0
g9yuzTEcQQlAXABKsc0drhmsv6HVrdEJTYs92OVf/TK44MQbnIB9Roid7EQcjLMAT8ZxBG56pXhN
JU9LRp7a3iDQPyDpttatahBUE+OQesqvDtCaAs8gkimnlQy/XCrUbWUCenZf+m4FB8bnPXYiPgQG
pYPF5Cx+2Gp+ub600wt7OjYfXlyVfzI6wcMN0PnvFVO379CNQSk3qQo4oAQszLZ+znlYbuf6ujH5
eDYtuoXXOs1qd2op0R4kJriLVFiY65qubzGJrS91mUwKul8aseI9ZLga/QivQuiIao9ys//5iyeY
q09taCrAOKyCmSuUW0jEA8dH0aS81BMR22Nml8+qzLLAXVgLpmKvd+GvBsnTou8qoi/j5CfT8Xqn
ePcetsuDcJovL2X+KRckSTTJa+z5L/cpUwCMWAFMB3oHyf4BeCw4hOKb/HTmRB5/nGHB8yAr7cGV
kRHqMWfSvcWahdaWK/Ka5iRY8Y41yV6mqjGazwbjtfcXqH2TMMHsPvq8FQ4OS+yBq/8Oulojgzvf
EBQ7UUNDPMOKHSOuWaydbpzbqxHIL2zM+lpbabjol33Uyda1T33YRanwg7fIHBcrGXo0S/KLPbuk
rL1NsFEjVaxydWgwXf4MDm9PBii2O8HmHUd2h0Ra4fiHABIz7fF1RvA4Uem6BtdyVMdp1DSuXyzt
YpM5zbbv36RglJFA2pLuELW69EFYBG0GgVVEmYVwqOEBpIJ2URhz0GZWqU7N/0HV7JBma1KxRQJ+
ux539ZxplzOXdTw3mz3prA0ZODIv/JSI0eRM5CB3+X7/7ROFtUT4DesSD9XMfbvrbTfZxf7qXuIr
hv6vQVaF2r178ZA2/qOytNLdOgJfa9xE361a4LNUFirsMBoUyI59aFHD6a/gXBJf14UX+R2Jq+7s
+4w2TB7Ogjza9fxDHth4P9c6GyEH+E3G1a6fmZnOYHh/c8BPp+t2E6Xh6Ru3MjEyLMe8hcCDOLsF
NKr0qxgl9fN+IXvZAz5NX93dZjAo75o+aQNzvmxbbxQJl+ybUxyCLtF9oUHZdydiQKlmMqC3CNzj
xobyOgdrJ9UxLRuo8nzTJGXRNcSPkgNeT8mOImitgixUkPDtXZ6xQvYZN4qWhSPfNrHqV24wEZpV
rfdr/GmXKTRqETlEsM4Jv5YcyYogfZZI6TuPple671mdeEYopGI2TGHNPI2SKt/yN9ZtmzCHwS5u
R43zj1vVRKinzPH8Jj/hJgVqgaGv7JpDu78TC73/MeH33IaAmwMFnqMoJLZqeQCQVJpT+KmCvj+2
yW/i6DJgom55edilmgFaIioZWFv+h1irYWoDWhFgbCKyYsrxwlXe+USaUy8Ge0jPUXAdRojJAjcs
T9+BtwYgFiU0Dwdq/6X76IIRqjdZARjdnjhJq8yUx+FhIckw8lekYSZowoWWUAPgNrnV848AUWIm
QBGF6mqsiPH9JJ1ExhVe5dqnjoDuJBForfEo9vIF9852p9oZLHCIXP6Amph0rFPb6/DJjdB+BrJd
JlB6GHXLM5nZrJA0HbGgzzxOshCkbqJvMhOJn/5eQAdWZBgStrcou5dOGc0Uo1VugpGFSonMIn/5
JMY4G+h4z7uheMomE8nbS/6UbQBx8djq+t52p20yGtgfb1s5H0dAimMKzn9xa753LNRmA7ZaxGVj
sUJS9gjjh/iXtEBV9udzlzGT3Fgra8nBFwTwxzkn2r7FhtGPcoHbNpMdEPmPSZmW7hkca6gfJMN0
lyycYo0Ou3g3Hd32nSS1R8rdS2cWgRTl/W9EVylmOxqLWRXLeDyFwnGG7BDR8WE3wT7x6x0N6AW4
gvdh5s8tdgYdI4udj6vzoP96wQ/9AjLyW1HOoTjnCdbbWlNxbdeSgKbeDsd/eLTQChdBtkgOXt65
UgfTakMNihxr169/XsBxl8MGd252wSkK+2+ssV9pjaiCnJbHAJtFidZxXJfxyMHtofzD1DUUSKHm
mqPvoW/M6ognWn7ZoQzw4wJPH/fkG5nutKY2YmpQc1IB7PVZkl8k6gXWlYG8EPIC+5zG3nBHuJOV
M18Cp0lqDwM/5rrzVyIBAqwrd9B1eTKrHMKDhPoh1+ekNuVOO3JE976haoMfaa0+XlCi4vy62iJ+
ZjtpAHE3r6xahWK10pJxFNj8iNnCegxaWrR8J8HREPVTlGH3O94YaqeO55aPP9FhVvk5Bt6zSXm+
/daYL4qBjmYtNofQitLgfV4oR6ucAVOo9r3JDzRouni9l9wuCPq9hJmaqmxrAxO5KfBGSw4gJhlK
oJrTRbR5vAOjX83ROZ9Jx3k5kD2BYJ6hrAxLLgVhns39k9ISY7Xra8dGmcfDPaQD0NWPILCUPpJn
Bl1fUXdoco6fUtLJzNB41ULH9uYxpUvfcHZGnMdKlG3mOXov8A6fFZrfymIEnWR9p77usGsoSko9
7DmYR2JPwOmKgKtHB9V8Rc80VcvMkA7pCUYhs81PfjuMoP9BbKiPE0aeKah/aOZG0kYJ578ioE3n
uXmBEWGtInU6YYlqY48V2O4oX/V3TScYmtxEzLWZ6efj4edwvKqXHoMfcFc5sU61lww7nCPR/iyE
AgYF2BZBL6SwNiUIgaZg6dJ98UOdsmaSIyZ0EfoNXUklj77nIQFit28PbuOiG89Vvv5fgKQ0Puew
e92nhWRibVIvhucS3kd/mIp4GIFJYXQ8I+7ktwQmw1pT15JbJuE4wSzor4n2oDyx7CJcDrcHThdJ
KqPhtmE6H8nk/7LFyel1MDri4H6RI8KbpwOG1VqhXM66rbLu2MYivqE7RjGIsoGU6DM9cAQoyGTb
HQ+XLXxoRAf1v0pgaqL2QGb/gQm2SGQW2dbo9GiS/h8kdd9o71FFNtX9nH02my77MgK5mOMokjZr
givujY9LVN1Ij5rsYcLmONz2f6rhkfBlKUXlUEuGsQULwKW9ENF910HeXOd9BXEbkLsj9Bwrd5jE
oNmMAZ34wVebfgpEpAXkmP5pz44/KrgCrnWK4e8uy+KWmXUevnAG3+7WXKXOScESTMco7gHeSEqx
3wHyx72XPnYC+vwJc1P/H8+gRm8LlKXyoFNJD4AVSE+tDMXFea4zA5bZGbYnx0YWLPXMPqJaE8NJ
mmDKm9G700/gJ9bQ1aV7YgzmQNaEpWMyJzmXGbinWDvY/b1NmF2O8jk/coSKn+fWv9kJJfrDPQzo
uZNzGd1hWV2/JARIKByVr07+O57wDoYqat7OkwA0gtjqnsQ8Q0HUIdIon9Cu1PKjLZDLCRseO2Ip
WMWM8y2AcX9g7NiB0/xLUneG7vOCjW4aRyx24MAziuCUHrepMhK2lE2J9Lvc3YhWaN7obmC9qJKX
E9lNiTR9Z+tsNxVDoV7YQbBxVt2dD6qwOYzw/SygQs4UozGebhEGIPGk3FMcKOuBHMcNWafAY1oF
eGMEpWJCnw9YDZTuUgNu7Ze1g95pDZ7yjJlv6X/Q/gPLAdvDG5galhQdUdEXfaihwu0fOgImoCBf
NWImA7Tb5DrWzNYTjd/ezjpBhJ+r2y1ONymLs3MeA8StULdoeide0vLdoV3zmnLgmU6JcZv9RyV7
MVuqBoZtHiAPdSw2FXRG69rv3rgsme7iLjbmodtlDRdSPS1zdgm4i0Ip6xlnEMwYXX+vWE31rs16
6YeuF8XmKyPuz11pXddgMtJDCTLmo5NaHw24ExBmBrczVw4nH0Pr+6bpdUis6LXDR1U9Cm4HrXen
7CvRABU73tYI0boglHqvraHazPpZSm3799v2tF026weSbhFSSA1pn2D5oKsL2TazlB15Z4wxnmst
X8Ha/Xok/dBeQouNtoqCVzA51R1NpzoCa37r8lVpnzLyciGafJ6it2EO22oULZQ1m6VJfI7aPl2d
kbDYIuAaofU2qQbcbOmv4jjaMTpcX/lVQS5ge0H+9qcmp6+zpazNJBkO+Zhwd7qRmILDt7P+/p8j
wNrJHo3et2OPfGNWg2X9KVb2RQUfDtaFzalXQcYtOa7OV3WzaclbWVQnhuxN+DksXiE3VUEGuSUx
nStuMBOeKwMzIxv7SoiruObXsW2B+gvVqObJ5aJEbx41iXdJlqb0RKyKgRnM051q8dpDgA3Q3P2u
KVYBD1ZIi4WBQ12Ty/CkExTZkbVAlk69ytKbIU7HvuZZsQ6jOHAJ5BxaNiTqaOTeNFve240rg59p
9q6K0JMpEo2JtoXoKmUCYSgqtn3CWCrRYg4mHPEf4f8v4rqD06qlsxSYXSNOicnBv5ZK8WpONWGt
4f+Cd9TjG21YdJpPSPyvDXRE6JVEVtf6URJHTfanEaDhJzZse3gVWSS+OoGGAVM2fMbQX2oGf5sH
+pZozjXDlubnsWpxdBmsAhTW13jPk/OFGFmHG1Ov+2v1Hf4wfr944/hAmKCiQYbxKhaJEqcDS1K8
7Hi2z+0g6eN4rdD3klkEiECUgr3RLZcFJu7nbNI9g8kp1mxHX7xWtvnTEDJLNz2cchNdgrzfoX1v
+vWhZkHQQ6vLCyqVQDrXACZqo5VkV8KFgTCm5Yr9VUYbanpPK3bvaJnt+3Sy6KcWIeINi2fMrh6J
ChA2kRLsc/+xiw3OOM52adbszzSZunqM4WdxPTEZe/jqemGVQ4hzLNcZWv+px07baS0YdhPm2aOt
zuuKXVTEPWSdwxL2LGzYPDC93qJ4BLwUiG0uayhEfndImS+yVKAH7zi1nRtibRHh/56ztiMfw8vN
d1xMQv9Bf39rxiqmOld1d59fhfBqhq3U4NI+xgCGllpE7cTGNpfFAIQFSVCs2/ZEMSmI335RrwyH
eEJdBBtXhLkEDDJhfpCdBI3Z9nWfy3taiCxkriGyREQd2vJbx+iMFCIRd+ff6vSTlPIURplkeAA9
Ie1RmYMRuTA1y7F5Jg0d5csqNgfk2eIxzO1bdTa0cl6Tjh8tgXv7ubKQRqG1tFSYPJ3m1g+NBGvn
C99WjESgXjINeMaC/XyQ+/uxMsFSsen/XOhlNUm9UZJB9Wb6nrrIK/0ZVH/DVd/eM891NNxRWEkG
THR4TesFzbaH2z+by7fZq/R81mzYIiANpsP35v/KUct5RMl5puwyyC1IVwBhE8B0YhoXjtzh/mi7
0UY3XQGlPxDW/NFZBtBI7KmazUgYkC9W5ERNhebvy1L4rzP4E5eOhww1L8lr7ixZQf164eVzCPEA
589EAKi82kW/bVHH7rRnMu50no/iF+C7ZREzgjLOMjgQySRFvDmvQFagNUG1Qsq3fYrfHLSzL7N2
oS3n0r+TfjxhoiwpTxyZE8nQ0wVdRvrFsenwesCBBRGAfuWG1MzhamzabTyOEPWXZ9dv0UMM6lk3
CFiUgTNJs4EMrTGrPGCZNfmODjvnmZdWcfy0yZPeZUD9s/lLGWA70vTcgi6NEkNxcBBcpCr2i3yh
XYJSxhh1Dpjiw2Xt8w+Ndtjug8aGlFKxgAU9kNjaoX90GrHhnqN+lPHOOtGAZfZSDBnbzSKklZOT
9+BdqlhhvjN/Tc1USfRNXpAco0+O1cwOBJhoWDT4nP5JnsQa0WYSPpcN9bbUMqsj123RmV1/7y4X
9I1YNON8cAsd4uxzSt5dpAJjVku4l/SZL6n23uqrWzNc2wYCtINcENLryMeJs0J9xSRjfiPKwJpz
DiR46yewTbee6y4gPjqR0X99kYiN3gKNDF0nSSVwYrPhtV5AB5qq1/LKhJWv9mzLOt+L69uqNdwm
SGyyHoNLEUNw8AMG4uxPBFawLtR7646gU2x9qgtPyMBYqIZ1L4VOMO04gDKjFSf9CvcegS/wc1+G
hS75BQy2aOhBUpX5rwDhFxGz6YZEsson/DPiYevxK0VDZ1uL3keHjz3JyWtN98HCDO3u4XqHIzwc
UGnUfhV03YRtC3O+aa7arC614c2MsrKnZiZ/sYM6dJRr6Bn2oKN4uubUbSS8KKpSPHzNUCKK0JGK
itKRyRyuEvRsEDF72QWGq8L8X0+X4U65DBg7tLO+ScknBQgUhNlz1ktWi0BWcBTm3CNd+AUOygBi
zHHBC1zpgd0Aia1jEZ2POQEot3D8IH/8nBgbTPn7tWIu3yDnbPJH6jnRpQUfEQrDDNALTd7tr7xt
SrjWYkFcvmO5E3MstAHnJjIw02YUVDN2tOm0qkN8vnUbbX1jrvTQND5EkUUBFjHdGP7/K9xGnZoY
MxlVl5U4rmEvYm8NNC2ibt/uRPLCtP83OrrudqkIQzTrhNJOf+snYcdK2TWj2alvx1QyJtVS1/EX
t3/RMCQSprKHj4mnlBD1IcI8kEml/+90F7mnW3oGCtJ3/q/H1nYzedBwn+S4QUU6kcc45TLL9o9z
m29RQv3EyMPYpMu15gzs6qrK9EmZ63q7UFiy7ftl1m2G+KAM5BQjuSC39336mAygKmj7lS1v8M5T
H2r2AkR98ApN3mm7+yxgRZ5JpRhv7dlP0zoe+v8k6oo9Vv+dda6uT1Nlh8yJJJNHOue+yRc5hWB7
fPa5aQKoke2iGFX5+qKKNNDcEz/rXTFprIV94h1CLSow9pSpXs6DnDAcuLxbKWFdPBPYY5GbGbkh
Wvr7Y4HZc7d0a/5tT4pkEZ7yo3fG3BO5AkehlImJ05RGv5dS3ZpbLasl/BzFrxpWeWz5Pn/3qLpS
0pLOuYIrIm7ncWie16/bzLK8l21impeiZ3C41HB/HyfqUKbKFJc2cXjmBQ92N5F6FTR7twii5O5X
ltln6TluRmAmojisi9FfCT2W12e1pJ3Gj9YzJuWBLCHRPoInsA2ZQlsrANo8MgjYHHTNcg7og1tz
6Upx8uvShnzDfktySoEUK0Wh5+rRy4631seqEEHqsJ/BUatDGSPL0xIqjx9sApuM7vVNJxQkH8uB
zeIxKbXC9n2eNwnx8rz40Q3Ui5ufvjXoc0nvxUKltY2ygCN/plpgGf0JzT7Lo+1lf/r/bKPYK1Kt
Uslyb8bQCjsVGXHOv1fZZZAJUz27PoHUzd2BmUmiI70y/3ths4jLQbPGxu/3z9s+er0/+tP+pYPR
a2NDyzQB+q0mPYJSmGqqWLWaofBi6hF7NsOQTY02j8oobStLd2G9FYETnnXAdkPOV31DF8ITOcNe
EmP2drpmL63/TF30PDBiaMq3kuikMQj4me69Jwt7bMehoLWb85x150NF2PJZ7vq20I/Bb/5ppXzu
dUmd5I8DFqhYSt8OVtRhvMeJLvxcwmN1oEvAoju/cuSu5TKfqZR5DX6DhrRLsw9IbfAT9NpMYtM1
pB1KXY+Bf5vBXtDSjoL+t/42NpjSHP5DzavDBHx/JR7m3FPi1Wdb2C/YtpNUQFmEb1NN5/1HYinc
cmv11lIMMRVpHy0bgNCEsJlx1JpqLIPx6QCYIHr9+Ds+51n4wqiah3tqdUk5ukagWIgC61/kZcHm
rr1hmMHiQ5zrxrxwxb4Jc2FnRjImETJZxrVvn6FQk5vRL83r/HwpsFoPHiOmLCF3wco7IC/z/BQ8
2iGZsXEO5Gnas/6bQOjE3ynOoNtFGaG731Nxs73VCjJb72PDmp7g0DDBlt+lYGF4daqR/4L/dixZ
MM1jdqv/TfGmqHjmawuts7PidfNIkRYuJZ1vc5PSbkCyqtkikGthbPluz2ehboKQcfOOjA8A7n8S
faStB1OZboyIj4PBIOUBsYoKyg/sUIDPAk69JH2EtgP5gvGiP9B+9Q0DtoGA712m2gbtSChRjk7c
dyZxd5eTnfJ68ciS0Z9Tsm/YB9W+yqBNGyfnkqJGZGRQ8UmZ9wWa/pt5sKm2AMTIqCH2xNEbfQ0J
J6GnQlOJVAq3YVuWZ4z8RR4C/JSpUmnBMoihOvul2uplooS3JWL4oKz9nFF0QAT7tPvJGVvH/xGa
IAf31JFaPFDbsNU19TkZ0p2VGXXqefzR/fh9Q+muNgbd2XA92Dhg1fkF+tYDU7jDBnIzRYUE5+Bk
eS+B7AiGZQa1hLktME7u+TlK1kv47mihJwGBYFLCSA7+LQGnx/Kqxze0EgwfEoLDSKPTGJ79BcBK
qZ7bPiUrM0aETbwxnr/MSsCjgOqyQYnoKmBjKJjq2ACdK0RczWjiTcZtcMmZlApMislLKUn2UDeM
t/L/46BMl5f/XC6oO5rqX9kis2WgO8ZAL0gRcaZTdFaQ1ZR11vgZBlJDkrxWvPLeAw+wnIUzTIDz
U2Ze0ftKYaku8/HN8q/rnDok0/u03i+BPXt7guXIMrvtHyK3z+KZldOOZCdqeOrGZMiCvLnH2Z8U
FqO+8HV0I6yInDcMtSGQK+0Lx0e4SB68RcP4N7fxUtFIPGOgnNJQ8JwWfJbV4RQY7bbBDVKn9zic
os6ZWnBdmY2qQa8+FJR0vz+490SxWE5VjHA6avLhr40fuNkhfpHWT21OpWp1Xnq62AvVkBsktJoa
wKT3MQ/EzRd4GT9Fyo36qfj5GC9PRzflSbo+X9UXoa0ITqOSSNr7uECUtrflcjUihXQA8EbJItvG
ms69n+oLyIEAHwg6OzGuB+1hSpBPHPqvRCmo0oDfdpFFFZjOgbgcswzF34zxyn8FFUeIoo2VcMNW
qmVmdp8GeTtVI+cz27RnELT4ekMGF6HfaIWa7rtf/sg/dfnA4NBLlD0QZE9c6cd9Tn6q4qnTBnA7
FCaHSGJdt+zICN0/sweEn80SB33rNNsYpTk6Fmh9wV3pHUiKPA+O4ycE5LcLPDWVqAH3GPiORIKv
YeNPXVEtpcDomBNwR4rjVRCr0pdvXlOjR1TrkDvMOTe20n9O5Fkw78GKuMsEy084mKOdYKo/m1h+
u6pncpV9GuvRcOImeJLCOWGWCfVRGp7GkCEdgkH9xfJ+YVm+7PL8m1AwVL8tBw0PbxrErh7XjV0c
6vtNR83e+dt2cI8Z09lv2eJHoJ3rcThIoHfH+R3OLwchuLGTMiVyuHFigPuWlDm3M+E0fJRqLDSq
qqSfLQeRWym5MeOaMu5W6WvsFTMSwSNDTSg3ODIqr/7sp519WQbk4Lfm03pSNcvqK0LPTtdHaQ4+
0A/NZ0ZE8w16DoGwyPOo3Pta83JnBYJMBwetgduVk7h/pARDDNNLkmiorXL+CJKL/7ptnow3dGRG
x0G8liuuuYhXXtnatpihwnTiVXaVKJgS9Rpdic80PP4vcsvTTaOBn/4OZhPoJ35IkOzYdB9zNIOR
p2HAqRAAVa9J6hbwh5FxlvbFy5RDqbkq2Ml2ETKfROKuKkO2B6WSk5+hNIiqeWWqbOL8eWcjFYtZ
q+Au0WQv3wLw0XdSrNTdS5YtZUoutYrmX+i7kWGd+oFfgazFXOl96oXng6RVW5+usUMkg9qFJNFR
OGQcmL7nxnzBTKWa/AbVoZDplgyNY870E6MVfxZ0RhBpIOchFDZiqhU4S0qr5NhS6ox95VtQ4qub
h3HWOLbXUH0ON4SBRTQSJ+S3xzBL7i5saDD+sqh/IQsM1AwG7aritY6FCMbTTCS7piE2D2xzzHp+
HEK4Xcs1rdKPr4pKEhLdqoWtYPKKiOy/0uzIP0ciTEgtn4F4CwwVV7mOSlon6ixreYmZVnq+Zw6+
GMTEPZGfIXRP0cEByvG9RduoadlvvKonl6p5OTI5tP2cXPuu6q00Yg9RQb+mNqvjlVo91tX/JAJM
8bBXcewEKEcaaUYnyh3zcz+Mdpjfz21AU4qSayxiUkozWuS4AjGy88TXteWWDayCyCYy6rIQbQPY
p4C7RzctuoXoRDBr3GCSpIbWqYaDUIBIyZLtdSYYr0144EpbA633q/4iiG05n2x4F6dAmGSOrdNU
CUIARH/arWHAqXy036QIoyIXJy67SH4iBMxKTEFtkbeosbhs28aEtfhySAzlqorWE3kRxrUd4t8J
cJTsZclQB6BzWit5hSoqGi/3iQi8MRStCgj3YDzchRO/Xg1bJnukLy64m/fGGTy2eR7D8C9xaI5S
7mtvg51KolPgbyNLjpK/y0yJuQPy+wah+68JL2Esd8zbjQgE5gKCRIGPrT6BNLP9LDj0RJcN5X4j
GP/F3IHYuRNBXUBQuPxTEbKdl6jqcVqxCpM7I/rbUcaXm8yn+t6AKN7UcKK9HEO7bDHe4qzVKMwJ
ngx4XSeo/8TrpUILANV1/AxON0AO0eCIgoqDAC9Rhm8njKmgzhXa3vB597GGQaKMGizGfJynGfSn
yUo7D7DnRgONQ3S6iFfqYci5DIuHxfQTqWzPIqkFWYg4T6zpXwJ0ysRnN0Hu6jopoBP++KhC6s9o
57+hENBrzaeWCdR4NRHpy5x/Xtq0OQIFMjKFTeiEeOAgsw9QVoG46uVK7o0z+gbNCvCqLTTdNJAY
j0psIFKlrHw/XOSiQn4MrcfnbyrDaTT7zyPn+F5jL2/qL7g3c+jhP9GiaOyaY8EL5RRZ3w/nqCUZ
4bRYEwkFOQBDGCNFtpB2EGLzaiD8DeBzOlBDjmU6ztsTCuMX2k33ut5zQ6wJI8weqq0ZKWH/D7k6
usVXwLnWdreKigDDFgZEHhmEZcTCn6+B9iDoo0uOTbtcv3yARUw6qlt7C9ltlSEI5yRhGKBGaNQU
Gg6EBMI/p29F93knxUNEQfePEgGGm4TNR++cPivY/rspycilzdTU4zsbeRgdXCPKFnyQzvWO4x7k
YvXvabxJkna5jtMi/iUjoOvfdUdsv4yIRcTZHsXNBL2M7oRk8Ccw0us7sJRnIC5s+AASNoIrYpKQ
+IMsmQzuP6Cr4BjuKq9JaLkoymhMFYHATnMLn1BvVxS5QcxT8clD9xqKKMpzA+MetM2wYcNqFsMm
3tp62btbuJtzoJ5CEH4RWcYfgrZesStaCaFwZt1hkIOY/omQXz3ZBo8m6mySpUCEx6EmuoqlTmTM
baFXcuwnKiuCC+Uq+VrWRYf3hXbIoM7HxfCZ5/7PGUCmBCohquzQiwnHRKlwC7m2ELWdh3XVjjsA
0Sm0ul80xkYrkNLCm764pQnGS5KcAXVu0kQmH6FU7g1+uORozHCaJ6vvZhMQEh6THS26ASfh/BOV
RxOL/+XDRoVetotO6ghEBiTlsp728dDuwdwX5Z73ajXYiTw0270XDzNh2ETuUIrFfXRTg42wOQU0
BkVK+OQwC8pyk1CsPyFWnkOj6WYaPecvoAaTfCfKcRJZap16CipsSAyYm5NMTX/x52OFl/wM8GPs
sWI1Vb6cvoLDZ7bigHxXi/7KY7Pv9jwIMuPR6QEGFVIEzg6LVRMMlrCLXuqdbZduqLUjz9UW57cQ
2y0l3lJDP9rm8uUM5CorOoe0DVgqj+6JQZt+FRRTxBraZcDBevcMiFMk3U6eKxAGveNENqd4FhbE
iURi3EnXQMiDD9rNEH2SaKDE1KDSf77LIQqU2er1rb9KntsGBdEgaE8WUfNZ6DRgOvk8+z44jAHe
8lQrPpghnozcDytWKKPp8BONnCpNUx/D5qDnJF7knAYqYyY8V9uX1JkjZwZpe0O/sv0LvoYaGetK
5Iw2OAYDORzTJXApFn33RfpfncN3YlvBvip8pPMo6KOUuXNLyUDDYq/UpqyJxSnfXSPdERlfuJIT
yF7U7jvXE0MdCAbOFBa91/z1Z6M5BN5Ae9TXvCAzp5A6TWkVytIUg2ZtepH9xw+T/ZZc4M3PPAyN
ET51jObYaeVmddoPLt8dT7tao0lc720afSy3AICUNNinA0aW+s+3oSkNvn8VMKDfoFT27bQp2fpO
Cyb9Hd+5prt1UgugIotlCuj9l30sz5zBIQUyGjV/1r0Opnr7nBVlUjPU3/1cvgfsUFMNkQ90/m+s
SfqZzdYkxzydUy7dShsNBQQ4GTDEU8CvPAY/NuFVJbUpl+iA6ZJl/XC/odNlH7gnxNXhXqFqJm0G
T/uIAFrhTCfiqbfN79OoV4NGoTCVQ47cT9owMe6w/2J5pggNyYQJOLwP0Ixok/dZpDNVctjHHb2m
+Ky2zYQmI2CkKpQnmd37P/VaA1u8HeyIx2YkpoQy6r5xGXaSp2b2+yl95W8WH+uTkWev33roQBe3
HVvp3J7Gq6m7hhYOk3MAeADFk/zF5rAuDiAycuzDyr3yIvQx9lpRR8CR38S22HfYpQg1pyxVj3f7
xHDwGE7J48LdtxngbNu+7b4qrwkbST50yKLKXKeADXNfVTPjqMtxUYw4+A7NO4TDmufLfu2DE7Zw
269GrqVy5Mc/gmgD89dgbdJnjgYQE0j2bZH7GCag/n/Y9qSzKx7u8sEpUTgUGRcgAUlTcVOhEsiF
tfIdMsHTC+b8z9+SyR7GuPNoUWJQJgRKNNxFfVrvNWzKEMx7O3TkHMOzIaXaJI4P/OzByB67HAG3
xMI02yFVrtPuKy4cC3VIzZk+Af1sEuj0xJHrlt11HEzORYWqW5dyw3NDxIo6kUaBVndZrGM8eA6e
p00bjlGDWrVdEiG1UHxB9A3WNxewIiaGvk8ppYwzumCpGD4OgKmX8iCFGcfJLShJFflOI18fFQPF
wu1zQ7RqoX+f2h7TsweuvsO3Kl1jSWGEJhWTvXAChwQpKXk4BJCd/EII4j0OzSXKXqRcjHhME+L8
DNPIR7TWoPfl4MUzGWWhUVQ9ucX1bhBiTRTuJ0HClkIE2HsoCfzDW9Wcy6ObaoRZqxNG0Nbm086p
32Y4ke4higjxlLumc6c01iHLUQwVpz2r/M6PMgTDwxHtB6dbT7n7elsPhgjB9+7ndg9MTutykBYS
pZM3SigjlBAPpCeeuNv6CJV6LVgSV0MLs9uryCv7Icf3G+g74F9obvahNuXj6YdgQVSaKpzdR49V
nrfYlGBKlPUGZhQzDPQylt6KgOQk9sqYauygEvY/FK1WwtcI9c37g8g6jjSs3CtMfcjVEN10lw7M
W2BF7a9X5akeS5CtK7Kye7iwCMjNQhLLAjYG07/7Vhp8rU1F2hZ9qFlFvpk/OZIHLo5FjVfwKQv3
SgS/mwo+Vg2xKhoaKxcv1Ya0gD59VyqPxBlo7OdTDEWPNkCxnq7ZEb59BJWu3nwNNnCwcGi5YSZx
TISqdVyo86mL7/QtWhw/bm4j3woh4MVxgMuGaNllRTQvWieVQ5l1xch0I2JIjT7PTTa8puKe7f+y
cjj/+mZsJBWyHE28OuBrHk56/sg5FF9RnmhRoruqdeDuBJtfOqgfLZxrzFrASm4ahUPBDFvZnnZN
kX2B5ufEuqOrx6AAjXD3tq0olfaocR51ZDdi1CYlUHaWJGpzQDyWgwzErLomwORLSyHUyuo7ULlp
qgieXzBUpQOCzj8LgyYNpuBXV7KZO8mk85T+i4cogMN4mnLKFeKYQTiptBWCKX6koPtY//3cXjgp
JVtrEx2emUN6I87ICPDMxl8EYMhJg1CLLlvBbvnCrazg9DLKjmPUk4vzkywGApnRR9FbSIYcHVBd
Dl+5uXSDIpx2gVIZVZMI9Rx2ydoa1YgH0NTAbwr3ND/HG8L++wN76mu+LgvQM7w0caecRdkKq7oX
ePZ5xL2s4EUz2EVXlFnhXQAgvWFPiLOe1QPNCOJkpmBUf4lCeUsnvlrX8/iwTqOLVtARQ7LEOhY8
6FKkicNLrd3evuenM6yLq4DpjiwLIKTlDRimw1ZP2i3KOTtoiH+UZJ9qo5DLeJwXfkSPYiv+CMlp
bD/zLR5HEhiQdGwG6V5+D25owzbF1Q8ZYzpnUgYnqXTDxvDkn8PTytcFFp77oMW2lpD5U8NXh3k6
YaHejGan1V8ISUR2QsnSJ2Dr0UotwMVcqwQ5KwKgSvgSTCllZmTap3yBj5bHo2m562cK/qey8ujT
b1/mH9hMgtwTu/wOdNa3j8OpqJE931MaVIezqbvxvZxz6+Hffnq35L2Ov2Wq+zHkKFfWJL1izSQ4
knO/TKQM+o5NIlez7dUJzZYSMBYpn3waAyTlEhs5N926p4oLzrywitj2QymN5UKss98rRVw6X3BZ
Xl4TIzOh/vHuB3eVq8y3HB5z22vp4GNIUQWRpKRG6k9Qkcrmnm5JbNjjVr02VxEGztjLuEaVfhto
c7qowFIMqLn/zCevFho74eytY+ChbR7XSt86cZmuX4R1lnjqEoc7HuCtc59FaScIijVfnLEkFZzW
qubCHkWhL6yhVpJ7Q+jGNKVhDD2D1wbmmaME734QhijDf68zcZVJYnHJZc5uZQamgx19wkCIhtBB
xM6cHwAYtUASgV98zr1+imGYDknjLPI+pE28AiXlouP6IKzGv5e1tZgLGvey4qrqTf8muCcBeUQ6
hCwlri380f9nVIKNOhKVa379go2cL2FYJWAnzPIqXrAaj7S0BFdfvgsd6okWLeilKXDcaZGRumg2
Mo1tyBxTMJOcpETIkr6SY0DtQ0tJlQgC4IB9gRuOMfVi+5+s9wnCn4s0l370OF7jESYlh78iIepc
6lCDTgWhcWTBafFdqs+oOKEUtd01Onu5roVqnCsDkiInEY8saomynCiJuQbD0fyKM8QkO7NQyx/1
RZqyw9TxtutnXPwGqMwPiLVJkn4VFjhB/PeZPfo6aJS+B+0I+4UtNzpkTrmWoanoJ7noHpYoNNZT
EqOSKAUyUCfIoybc8LrJXbD9pXl7ilJ3/bY9XcPPd2IkRCiQWemcICFpq+CH9kuPRZZOjNq0/D4V
jme1MpyU/CMx99SoKKrqBlJRkALLLXxUpARvkdWbCCLaFVlmYPh58pwFxz/YtS+UNcUE7ujXm/LH
O8iZ+JLJVv/PY5Lip/Qt4aNooahybPLOTe9/RKfWaxC4onqIrqlnyCdcSPRsIThWABHN4pv8vd6d
njeHFhm4QuHNr42+gPZIlwKP9x7YYN/ixTDdZr/P/FkZGCkb+zLf/HIKk+JwDVkHup4IWY9s6vJ6
ozY2dYEUQ4caOmCJnUhq6Un91mJSpeZZxaJDD3C9BT9Ejja/t/GAMXNZnWh7Ra0CIfcq+mttOp6J
YUYsIFG1aiEJBQO9Q/QQyReUCUwvks3uB2haadGI7GpRHEID4rp5UGdQwGspxFNqktgXyX4y5BoX
Yqe0tkgppd/4ME7lH6pLWlqWXH5AMLsXpEqx0QEnDOog9WLqrQ6j852G/D0YhCe99LwOxleY0gsF
zZDWBjatRK+PITxLLRARlqFskNVDGbCpUnmtpX4LbLQGbqQkNCoBAX6mh0vihgnqORl+9m5BOWe0
FJtVdELcKrmRkIgwRkp/A6MOhGdc1T3cMhk6wGR8mqXp/nYIiLxc1rcLoFVlFn9GhewOb1sPQ3KU
vRIPY8i+A1C+NI0rvJav6ajZqba/r8erUf9SdT7cGSbMMru9iby+WLaFKme8ybrczKxHZigY/Rk7
VVJoJWTIibjGRN17SPQ0oP3GkfCS5b+/BXdPEgkCx8QicjwuRZfNKCP2ay3JgZ09cPziHGuX4cH6
nfaOI1Zhu8clgr1L2qeCh30aBp89Pg/E8MV/47k2owll7SIblLY2MTDsA4Fx8knz+zc9+/mSw/Yo
Bx4ONegZ4bRlNGjyFN5wT0z98YyDw2Pst0fAgSx+q/kLPR+uovyqRF2igUyn2hTHAMkEtuxHJS1Q
+utSfiwV6MDGt+SNQrUDEcVgOW+PGp8L7AEeiMdjLebcIoZuP0CTy/6fgCb973ecPWnGcR31K27S
Kg2KqrkhxGxvz3ikuZ5sEvTFaNk6NkGnU+t3J+LCsowkmUm6U8FuHGCzO9p2Z3dacudpCwW2xnhy
rrfHfN54WCkoQbjFatutzA+VlHk6KE8T81oYervXWA81ZRkF4Psxj2uENSYdGbIULCarCLccPjTF
p2vjBpV/3jrhK+PvKeq3N1eNEr433G2mhS97bGgx4BjZmkViC9UnWcCq+aqcpbqPXeBHi++ot+r4
Y1409iRCbjG3PEYWz62KEeo3f7APM/0QKpa9CPUsP/jzYV48c8q2LRZ/GVwwU0D8hpEBTnG/xJIv
SVBKL/2I9k6IkbTYn2pjkqpsFbOOrVFNJWtwRrTb9oz5dUrom+MJQSDAOffPXVwNclhP4aDI5VHe
2YoQ3e0Sy8KT264amg21aACbz5+L8X/Kuf1flH80n+z0tXtQ3wa1GHCvn7tAxHetbjBZACdWItRx
UT2WvjV3jEf3YLoTrzZ+/7WNU2tI77I1QRJkalsqRlCMXYhezRQW9Stugh3udi5z9+2QfSHNdbJH
VgzjtTkWAp+rhlQGYPyZVPewk1+LDe1QUD2atako10TNo/Sr3WLdHtGJAKxPpoJbKXtOQx12l3qA
z7Qzgb4NNmDVFvJcVdl5qBRYHnHIhY2bLm5oTDt3SV64e9kV0ZFpz6JcZ9mQE29VYdFKeMZ1v0GM
2igNzrm1emqBMpMGLCbyL9Ve1p2LRrXLzMt4kmycX49dVnVD3HpZ61diHrXQBieQN9qcRMasjlaM
76j1KS4IWgUO2GaJxtY2/P1kv3JpukuQMlghJ4MhqtWhWDQ/IIh0qUsuKn2jEUuBuIAXr+JK8hml
OCfbh8qhc68XjH2vno9fwUrZAWy7g1yHTd9DJ620f2Jv/IiK363YbirfkQod2rB5goYDq9Rs7LjD
90xUHcwsyOq4uoQ1Z5c8IVGuSaLYDhF6tiMqS6COtSynARvFGj5qH0FXJFV/LrXNyeRVfaS/zvJu
O3+dhH5KAtd3JUmbqTxCYjChxfF0VPK2TEoJJqT3Qe0rcfEaTZ9reY5G8tQ8Cajq/qtXIklg/1v+
EMRTChsbkljosFsAw4X1v1O0bN0hcy4Ky/7sPEa0Kx60yRLwuW/7dJ8LpvFpY9M4rplWSBMb3HmP
ojHueWcKJ0O9rTIREuhG4HwkSbLlI93zm+xdhRDuWzL9518iBoQt1x0d6EL91A+HESyFXE5CLCOG
g11/eoE9tAOnMtORW7PCIvcUKHV+uP2SVZPgOkJSYgmeNAAH8YmQXtkA5TUtq3FEQvlo7SlfXF8T
bf8c8J3lka8ofrcRqj0d7ZZsEbpm7ITvjO1MwiYf4U9VhJ3j6WfroFhiD7VMnklctm7BhCAXyYgV
HE6Dcyd+Km9/oEkHVN7BAlZhXA9snXOTUM37Z7vKPs/nsFr88JWf3XZTNKOCPyE66xNqxYrBL3Nr
q+qbeL0SznpbEqaly8Zy9f4aCPKxz/OBOX9oRWgqW8bqCbf5bLZUis3DIbmpaYs01BKaG/7KJEiI
oEvlruGjxkOb5wSMnEwtMe5Rkl972OShDl5R5XvM0iWVL9zA20gcCSuyP+TAlESaupqwxiru3SR1
1zfHvsrp/7K/45hAWiel65v7hlTdIegx98UKg4KAsdYmJAArulC6vCXG1ya/0kjAc3C0j76oHxBo
siR1baAH0Uy/tZpAKb85ZGc6G6C9D9962aXgJgZrQQ5AgtDevWWSXY3mkawcxWJ/6QetzJC/HwWG
8+tDNTn8cPFpl3wW/JGjnxx3x37KIcFv69kIkRrseSUOfTNCJ3nrILdXAOq4JCBZjM/TVPr3esdu
MjYtzPG/XZEoeyqyERk6+Q9rZ9jQXfJXUe4unlVaNb/ktOK175lIcU6U7jZfg1IiKQaCnHsgUvws
43Uoltw0XWRBdby9y9/L3iAce83O3bk8pfySWk2/WFltSziTSJK/eV0ZqMJP1iN1CacPamKC2yRL
pCYOqSRKlh/nhPVbcrtaLXnpTASSOrVP9AH6Dym1Wt4fhdMFUuHt4rjn+x5o5db+UW+7MpOelhmT
O/uwdq0kCVTVyCElRqTwyuTvHeGxN0IFbetebTA7Iwno0SewG153jrg6a5PyoIMenOf1BoWXGKo/
K2Xu+gTb98IGd+RHSzOBy9jZH3F5AEzMQ40I/eaTHHs/O2+JdDjleHAZEeP0HDk4rXxh6JWdilyR
j8eCxQYeeAd0XryGmxZvbJnKVZzooeBT2kDzCSIN2Y3bkeX1AZGLXxY0QGU999PlzK6+3BeBPLwS
XZezbtUgXKJ8qz2SM7V1Kre4N2AbyFFf+Yuh0hUx6Y5i1LK3XeB4o8U9e9S6OLuD/8+BKERdwzWv
f/XbtQ7JpuspvLuoHdYLYtUiPqno71UVcDGQRji4R6ZjdI+TNXQv71kKAMDgn/Of4tj3WDJQ8TuL
XL5oUlQ0cWW2RYIFeMdCkGTOen2V1jwj8Oi34nzD6t3ALLf/BPbbl54lh1sUW+RjItu5ayIM53mi
jMAvSlbtso2W0G4EblOdUZfiPUU0CbBlQwjRdNyG1u/JCyGCINs/ed8ZBcr92knWjdJlkXJtGxuv
EBVun9ZqOpKFy4tqTOrNqEBXrW3xpGRXdZzTfd4UcZAEDnvIC8vN2iO4eCUR8UF00lk+ntn13tt5
w9YJ1Vzc7S1s8gh01uR78UgYbaAoqSMiL7LKJmZCooloOYTv478n0UJ6QfgKQDnJlJpsCcYPPL9i
oatvQZ3eE5cOgKIg8Pki/2WVhTqX6RqJzkXJMtncsQLzxOE0H+ViZfkb5gAoXI8hGVpCL1wQin/f
1tDhLE/IEGf4TjeP1+rSZCfTX5fyAn6B2O1exVDgLccGe9gC96vAKYu964KqaTWi9hv2RMu6HMfh
IszWBzrV1aQAVkGGJ8VCfcFdq5bVe06qrJ9d0EZIMzDmE9Q85AAfJTs075n5KUjiM6PLBoytHB1C
tsCj6aFoiP5CJyXFcMxuQUmpqHiwIyePBgOQpacUxa7yKqQqLje8Zf/CNSGFdAsXySV86pRrE3AK
n7i02QJJwWpesdzXQgpk10tKVDEbwg31Y2vDYEe4LVb9r+QI+95b0imCQKj/Bs51xXXfSQ1IM3Y3
hDiS23pFyqhcrJKaTEJEP3tnLZ3kUYkGTXFM35B0xdNnTc5o6qFVEHhQOiZKNPZmEXAAaCFZ3V0j
v8D7C2Ejvd3pAI03/LFu1I3ILrcYtEGxyiGAQidRBRPDcYw0rHvVzei5dO5gHg0eM6BMjkgMJtdB
g2SVTYOqrwmw9xDOvXb7fp4y/okh+AznA5cDLFtxsSJGnCsW8adRjhWR4tDFCwCZIsHnEcLTxJ2w
ykOuv4zzXforWbpHwUz2sp2LO5G15iIDGMRZvlm+k4X5Jq/E1PIJG28yowPJEeZsBEpr3v6xKF6u
KqSdrJh40jkkGC6iAXpCE9QnYaPnheHl6eUd4ZNpwcwRyxDlu45eqECljqsmwakHGKmL9nW1WCFY
XHhLvBag23v8AS0R57x9GzxV3MsF0azwC0Ov6drNKdz6jtpszAyB8GIcMnDPfFlhhzgd/IRMYpN1
uXmbipUf8Rpa85hYVQUvRxuGTcUHvhSAX2E1mXH6pZkw89QjdpKSntKCLS0CLlNijkOE1+M9kpVK
8NR0Ff5DyrXx4Cbu8Rb2CgzQPs2LkXOjzTSBrki8ve4A4MKstZzGZrm+BSUmj1phq7nK3dMg80ps
MhNjYKeUi/iWIbOhyTKcMtKqOBqKbleYbTEcUYZMJUx0oAmt4MqrQZPYYBdNhwWy5NoPu0D4egDH
PbGcIiTNZucqIGhYf0jYQG/l7k800F2r+pauPxdTHCGvWCVnHucssZgNMo3Wz55fQqiEH91t66AK
XsdylV37xIgBKRGcfj9aC2sD0qxGNCpXcAueRKkIsG3o5oHDI77wLIPRIr5XYCjfSkR/nZyZRWyC
FgmkEIMR9gNKRxSrvEMDEc3zJcSMHI3c/QrqqDJzMoFTietkkpnitbFIlSb3zS06AXnSv04pTVKn
nLy+vpufhDp6qnOZJNKQjsyQ1R8WQYW976s8Lfcd0Ssxl4sBd7B0eljubmgJ+BDIqbqyjXqU9QKe
qWyO/eb2vMg9jU8wwBZgIFNVNBZDb5RIDwYMcP74+ljzn/J1OX6VDCpqSDCkPHpgXZfG8+BhJLVw
4Hucl/1M0QSJRB5sHNzWqkGdnKMJHF5OBoWNCEaMUcl5COr977hGQH42VhDgmJPOV5QZ1bU2lbdT
c4LzOlcbxS2AypCSVPHTuZE8MaMQ3Df1tkwqtLcYzYToG/QJyW4fk/2F461I9YoWER+pj+r1vjAe
dK9QT2va5G+vOVRzPuq99IKHt0zcbg8CK8EZZgGtmc2JqLaYMj4Ra0aXcGvY7I1Hnul1R8y+udaD
O5Cas/EpNT2iN/b5GtyEwHUHJz/sN+boOAZMQTiKSalH/PpUFAOVCa3VWzd7jKL8zIWZxuD4Ldvl
nyZTaCu95g8nLIMy0Xz9vULrdbloobQehMYZSjuzmNkXe101X2dSx1tiPHc6XbzF+cm36NRt9hFq
+CBo1CfBBUPSUJ3zM5C4nZK3aetkJGX5xPoQZFQXS7SL12DepaTWAWYAXlf50JkoEWIMMk1xNHUd
wpxbs4c03EQLmaEmy4/StLEVOL/YCNqOJHs6bOiW2XTeQolTdOEdS4iBaquMo6AcSKwmm4jkTQwM
fK9GGLfKWhEbiQjOd29ZdqHvs5PJJi90Edp2zmW/tQYVLYiOZ16DLNZ8kst69DLz39huiyJrtwZV
5Npus8cu0a3hdWZw7C8decNxl01dMAF/RvdY4Mj0y3+0yUkZvok041kT05z3grjKRwLvKWhuy6PF
XuwDWKHmAXOg725AmRAzJlca888/xZfOvEUt8EQxd81Wt+Tb108lW3F/pCAZTbFvZufCCwNiVmhs
fRa27YIBpQmKCRBoGfIAGTAPbXBkL/VEIgG6kmsJfHN2Uhz/UiR3N0cB6/YyqQa2JHyF9lA5VtL6
EGuaKUAuMqa8NyI1LdtFszAHQM6lAcO9qJ2CijbE+0fbSy6oUF8cQBhnpKXR9N438nE8XTg2XCXw
QTYRJCYX7hDjLh3IjqinNVvwrfeaUzuP5FNj1b94LKt8qULrvA9DxySKDLObrMUxB58J8xWuzexS
pm0OaXZV/zzswpKwQDOAojIHta9Vn0kUhnDfyQ6c1HxkFsMv7TliyE+rL4Gh955l2AA40e27ljAP
wEIiBI23g6KUYUUtrCS3hQ81GMwxNULgM9sMHl6uCEReEcKgIOeKYDmhTcu1d6sY/bVDLWN6hiDV
skagGWeR79/vEiLt1QT+C1KVcT7+tLUv54r41GiQ0olJCaIsH10HR7/3exfsMKjdgtlhlEZvgah8
wAOwvGBOGLhtYsizmcjW0xaCY8IBUMEVIQv/lKb1vzdi/HyzNLP92Bd1LTStmKQRp/VQxaNRmrum
W4RTzJYUCd5bKS5gTjfL98ZKHaJdIQS2SaTWwZIr8nqSY4NbbokvzcbD2PjgHbuVb5RjqlrL1PPz
HjLh+p5llVy5PBxjnPvanxqmzyv5ivezRwNbsruCIWbZnFUgV74Qp17TLPlHamxBMyGQNzc6EuhZ
Z55eNgIO6fwdEdF/1cl5dkN1wBBfU6I4A7HFhYNCOcoNiBvP72aiCuhe/DVulo+ug1vftQs52G4d
zoAMr8161bLr2a4L0srtSRn60SYwfUbD5ICRo6/61NNaL8gIr9neSWJ8rrvYAGRb1dP42pCVFHRv
NcY9AodtkZrRikaql0JznAwYlj7/k5JmbICiO6adGn3r0gnUXdUitP6WhPIad5UBnvrkG5a9DpTD
xGEIsPUgqaExbblsj9iJuspUeNd9gEAJaFe2nw2K54P5TQjkXR1vdUnhigC3ImBJf+yVxWVux/LT
FLFwccbN6gVlmlvTXYGIxqa2NC9oPVO2raPZwqEgatl9h2sevzaIoGS4MKBgGiBCA6s547by7ope
0L6gfWmnYDhjJ1aJ8bwLh+VknVPKhhXwFxwloeBxr1S6zoOg+x12HicYOpNqHE3atVkHGIOvNec8
LvHGGf+tNKnoC67MdJZOA+kQHmJX4D+JG0E72ar3k3I3BO4CsrXRwBDHNsVJFli8UukH816Nx44q
8iM/NMmWwrgTqcTokswLs4dOkCxI2DkcbtGIcuobdJPKrW+WiA64aIpCTHiXmQsF8Fw8MFTIGhub
+UPccIfwuZwnGdlolOqZsbelHMfvQya8gY26h+Ilqh/wSn13FYjwxlQ2WfzNNlvwxuxol18UGQWp
cJJmNqNDVedocAVvssCNmaGGS7Onfvl2iVUM9kbswIGo6vHpxNHGnRB7WKDqiE04N3AAJmVvAOXQ
+5snsx4mkp657z72RCT4K23O7hiyFFFKJKI5Kf17QdK5rHWe6b897SGEEmfd4zIbelbPyuR3Se+u
VaxiCFk5T7QmN9UubJaAmNOQbJZif5jj52IyxHFW3KGRSH7MXWrq4NHLYQQg9QIGb02eiPTkKpMY
DeCs+zQJt+SlKbDcOVM8kgE7yJkoVXsFneqSVIIQx5RZreWxbEsT0VxL5adRpMLp0B4oUlJoBUp2
1svcXbX9cbBV+LQvcLevaIGZjW35X+wRwXnW5AxJlFtl2K16r56qUvkNKJL9a0HCsJTNcvGkl2IL
kbLe5c3il68+MssBQ/R+yD4Q9K1vM4WAnGS+BF/RxV3LG4rus1F2y4yS3oDndeFt1Q9f34TB88Ep
FfM99gdRj8dQysAMVPQa1pLqiB60cTg5GwocXTicOgVDo5/Jz07Qwe7hRNQIv15Big2E9u3m+mw4
mzRxfI34nGlL4YQnKWmbWvKCP9h/9RntXmzUs8Iv4lyXKU4Rsa9tHF6ZbVJ+o8bKwB6wOT6R6Krh
2l49Ovz0dUg6/aW8JwUPvFkjItBikGpoQUp1nzBEGGGbh1Azhhnju+0z2jiIlwJQNGmq/Y3zdqdk
zyFzQtukywXhWE2W8HyeOC9KFmBlEnPGKSvoWudCOOQtSKiQYrCy82Hza5jZVV23IEZuPbMFm1+I
ypQi/ObMRBhRbE5YO+fXpjPipmaVPz1V/zBlMQiDXXp+Me6RTBJCs020UIDerunn6AW+Et6n74An
cYofDLU+VxWhu4UYgJPNMResDlHonFROShRWUHYNo9SpqoFJ9ja91qhVDInw3VpBtK9Srnx6XXYQ
LetHuojha0prYA2dnRqdiIOrx3bcxpWYfWEkCIP1lin10gmkdimYw1vcD75sDSO9RHFwEHXb372P
YDCpSv/GJCX1lEHTxu64pwtbi00CLlY4YhsI/r/KZyOOBLE9Q76oDpa1We0YdYZzNTCd9WyHXaPm
LeFC72sU6H1FJyTxX16yf+FPjPLi0PFuOAGgPkVuXjZbiIWEjpv9dUU5TUrfhNOPmj3NJ/8+QweM
FpY3DJh+BIiVakp7GdFmBm9/ROEhWEDnJTfZVse0ZnDVdKkBWd9oGqnl8I5kiYadkivPngSqBYJC
w6EPNQlToMgAJaU6egrJ6QFHQ7G8Ev0DWcGJNzVjRl34WPnY2XMua1r+33k2SzVn5h/j+Y2fW5Xb
LeFl+yawjORTHtEDmwXXf4931T1Zye9NgDZNGWkcEbjWP8zRjUZxdjs84eULYqEbQguYAmhjd0Uv
NqQc4CxNDCtFlhoGhkDm6v6Fc5SPYZ8JxSDvhSat3ZqGCUN/DJDIeEzY4sEbW3+ToijEBnYVK+xG
C6ECIAO1etQ+zEBXGYDmFUNdIIxc34AH2imG0NIBEWFbE4sGpFcEzJsiqyjVURra1Wcqwohe+tEk
Sdyy8evnqKivqdhCx6Z9xPbxQeJ0bY9y3Q9i2rxxlGq9mkzEF2DAstAgaxAlwh8Tu8Mzw3DL0zh2
G0IhnyI+xRykLE1S41eu65fAm2hs0MzTVql1voLDQF9PC1WcuM8yrtPYRiCpMdwXNOJolUfhmxrf
sDugL4F1kTrrrUDI9BRtUdjBNyWjOcddtxa3v5F+9Qc0yNeXrzYBw3zfIYerbuPtreps0+cj0s1W
xuT65tZNHGaRNZXrDmxIlx9au6pqooE8WDLLFxubPGGm+CbaSTNPfDXbOin9yes2G8LCkNmg/XOq
a0DbVqT2oBvWHFofdXVSJVjRNWJB64TFBxE20qqOba/oOfKSXj1Df/8Rb9jze4oklSoSTphcrHOQ
J44tiUbHWV7prk8U2MopSAbxIwQLbpq1Fn9bmHsROo+3n3m84TBQIXc5cVoDptst9n2/DLIk8UXq
N/DiKEaZysJEZqr3S9lQb2Htal+ocdcCGcFvsU4+tv+pBkC4yuEFdK3nUJn3/AU9Hdn6KFGhg/fl
daSM/v9EIMmA9rkP6s3C0DPfWcZUYfxneDrzj6wiCHvQbtsAwZWU/MEbvSI7qtyDRH1GxSD66jji
2A8c7VZ72dmrJakZN2y+DS56yY/bdcgQRVR8QTQQa55fvEP05WTFwDSGlel70XDWarf0m+fEM2b3
oWJ2/Y3GEIYLNdJ05/nbktMtj84k17CQXn3a9F2ZTgdKzNc25BQA4NRD1/LvNVVaycVvrQ22POX9
G1XoGU/uwfgfAe1kSjaGwFGVdB4ZjhYCiHbs/oTlU0taE2HBB3wea1+G7e3iVADS+Qij+lF32Kwo
1An8+m14AxGNioTGz8QkmVramHGX8Y8oXNZFl71hOrxzV/WsZlrufhCvthSGgcpb8311n5YB6NnS
OUGUs5NA2C6M3UX4eTtiIix1jq9afkqBzFjUqiOgH+THi1gkrKblVz9W6hbJVRY1y/J4OYDndfXa
bk+V2OVqX+pXXz0WkGeoMOf/HTb4SiGlzGLECeQ+if3V3Po7N6Dm5AUT8gTmoT53U0xazrod3ZYz
v6cPUiEkrbMhz0dI5iOGFx6ZsPD0hU2lLYrw5fgPgmzycfDxX8AWGo9+0Bv/VD8TWW912Y2xkQnw
vlqLXio6PrbS8UFMckoPfIsbTLJdnsWVFcsV1yYAh1bxNcKMlG+gz2r/P/u6sFra7nFQK8NKGg7E
Fy4WuXR/SvmAEnYXfzc6sO6aZhoN3C1u3HkduUCqV9mu5suNYyiEjZ029iwbae+JlXb8Z58x3yjU
HRF7tHODdXqkHul0qgKv8JFf77dTsjJ9GNSOrQzxN4pbE4a1dbHPApWrwDzKTutedeqOuHVwcuI+
GY0dFKMXhpq15ochPmlcIFIhcbtOnWFR5rssyDVlZTq6JctaDUAGbA1J3wkNnxTHcS5qijIsJ49o
sJ2dGxqtlulrm6l59qfnKDAaR3+PS86YpviLmK6IJDADczk67dxUtpW3zvz/T5n/iQWJ0XwKkAgy
GLrCsRjROdiydXLqfewWBvR4sUFuZ5Y2WyCzTSIFKZiLOpfvWpMT7wiqMimTnZksen1Rr8UXHRta
jHhl8zHoswBgcQjHBydQwuqJJ6LzFVPd+nDJgcnBweIoJYL6DV7onX4eRx6vG1+/jMQr+DU7ZApl
S5J2XV9R3CQ/VZVwFi+kxunRWHVfnSl61cZh1fcaDS2KS3syTSEmxY1vXPKlBZGkdLKK+erzjAi0
nn2ikspHuJXGrHeUTo+W9qpfT9uaGJGGfOWTXLHipWTWjDWHhxGGJHE3aHy3QUt1hIP6hhxGxCvF
ajuHFwGm6ltT2F5a3j0nHO/oFY6rsKHU14/WVutILQ6S3OWegWPhMd/MFDdlUrqj2Y1gSGhLyxL6
YyXPV9LMZnTKKoUKQgtYuyTVOyJcD4ywWbgUcZBxAOx6Fx8TrGA1CqlYioaHdXcmqUNhE6EDlfkO
sAd+m8F7rmF5WKgGZgxQ4iwZIQDpmmM8hjiGjOu7XsBAtaKkIZd5utSumiv1NE/LpajJPz6KVkne
sJAiKcSxN9SQ094ebhs0Q3cw9MgPYUCMax/pPNQTCnTqrp2S2ZoIbRv0MtydthwJRKRltwKvByzD
x0V3zYaKjL6Q41BhmBTUXeCmbl9MdaS/46qqxlPBLE7S0BSPNqNuNymNgMjBENXYkEer4lRLP2bp
zNYSxYT0bpDfOXJTRiqEb2zmjPOerMopQRLYQbXRDDwqurrgtEA++Y6y9JUH2n6MRoWaHOOIqNmo
oClrmzMGXeU+EJYREwgbu1hmtxginYQCsY1lnT7nCIeKh8loIEuBwnVc/nC3RHy0DcOqPEQPzYnq
X9tBq8Fp+pRzS9+P5JOZVt/sWF5h0sjIlOg4XvDdF0IChcRRJqiYrwBBmZUOYTcGsAaZtg5dxQFr
xuB8T0Nd/96ivRAwkIoQT75JNAG7eaw19JQNXgRTOQNPxzm8i053OQqm7OpfezTNFc1DMrbbKgRo
5CIM9MIDT3GZ3kl0Pw7Yy4YWtECN8zKRrKUlpaxuQ29PRgFkv9m+3uQq/3eEqf5/WWH7bd9qrGnG
TAdrovYhkWcz2yDHY3X2woTGKyfGqk6CPbl/OMKjxzDXS8y2OrlOTm7NaG1+fxTV8xHAKzgzKS1Q
+hujiIBQxhtXvJAY0pNxNDGLWsT1kmbOU9BHn3UOG0DcZv/Ij0RlzzJ/Fal8ZdrO6NTJaBXWkXQY
O8/3UMc6ApVVTZTxX4VVKwW2g6VXCHTRPZlkqvKDzaMigdZN56Zc0Orn2fU8ljR1NpwN+aS0OKBd
+yqbPiiLPEF757v2QlQLyX9JOMQ9+9dGJ58W1Eh5aMrV3EzVBadUrJ/4sBzprmOn0ILRPxUbvCF/
bwMlvWxt+sEBfxhFDzcEj/+POfmp8XxmnOTcphkH7pr3AfdGUaQUxZoG/BFrbEvnASs42fPjVO3Y
pctykAg+oIAQ+6bcUstlEBwqKUs3WtOsMHqFVuliQKchV7yZkWDVlbcJQbdPi58omfqDFW23eDOS
Q1YNycv/RUTnc/MXg3fXaFaf0028z5aZC3G7mAXtZRW2Idp3si6u0yEIz5cqrPYimzVVqAVXiJXs
4XqeuDyxYCeRgkRf/usglJIfWUCPkWhl+i2IrvXsdCnYKZWaumG9xUlwydsgAyowWrl3CD0pdhBG
IP/1ACbSn42Jqctp9yW7SzmJY/mzCZAzbQqVNKsbUoRIyPp+1RfDRFWK/ghxS06HxnOXhWpdlXHh
vI77c4y/745SVtNx5Yh2b+YHK8JrtfwzoplDwifX6OxKHDtmLwam2NmgMRT9hjnpH9Q0SMEfUE81
SvFebmBkBImsZPQ3Fa36kuEKefMFct2JxuEISH6rr9fn/iy24lGm40P+gibQjpCYEm9khOoM2q9K
gkvad8b851mLC8Ogv2jpWEGt6yOpCTRIy29NidjMnUzjTEsgXoQB/1S3J/KQcxx90bK8Uf31g9KO
wR+a3p6c5glJLnjLgft0kppz5KGBUgz5BA53k+Bw20UM3p+H+jNPCJ8Z11mVEjyaFd3AUjc6N6WD
OoZct7JHREklyznj9Nh7JB+zuy8hsUWJKeDlajoUgaNxYWjC2BCXNY33yjtDYa05e2sDXEViojR6
tmlh/9nWqmscrqQ6t+hP+IwHW6Ma/C5FYcg7xGzg2b34Wq9VI8cfUFIp9U93Y49le2qdiev1hwjV
uJqplA/QP+VycPXDFBDZfoS+Yfdec8S0eq86dT3zFJrYJE29iY/IhuD7kZgSD8huyI2tmJ2PMjnW
y4qBUfzP2+Qfncw+K0pftqVhGm3Th2NJ0KVAijlAU1Uj+QhnqnJ9l406UqJkkJZNDk5vwbssaFF1
HMRyAW2HyzvJGlqLAroFaA2/kaEsCS5XMalazQbJ7on+aauJJxuINqItEY+ViZ/PWJzRl6rgLvJq
HH6DAEiyNBhnKyiJVSfsF9UdDFPy8cQT1sImrbTRvxEL7Evr0IDXxGa7DtfdfGFH90mixqTFBt1h
/PeGZ8rwK1SwKAUtzdfeQeAUcVPaXE6BLOtq/SIHycb5Ko8jA7iMwHfCZazYUuUms8QTb43+HZuR
D6ZppsZHYl+i+czlICSTeZkItGzCv1asHrC0OUD1HwD913Nj1n3wnxo9APFJ3Pbf0SUPD4Ophdoh
vH8chqzCOcjPEv1ldLMvJ9MPYDKL+LT+UtKpjjHcOU5vJrSHw63l4P/Rh3pMkqmpOJ+nQcPbIEYY
kzu9qTav+XA0b5QsvdceqrpVIPa4qFkMt3C7wy79EKS29VQhxw5UVZx0uWuaMxyu16eqN59CN541
3LsPZnXbD2zJUOjGFIAc2ti8dAn6z3mJryoEo34ed/pur85HlG3qBDLjyWLbKdOEM0qIMayt6CQF
WesMcKipKH0yAhFKZwD4UYPjT21lhdwutST9re8MoRiLC6wUlCxIJID+pmoixfeqWEZ2xvy/rcuI
z61UaeNKrpP88URr419ZGNLLpc5r7qDzrUO4wYLl3K+lX8O4cWXdV07RVvED6xiB37mfqtYmPRyQ
E8VRjiXvaTJXKaDyal33t8nS1ieO8dhezHUhwkolFUfihsuqnkH2q16R2OSJHy/WKWdLFSibd2oJ
+t+m6D7XckdQryvH7RktXwVoAK6xuiYeEF0zojFMOd1DrDE3DVhzLV5LREyyrDR67tHNiH4oUl+t
ErbLbo8o2nbt229TaQOvjR1v+VX9poHasfa2ulH4gAjtBRkh43KJjRsQXbinYcmIv6zJHimWG7ew
B6R5Hd664DyR8lLJ8RmlUH6O9jje291tzVcJ/6ZdeEFY3lFdkl/whJ1tnqCwaKKvmbKLnHpFKhk1
OV0NQMKzq6v6sck9W+HWNx4u7RgPNf7QRGwfv901IDsFxNqrvmmzVXiRYnZMH5WvG/alEwf1WWkj
duXn+nFpEyj5yQ8lNhyltAK2U6ndcot4VaG/Q12XnQdMcPYoHzEJm25eFjJnozEeT6Pf2Uv1zFQt
3fWPm408YGNhrjjVAnoj/7Ibtj98JdNlMlHMXwBoaN6fmNVnbg3L0SLDAtPHY6AnffqvxnVYzD6G
r9/1L1U62q0o8gGmTBbWmiY44jvZWUA5w5toy+ECxX5QF4jyY4ahs9FaOlcybxB+BpQrJLyb/uFO
RZvv47fbClWYjGAuU5gDXnY7FurWCGtFslw2qk5zaemoWk48aJEXqwRywWMHcQuScgWlVI9eJm57
nVxPrYRJHX32aCEhq0otvyauJIfkd8gvmE5wilfPgcFE/N/IBbSlEixmvU/ARSrydvOlCfN8EnvC
NQaGBTOVjpGj/ZBJCaD7OrugU+/C8Wi353+/uAureHg0dA2egtMnVlxSMQpDb0Cn9tzd/Dyd1/mc
4hDGtWOQOkFZcfuyRVlgcuDYichXWg8FtMzNcmc/0lNZEz575hNa0cI626lLmZ6z08Mc78xee8MI
94uL2JKLJxZcOZQrQVHCqRK1YEOgz9PffAWa6HaG2l7wLZwZohqVycUh3JU8/WUYaadiZvVJXgxD
oGu8OjuoFCV5a7eYJJIjv44CCRJopDnEMj8lbVtTmhUV/E53/WbMjfKJHIbPEuTzYV+RhLxI82+3
zuF8br2jgbxK+S4fAi6eNZo3MKmZoeLuMz01xoreT8urQrtE1chC6ijvhVm/XNPoqL0NfD5eTwk9
EnX+w3uOXJXNQ4TagK+/qwEzQl+fIUdbx6rFYdndFD1fl227AMrwtdG0StB0MW5dpLrdfros9Dqb
c87Zh3+0OQALAffZapInlOTeSFrnQ1NDnloit5C96Mp3uQyixuhXUC3UnzhQeibKbqSVnNkm6bDr
Evt6meZLo48z9yjLI5K+vAaZ2clZoTUzgJPzuNXfdHxiC/zJsOkxsrlLyaYwtyedXBaV+mlQAvfz
Q1o9ZB9hp2wjhkYjGmau856zGgS43CPR1TRtYCFQ70q7zGAFgvCxNhWAwkObIj5Z4B2JClZEKf4R
elncngWVJSJ974Ic1/FR++HIPGSa16R4O4gBBgr2VbdB1Y+BeLWTZCpVWRFxWGykwtKFHZbFEt//
BxoR7bYoRoK79bwZrZjKZBRicx1VpTmjE5zyUR+2luzdRP8kl64YCYhUyIM8xUKvO6LH+UgFI9fB
drmZ1c/2HVeLzvFc+K94YcVP+acVacmoya5KhfktmiaZJWJx8zMcVmEdTMWdxzc5vnG9JrUH9Zxe
rAMOYvdwQ0y7f7iUW/3Qy9iluHhh8jy1lV0i0xB4IEeOM7tKPhqYeymk6jBC2KJbRiAU6Ocgb2tg
YRgxwAq1Me2ct2UbeX3XTgoQaUiuvCtTbhDEjnP7/sHrsaK/JyQTQqjj8D6goUkspeQH2vbVsRSy
b/sSlUtQ7Z5WS9tdlcCBno+7lYs8f66N1cFV4lWqBqAROnN3QnN0wmixlolSgdDIzPojAiiyCWTs
6sjOkriiw+T8X9W0HfAxvb9sncTyiA9pXF65xO+hoaIomtLE0kdqZ3a5f90CHlPet5HwLtjYkqg6
0esd3nvp0Ir30w2LJe6UAhz6zNgqZwRmUnqU0U8cvD7Viye1BLjLjGrfS0szKT8ceuXMLHTQtq57
IfLVtiIXcBkDYKEINJYU+c+D68outhYNU7Tdio7JzEdHkUFV97ENmFZ9urQbolwuEzMvYlMpRuGR
N1ehJJv6Y4efAVnL/OzjeU1wqTXuMq7t5jSuawfMmxOnHSevUQgd9g1lmxyjJw072YT1TUuyojE5
x5GsZP3IRPXWLvbcPQ0/82wRZxo6ab0u4rO+Pz3MgeVB0AyNISIl2LxepcjfozjDNbvzTfTqgYBH
iKIv+8ae3v27g7hbjnwhPwDajJC11vLhGbE2zLz7c2it6JQnfpduGOyyGhkbV0oB+xINo8TFoSsc
buaOCYi1S0+dOieYKvuhTABQ4rUvfPOI1WAWb6soQmZmKeTwhJnuw07ng6+yJDIIM1xQbj8nfXEP
OV2RXmdnPZmAjpVSto7oXn3eO3qCMvnKPvGhD610Ocn0qqEhKwC1BLN07iW6s8iy5uxodlFkkcCs
Y6PFsmKytXJme+GBxN2E87RqeGxixD0edp4xjvrQAz1dLshpWRn7vIdI6jM4ACkgvyatUHI6io16
fwCW1h3O/WbDz/Wp1XG1E8Kz2kTmsMIw2tysI7F45J4lHyMhsEDJ4nxUyIlqgGJz2+ecvSOrg/04
4FAr/7ZKH45MuTNfmnrKTNWjfxCOVUVOoBG4ntr3WRjEnvuemi0bLL9DSft+85dArKVK8o1RQkSJ
9kqGpsAbQcvD1TQXPKpBLkhM+7jYok6LSGhtY4RtB3f8tgTnzqr7dU9Rb0BYM4LY89Ev0lrfg4t/
5GhfH0RGnUoV/AKcTqEmsBSyzE46V1c/X+DatBk70u4gJpgMHkzqJWrRXDy3K7ZFwQawW1G/QLdJ
6FwO8n25ON2OXded65R48yCQgYVBLrERITmrmLig01HrSZDqR+HK/m0Ap7/4mFuonfh4fx2H+Htp
uh1aBzgfW0EWYeempBeZDC5LnIERG0uWgcluhk4tByB50cSeo4J+5joqGAH8syLexbXJ4pNAYLeH
BbGa9jHDwpQq+tbQuFGidb79Y41iqS2lkWanFB+ZsvRT38AA0Jg8+yGuutT5k+qm7SnKSCRaTwIs
AvBhh9N4IgaWuCDqVQNOCtjOO12t+OxlYc049IqVm2ZRh4H9gt68/6h5/xSsm0LSTuo+fnoIUh7T
onAqmpE1ZooVuVm9DFnJR0hfkTuUdrozoQJqzy90DqkjeXjT0gwMXvfqkd80LnCNOYAw2qT1PHZ7
KBHIyOXczuDxwVybxyDJbud8c6a3ecD01C8S6fuEPGtumUtjba0FY2YsFUPc1KhKh64Uc3QQwnNl
UEyivY+DbFD3N48g4GCtDsSTq/nvHdudcOv7JZc8XscQrr92df3+BI/fceonBuzK6FhvywzMOiFz
ENDwT5dkTCJ0HWBfDOcIRGzY0tgr4OmJ0gOdbib/bXN2EkJp7TX4E8rHkEUUstkhgDk2Y02WWuvD
IzJ5q9Gq4UZelhtPl1VICSCEO5zymfItme7A1ZFdwu7LCMtLrXv/Pu1B9peIBJ3/aeUwIg1lT6bk
KGAnhr3C2JGDC4/GlMSZBqHNDCpsONq2RUxUjSxVaUUt/HNn/EnMndtJL7kkCvEzLsRk4eBSeGEr
rXWDc4DJxIGku9wT7/HA3V+tBEHU9HnpDkOwoQQP1sGHqisCWj6FQ0rm409XeuwK5hbgp6fBvLhq
qhR2EOz4j2PZV/fxFMBV7YRqsGjEKPFaVdVjw8a1aSZnB4CCSY1naTH8+g6bpeUXxk5zI8FdY9x9
Mz3WSCpvGwAbGTODrCgElXGZZTZMYk9xi0ZYBukBscFe+xFmFTLYLqGLUcZI+4noDj7gIRyQVDK5
lj/Jg9/LwIizttO6cKdzQQdT5SjDkochCNUNBwnj5/KwXU7uX6mGEF7bk1/MvRqpdiWaAOsQ7te5
CjVqwK/ALZjYV7xWpRokZ42gVYhiZlxMUotHYKvr4ECISpbSvhEZq03JVngfAUAG4Z39xG/jb5if
9XXEQZbaWJjIONgbgQoGX++dQZRs/7veiXdDZMUILFaVCT/YAG7t1UQjbUhLG8H8CLf08+YLwqdS
DdsnmngdEUQISc52dHtVZgHLFHg8BA1rPn03BVVEiCMhTUqDZg+lDd+Yn5T9L+S8ly3pulELMofK
kPiJg/pXAGwL7R24d7F4VFXe07e9xeoCEPL7aKdAd6j4Id2NwQKuKVVpK2KYPFPs4TuCSnmIN+6P
pcd1a0w2Hse1EnPi727gdWoktolhyO2ltyu0Vgm0SWslBfcuoA3KHp9wcwrxDfDpjH1YMyESTVzo
m639s1GZlXKnXkKYxy8O7Ju0LNP8vbx5pbjGfv86JxK0DFjxyQGpNAALTE+K1uABwyIde7d04ya5
X68Rr5iMQhsT+9kGpR+lwZUky0PiKJsi9LEJvemD7KSYcGH6oVplA3VJWdg8sfTLcu6OU7ys9mqE
Xk25EBCNag4ng9wIxg6eTfo80nb7SaE2niG1EejDqE50G+KCeDGxItiqRFsXl3i01+uOEGseuvom
B+6B9gE3hpUIWbN4wmmEJNaGUYxnV0MpTREkJ29WWzMjdv2/DHtiJLiIVzh0KgTinHEO7uyc9Fya
tEVXaaNK7YRl7CxZywq1TvpjcXNfuT19+uZUB6Ozxya8HVag8RivHthIx6XnjG6cf192WQOMc7SI
E9Kf3vuWp0nJKsE/e3jvgcXUXrP7ZoSPXuuti3fN8OT/FgfK6tsN57PXcFidBLOTq4lDvOA6M70J
6ASQga6oJGBorORoG70RKW/snDOX5Wpo6bd5DSUO10/J0uuK0FNhUlDnvJPNG1zwDeHvymlfehTM
Be51+PSOSUceM2BqNqGiCdQVFJ+noIMuiUOH/yoFTlTzj6VXFz9ET3Y2zL+vTij+7sCUpdMjtunZ
bKCv0zZzEqyVsXOS+qL33d7utYCDL4W61j/uuqhre/wNAIjYjagzxJL4XxeJRPC6qg9xGWxsDAnV
YYxqvE9TgMxz9WM4+QJ1M9uhBWpxeqOSAXcG6uLIBSi+u4OQm2Og1ECp+yciq1BTL4+y2nNKj5f+
wXLb/YZKVZrEwhpjz37+LF1mLBrKvp/ymqvwFwHF9OAXKVNLEUZZj1I9si0zHDMjNMYIQgj043ki
khBjGZ65NT/akw67PU9iOsxDHlhrNd9923ezZ/Zs6R+ifAiU5uBeMyK3eTuihIOn/7GY++6xtJuT
vewrqocacE5OUK5JgCp7jmJjgtHUGKz7f0pfFr6PZn4HCsTUzV1CFzCFaPQvca5V6SHM/Ceyrguo
TPTX3tQV9onsfdmX0qaU4v55MwqBf9U9C+qbeP7isYrr1zZLF1cEX9a6aHElwLXH+OZAQIs6HjrE
0CNVdwFxiZupGfewH76Ls7w9BmKi5MJVrpCSHBApafdyAyBKvAiZ0J9CE1gKKTY1ag6ndbjatGZF
dh2v1BpU009o7t6kCHciKQRLoL5wZJ1bXPJxE1IJoyJiXoZ4KH/T17frztXA5+YU7Ba5CnXIAkhU
231EeYhVq6utJlG0cDRPV1ReSRQi2Gi+V2bLUqIawAfMrGVmnLTrkrAAp8XPtgTdEtVjJBHvOiyN
yW6SKfz6tJ/ixTQbP/V4cpRI60x8epxANw+LZrpL2SyX1P7f4l2cjZhwZAwm2m5HlkanYgV+Xbes
/rcayne0aRxrf+GlC2rVee4KEbm5YjZu5L50HngqrXYj1iboAfVDyM7pjEPUuNXykfyvfAygsIlb
M8wb5ABdcK9wWs462Wz4PeZH5phVT8Xf0T5PXkAwbUtU51rmG+Bvdr7/WM5fSHFQ4k6ifxyH/9Sq
BXE8eAY7231z535JOuc2Mua71auPgs4bspzXwRcafQwTwZifpxd2BtxJrH6O1hS6eqKH7086A2od
QHvPkupMpBdOOXQlO/9JKKlBlk3jnyuXLqexd14w9LGqhU8+KSuuJ2KDC+qF1az6YEuCynWHBdV5
2wR+JIcBbIKs5tcCdruuhbIvNMoNdoTZQfqfZz2ZbQ4gml9pe0XHtdhGesTmMVUZsjprLLP3ac0/
RBQUxPonFrDK7cu5nMA85t4b5xjHvOcqvFkwUBBiTfbojqNNEYyI3LctWeQ8H5mlV7FgbBy9Ukn5
2c/1bKgzAr0SSCprR2Dyhl6tTT1DrijXTSd3WDAp1sjPMOcckGtYqEki3Wic2WbpTndFXQy+NDnq
oAk4y6AVL2Ar4uvobQ0xykA667b58wnHVgX+gT1A1b7YEo7AnEDAT8MDY1At8i5l1JzSqjEdHhZf
ZMntZlOdtdGDK1ehPmPvqXR5+ZgHs92hCAlF3n1MNutbpu0KUXihnkK9qpLn47nRSM+oeRa2f515
a6z9Kh4Pj97CXMsPxTQZuL4bKJrdXAUqiZsBpW12Gr7hXWq0ZjJ77rPEB5BOPZqJi9GgNs9xjKn1
gNded6UGIpyvWS6EVR+w1RZGwCx7w/WPPhAwltyxUpNTrVLsn+ATD6Fs+pUYyn6+k+RaUH0NMoVo
I7J8+wPkeeyxLoiMnloPC8poXpbyJv7DyXdo4ONTmRdKSLdiWerFHnlimxzzZIHTv3iPgeYtga+C
PGxLD5pbmGxQNulUTx8cHHfyHeBaRHaubulxD2BAeikCo7njrUOFmmdLT4WA/iKQ50kQep4Rz+6w
B0FaBHns00dbnJoPpY3F4riuedNBGKFu6Z6rMcgGAcqRyXwCP8ugZhl2Lm6eeCl1KuX/SMYFd6BX
PeGkw/YkTe8qQ/PtZZ9kspd/7XeS+9YvKBtKIV7i4a5Rpo9UMkuTSep+MZDqVcavK8H/+waE9aUc
bUA1VTqeR2eqLtFIHO6qpp60YsflT0qZwNhH6vawY99QCSlP6kHyocV3J/bOsSL1X0B2d7ltIJoZ
7NX82rc5sHSUSMtrbdo/CyxzsU/pBuWqc9MA7n2GPqfpdHZKcuACiLZDCLKllsr2d3Dgsv1kv1Oj
XJDbOOOjKjlP0kxFIftReKqmzWNyE/+WsL5aMv/oM17mcVhys9vDIYrq2wgADiITIMQSFeqbA19X
C1SIZGREyVTij1k/OmVxtxL0lsBWZEfgsSZfRtXnvZCnYvLqXd+TganJJOKtj6W5GfrV2zOWRfAw
nT/7htT3XovFwLhO3QHtQxP7wIfjTYM5we3nGqsMzRCfFGw8LJ5HqSEaoEo5ccUq8ycO6jv7Scls
GvBJ6LbYtE9PShwmIwBT1Wu9jfm447mNVhgHt+Gy6QShBxWxb+LfkqluY4kT2F2hy4nOIrjtG9C0
+3LGP47sGbWXbSrkg8Ron0rdBcjoGF3og5uWF5UoKss1mM02xWAdjX9vbQIPmA3wMWOh5TlE0+iT
nEKre4SJ5XnWMtR+sgfD/50/iwDmY3edlAhwJen6xdzHulvRhxm+S7l12R2IMzChPi2L4FH+Pbdc
xq7lHvvqLYHEyI+IGSprBAvDC7dBXDMKUEWm4SfvJxIspnIp/nBXZy0YW9BYR6LdDOiHEKtgZovC
grAUGHMTbJXnYzLgl50UVxoWBimgQN0bSa/wQ92PmzpIw0XLGFig6EfO+s+mL0Qsta8NUrTuTrXB
aJqR+jugXphB7S/PT3DWRYwQZny/cIOUBjICvyG1bdJzktr92B7GT6DZpPcSvoB311jDYjqKGuGM
nR4naHzcTyo/aE/dgEh9yvE+FPze7yUnNatQuu5EsOEDlSlGUf2dCOWv7ptnyvXJ0QnFY6x9qVDS
AIwKDYrrNMhZQXmRlXOb87pT8IvEL7XlG4KsZvdjNfmXLY3G4kEGs0X+mYVswqPfYhy63KzbmNwY
DkovvuCJG3UsSCgMP0PAmPjyrmdKHxMdOMLqh/NRSb6i0fYyeI1k/fozWAfh6EX2mmDIIB7k8b5L
pavzkXcai6PiA9EmUg9oq3Rl+JfHjANg/xdkx6ahWmSdaKXLkG9KXlte0rDPPw7hiMFJYD8RYjg9
//sXriavk4qJlR52mbjB1dtvkLsvvxZ+1hldTDhvvaC7HpUoXy0Bvu9yHNd8nZ9GhjaJccZB5ci1
GasQramUsgY2ZRIf2U2ZuIJKUmjbPcdfJ0lM0+lNp4Vn/4S3BORO7AAuOyAR8ra3DXnitPbewkRw
WYbmcYJCp+YIPaKZII13q7NW2cUus2fTrI5bkPLzmtU0xF+IYPQ00nINYW69japaU72/Bm/mZaRf
OASrRimMdYctG7LZzVPilV2CoF/1yWXbVPbHupEKFhR+T8tqV1d1kV7i8LaZo+WYE0/R9t/Gb58/
Nl5wDO8JT1M76FMGKpTDSHtrI2mJQzlcIpQcLKWggklk24bnJG8J3V/CGwRCXf7Acc+0VKnKz487
RPSwgGYlgX0wfbIGrF52J0PFdgooxKH5tvNtzsnWZdrTDgN/pzH0tNgIoJvpDRUt6P+M75kdsqDR
zYopZ712JcZ/f54FU60iM8oINljr16ZrdabO7SD4rZdUzUhOJFfydzPHL9M71yVS94dsobb2eVIb
vLqTKJw9w0Xk0CfdljzRKt1Mw/IcQeDzEn3I7+fSW1jLf79ciFtVxdiIXcWrX6nHoTXzVvoYxDWE
R8CRh2Ra+4msE4sWPsB1kddV71uQvmV6+9FUDEM3XYT44GNdSP3lREHNTkmQ5yzvSBNg6iGt4Ux6
i9O1Qrow+wLJGqFmF6PjbRuSYX7kUu6uvomWud3A6hOLbvEroEzlPFzRvDmyi5ZQ1NNFEgBaOx14
9m5ofDKZFyXLvamiwIxezqQXWwYYEqSJx+RXuM0q0875njijel/Eko0aRRaGOgWKb9tIJFxTyRba
vmOJrEqAw+/F0c2jTAxNWd2N5vEXbkwWZ0MQMskpZVzhT5+JBxa+Pi0a6KUhNFJY6oRCJdPuF78q
hzdlBn12/2FbTm+IvMQabSAgbq6JTk2Qx9+8VoeZG8L0+SpaKsLwscRFFIQklINyHHXQ3o/ONKlP
t31FOZ7mU4QZ/jnKik66eizHzhIAzf00ZVEjJCKTe+QCzG15mJ95lxteVqtTPkitWqrjaiiArW6W
lWaXNktlZxJ7A8L1yqz0afxqYtRDE+gNoDZq25gJWP5qwLpUNKFsr19sIS70FeavzHQPpXDMEUBn
OxzvcRCePaZ0NIOzGWdzN8w0eO1zq//LYzi6Tr2yMTqkjW8R2wk9wvV5NbQsEITUae5iXbfX3kkH
ovYQgcSQ8GJv/mfYrxwLHP8VXO0vjY2nphJ/Wi3UAw78vWzuIqacVNHiJH/shtVMOood6AiSnj/A
AyNOcVoMc9p0xIXgVayySQjjNFXJswAPmh4XE78nyEC4Ir59gThzagtEaNK32Ffsw+tDZ5s492gJ
a0xA+komrty7f5p1vJ4G3O+86WczpmUbXFdNNBuVoqBagbu+zQkk6gkOpUdJ5PIzrMaJHbSNAu+i
nTyP/+XQnEiEJ/u42G2qgR4csPZaI/mFWa271QqVJl8LdCShPgT3wI3eJGT2NX45sJMglI1s0UHw
esyd0nnWwbyXc6NFq8Sdm6Iu1qXG8Y2Xdjrn57klYy2805stlMQrtNNWxCfwF7A8kakEftwiyzQL
CpInIk2N6N96sMvdzgL/JI0XKtKfDtChkozNzl15bPTRtXpZnaqHAYltBd0/tbjl8/pWaqDq91x6
HYgyDtowfE6lrNBY92lBKSYxP/4Bn3BOu2SIm84OxYP6D+4pbI4lwM8oFSZ655khcTDOs+Yw/gvj
Z2+oTdLaD0V9OLXXKOyBgjFi2w6WmHsyQRFKPL+wLpTYS6trh6w+OykOKYxHmsh49WhYvymyhFxu
5WUx9Z85FZ6iKHayOShk16fN1LCJB787vspPBehdSXBv7HpYMJRdZvULbdenjaw5xzmIOirXyh3Z
KkQDRdHwBWmasij57BSSiAuy2QUmm30NcDwCRjwZDvFjx8q+FCj+JHK8qBnC6ZoxaXntPfjjXg/O
ku2SwL7xTLq69NC/hao5MluOVhzq7+Upnh7U+/r2MYfpRHafsheuPqs8LhMeFu0W5qihGM5dPya7
oVrtLZZRJAvCPFzf0ShA9ytjI+YfMbvq1fE0vF/oL8nQHyG217SW66X3gDuoO6XIHEFu+F8nPfnM
QF9bW2lDVkalQVZYtKT5pnNX1Gev/9gcFyv5HabeGBRMTZc4VxRJk3kaO2sc/m6alt/jeqp1jAJ3
8zQfZOoX4E7X/sAcI/uYCMOQC6ZIo9SQqR0mrDykKh0HJM/eKHa4opNU3D1hbNki2YZIp/STov3n
B7l74/kWUr7w8Hv3tvkNjIHd+MoV6WtSkmBN+trrBiaIt4Cgqm1brzU3tBmoBbZiGIb1Bv0+W9zB
ZFdIpYI6g2T+IKoAuDfTO7NuqfTTG7t3QQGvjLsttZldUuPyjBPCQ02a29s3512t1ys+M+XoNEVC
Zwr39XwQkeleR+2CDDRBpnW6TbiVR6N6u3M7GlxqBB4X3S3PMZ1+OVU3NHsr9UcqNnyo/dWZoDJJ
cCpAwzCYnsw9Nsh3Ad+ZzTvqhY4qt8L/ZWLwrNO5NFKYoog9tbvNmboLUtDLW0j5nGAyyvmKltV/
ztHIYM7lc/GNH3QJMdMKVWWCtKF5wXsAypPoeP+uUZSHbcg7wwfTH4duPzkUlb5uYY8QBQpWjOc1
c8vGPErSCW3wKN4LazbqXrTWgNm31t4KZMukmKHAzKV8LT6z+FPNAJNdH+cHvxkuHd/GR88OQ3R8
f8nRNbjt51A1QMrPhbwP4pifoU1ul2XkIQW30IGEj2jUVwjDj3/QwgfLC55RnHqQs+bWVPQA04Ge
pxSdCokibDc7QF1HxdKH6ayFOQES/koFMdRYLE4nRE0CbjcfudAmi7WbvozFerRndhpg5t+xbcqK
AbMqJ8cVe7ZpvSlQ87Qy+znU9YPB+t37l6qLwTz+9YKY4j1hyBJHVopScYzx0IL+FJuZGkKvEMLD
ZloPBmDNFDVdnpMOgsNODCC15WITAOuHtocDCjkmmBTyz55hUUOA4egK9pf4efxlSVVSDIoVOjBR
diB6CCqd9/p7Li7DokUBCTMnIM6Hcgv9cfcgUrhy0xPL9pg2AGm+SbKJClUG7rq+1P+2woC0LCt4
vead316ggdZsrSUKcmSBmM+qV5MI8Fr9ln+b/tgeOWUfihrtcFQXQcrfqY2BwzOtl1RCKrKf8nuX
AyF+6BrO2Uur+GYawLqGnj9mX3CI/5bDs8fdeiv6n3CATxPntZdtUw+BTHiA/t5fdI8q2VVtbGfk
CLpUAVAcVZPuqoIG1fedoo+JCR9xAoBmL7OAWWoVo66fp4j2oizGEd63qgYE10o58069AvUOwVFk
+6fV+9Sb/yzwhM7I6h+V1SpBEaC+IJoYRkkcPXqpnAnpegzqJiSbblVYtfg6aibTip6pxVYBVh27
VzFamJJAwGFxBRJV0SluQ5GdueYJRVxYpEcn72kmAjqp/6CjTPdR0EVmLOEk8shE3Hothm1ZseW+
ytjNcVdpY6rHLDfjK85FIzWKWnO3O0PhDg+udGTY86eWjp4+Hfbhd7zYSx6Rztxk4xEBBx+UjmGZ
0Bg9o5O2BJu/t4bFcZgU0GosIzuK5nx6Ipi05a2lt/bf6vYKoKRFm/J6Wsb87LuGmwA2EKheY4gd
dTcsySYC+mhtrQ91V/FCJZcuYLoNXfIA6cKIQRJbMwFEYDx26K4KPCEqCbJXGGilkPVjWA/deQ6z
uNwIg8cn2DbKOBgskS1AfyWdys7lXmGDbyPCed/ES0e49npjuqx7+5d9Gs6yykDqyv33l6UicfgY
r2KoUiUqHtSuZF2Ic3E6E+xjgcY5AI8FN86VXKvaDJ09+Ya0rpxaYHCoJjG1z5CVbpBKORA/27x4
VU3gnDzCLZ1AGUBw398Lbg/RKYnaGZ/dDhtweAKNOmrt3RXips30rlIJZPVrSzorcAsz1ikooqIN
Sfx1LS/PvaeClqIbnBTqoAmSiznXOzY+lXdgCAbDoP9O8J/72wmbqGLbHnFYm4oslcmez1AeWDeM
pRcRNQUdzetQe2lqL5J11yKeiJgRja1AX36ltrSY7XxIIVTLUVNBsG8JqLg140fEisEFoLZD++ts
3xkd5p4RDvGQO8fUDtJiz9HdhCOxILNu+QbQAIdhcrz4QTVTbm5roLDRN6KQb+NZUZSXdL5b1cgt
5k9fyvz62nEareqmLU/I3npkODlQps5jktUdbkNW/PoDThFglK4H8LZdE4ay5cseyBTeyCpaVOdB
pQ1Lz04RC2l1lbDv0hCoYkEMe5x7F9sfHwmi+xx/0pSyRyAN1luIRvi3rPRucWTcTvIzXtwDxkd0
bpbHtdN4MAP9vExn16OoTGba+ziNog1DdGA6waNlOMyUMFwU6sQrWLn9gi4/IDC6Mx8aC0iJSM0I
1Dp01O/iy5/6oFN0KQ8dM0aePW38wcB9dmK/JS/OGGCtjIl909MndzECmhb+UpDGMoH8ePVogy03
zkZmXhfglSfIaBl2vfvSNtPv9pR9FPCo7zhMJHEsN9ZTNNgBqNsh+TmAahHXyjDfUKe3ssMVYpMJ
T88iwIeEiPU3nXk8Sb1pkPcbczrMCW9FlY4qWe/SSoaUwyWfw5i0N21TZwk5bfwhJKYQEz//te5h
G7rU3PgMRgYHTHyJqKt6mo2eMesFjkrpowuUFzvaroL5A1FzbZ6cdCxyt8eO7v2TT+KR04YJC4sH
mVdvRW0FK0fwjJFxmdxZ+M0qFJbR4S1jaSYQ48/uzKQxYo/NjnBHnkQ2bI79MGrLB1CPzUlv/QF5
JflPgsFSlpH54dGG6xl0ujcoQk5YsCXQYX2nYjxZt+s9gizDD6mV/ieAhbxYPRwQLLVFs/zOMFwa
D3HIP8d4+WyKx7S9LlHUMcNNe4OjcLkH62JQLm4TxyyCwZ+W+E71S/XGQE7KOVCnCN7MkmVb/Iry
TBzfzF37LPFwZ7hha8yNxa0T5hx28KYaZpT9Y35jeGZUgDX1afEdhB8zNUd3Znm1Q1IwKIkggbVE
MKF29bhR4JVkmAOL+e16Vzj9rBRXA3b8eLToJ0ZIWHTzxVobhtfSRCbWaz/r9Zf0S2iyBcU8lSJn
eBEdfF2QjsQG7+1AA/VR0l9K/jxgmvZIiKmxb0CXWKeg+Xw7UJcUZ6kPDm2yHAEI8opaw1n2jZAQ
lHIFVFY7znJWTsEC+etKUklzMnbG9ldlPBLp4rOgwi3J5epWOE6yzPdqIUUaZc2ha1gHGFNIuf5m
sjeYmM1XGHZlCzFzjAsNd2lw+zkn5qlQIQTOSy5VlvF+uud7vi1KqoEuqYBVWywHyYYGmFCoZ/YE
z9gSr7jQfVm/r8yvwqqA+w54igPqvEbzT2G+hmvAH2ZUizsI+PYjpzgP1R1CMJPMgOLUDPy0GeAR
ewWTkcqWb2uKpDZqipD8d/VCPUf6z4npRJPnk+KBzqxPfkOj0WIqzxHqNctOZJpxIcTRxfIpFyps
Oc5pE5SBe3zGnaO1dbc3LYqPEW7udIl8uzkHiPOuPYXNTdC6ykNMvbczdZ6UTv+jIK6v94y1+I6N
j/CvauWg8kIEd+n08TMt9KoHXZJIoZhSgBtBv6yZjC8oXkMD2sA1efkU2XWNwNNHu9eTcPpInG9R
UlhpwggdQ4EVEybizIJPqHfePexNZWbbJFMZKanRgoC06Y6PMgSIOXbuC/M3d1r4LR1eo2Z50m1H
kYmVetEHmU++XK6d5VT1lmg3+js4Egfe4eqv2X7+015cx7f+RGS4BNqkwBI7XMzuoU8OeaYIbQm7
7RV/4mOsByRb9UD4AJTplPzvll/ElY8/oYQ7B7f15OtmD/tJKO7IYGThiO+8ZswVq1Id1ciBe+YA
NaHuYl9EJbavDMq1Y6UIWaFofhMGL1V+IdIoaN3Re6IRMDK/GUo6YQDJHZ+gZaqN5C+NinFvDX//
xkiEKYBAEXJa1h27Zo09jwBin9kz9J0R+HqB0UpSgJB2yg4fb1+O1znIm5aKy+Iv8tWi/bQQMn1i
tDkzH4bE3Sbf7sStFbAZUYssTL5Szo5XXxrzdM8D1o9e2Et78i1VJaRZvNBLol3Nfx11T3y5m/of
KsVOi094/AEfmQKqht7nlElbfncxDtHUjrrkejgFqdIH+jZ/1KyNBBg4XhPTwmU1WIQXk/4/ferd
QrsXrSbGLw2ljc+O03V0fnUFf/SHUKVjeLuZ2wK4OJZjPljIGdWDDF1gJkpss7/c8LYQmVL2kAud
tzg6u5kPO5O1CRLSkpuHYWIqwwdf5cD2zRVHBAWNJHHNxHIRgFff/C6dE/ag/g0EyPAy65WNBs5t
6+1ocXieq5xaMIvs2AAAu7tQEnsASfFcYgZM0bh92fTGiREtsAKCJrIeak+VQx/dA+ZPfwi0M6Do
1nBdML8Go7+8sTeLBBo0hmDOO/3+bn0IINVbMh22+j7Z1P0yrMLCHjMt+057rJGaJj14JjyE5Aoe
EeJD7zGJmAuG63SHlRA+KKbp9NBmVbjip+mRc47nW8BgqKQ09aKhEwoRBtZp7TdlCm/Ge+pQHfj2
wJqcvBeFud/YSCRf4578VtpLU0NunoEEPjrKoKmOrtih7TlmwQYAud2Li2D7VfW7HblWdMCVyjYC
XwMdpqJtc51PdMyTViKXFj6A854OGBsiXjuu3SotAH3Z0P+6/yhEghTVOXNp2pPGePzqRKl+5aVB
U7trjau6IK7Rln5GDeOXH0HmpRaaHY9AWsNmhSXtMpRxPxPScfoK5ehfgsYeMe2Wt37maAkr4kMc
Ki9ld6gxeDkl/vzJ5SatWKGPB8ye8tZiUlj/mgApH9X4vStSO/t9ksGBKTyuFhN56RXuJ2y7QgAv
nFYmS8ThFWgiFcj5M59xoCyW3MiPtQGavjWiDjImzbKyDtmrxwybBIJvF6UVW6yziEdV3V2HwNUx
MMxtk+1IhpX3RRVra9V0SJyqfNTuy6Di7bxcmzTECWOjZJ6qLKfgTKMzQZmUEFQhwcaWat98VdKB
nRTsJO9NF1QprkE+Ig066utNYtaypTj0nmIk8XWYDGR5D+ze1VVniwImloUoWYe7S0agqzwuQA00
tY84IJGdKDIR1REWmcbmnP9VcKwvOgv22V7TGLbrgIY+h9OVjv+KUBAhzyPhhB8j/sm/hjJpNZ77
OcRtjmpQanIVxldnYBsKJBx1LwJPihgFZUaCUS9Oq10w5C/XBIBgYgvEHL0SFxqOrkprVL1AI8P/
wrzdDJttlbBXu4ezyGT+heZSWh94qn2/jHu1k+iRLVDrP0k/4raMpoSlUqeot7EuLviefsXuL9xh
KI4jxqg8pVr9fqyLlTA+HtfmOl2cfLQS4+QoiOQ9otSyI+QDJil62XiWA2UJ/o6hcpGD8Vz748yK
HV0WnmTc0aYRWFS2FdvKhQzXYLp6fTY9Tj5Lt2jG9qdJNe5KChF3PR4DFj6sbZHjNLGkj7+/gJFV
RGBJWOzxr9SxHwO1Nm8ScWaJm3UnxztKbOjXEQ50nHkKc61QqGTNwCXfgcBIYu5cRtNrn717X58B
wqGqbKVM21hAbvS+9DJIFME6CQKFRpFh7KVsZ2C8s2i82rMsbIeywxVcrYVo6YRGFkO+4ZHgd5Ic
sZQWu4QZo8J9LKTN9GWWuNZ2cyTVAnrANgumdsi+1gvqafcPqErqerh0dAGIlrLO1wOYzo51aTkR
6gPu2F5VYNhQwXc1emvuH+LXLc3w61DgMFCAvJ9wljq69GJrNUh+x+iXDuCVQG7smZFQzFcxQtav
uicaXJDbjS5AcnPj55WuDjVWn6zS9paRrwBQPI+QTiIXp4+e/FaRBL6NKJKwX3k/TrZEAIEG+RlH
N587PcyHWYuJbyNUBwoAifsapizX4WwtuOrfe0Iw5yE4XWAHwXW3pQbgFR7R5IKwgC2ldXM2m+S9
VNYSEI3TfiWHRosuniYIw0V3AhbiOAaxBomkAEuuvndWvVbaeOKab6sQ5xwXMSWX3BOyydLC5/uk
RrH1+VPmXsb4n1Ajy9uScmng1L1jovF923zPfFGikvP9xjodAYU4kmW6LqmICnYtauhzsG71cH/o
SfQIt50C/qNwgtL1xptqc2FYC005/mV8XQ5G0h1oL8qOVMp4esQISicVXFgnQYRtqqV+XXZfCywx
HvDSCQ7+mjBRC+4JINnMx4xRTdvGBxjydMIf296dsPt/lwNKRl8Ty83lG/DOt1lC1+8wBrYR10Or
pK9eqjNLPAiIyB4M7Jcp3IEZmbA/yEa1ZbW7Fi2c1lzBUXHjyROJvl6TENqptPL5LA1Ga9H9wI9m
VPuombxXMfH5UUSuWQpMlIqyVS+i/9lM5fcsSbWQTwEMd+v9QrHZHpHZxFeaenA6QjWuKNXT0RA/
YEsBYkx8WzIYUd3yAAAmk84pyG6xhaSVpMqPgT7hWZs+e3gUyiK+O8VlqCfD9dOEjTmLe070b6MJ
3NGeR6MMbLr+obGutdANr9rgStX2CEBmoMNKqnyxCunwva7MNG7KBQp1nlimDoxwZLLxJLjfvaLl
4HwAFoa4CrWz2fMTfDxjnOB3KLAuWU8nvHo8OFtlgaVNjLZTaAUjlZNRv+AcgOLsJpItwiVHcV50
Uy8SXKpLjtcNJgoyrdPSOuYvrM3P/zPPIHZQPxmUTRsDp7T+oy57K5g7DERvGb90HjsHr/+jjT5O
pf4JPsM1SBXWl+I17ZdJlvib1v3bB+OPRb38ii/e6aUJviLR6ngFpt8Rfi0XZtn4zwdS9qQoMNEk
3UEKxMg8FseAhi9JuPZssbq1QaAeaBuMh0GEAZuaVPaWN8JspVIXOWQRWIFN++zOOi9YMdZb6p9l
yuB0zgIwRIoEOG8/2/bCzbDkoRXKixCuFU5i0MZ1BtneGDpWGeX9Wbl5KCBUhYkKBMNUzajuSvo4
RydDggF8B63LTKGOZJDbEUL4XEwQAk+M2Ei5ZyKE7u0NNKEIAovpC/Kvibthac9uTr64sco09jWC
m5nwzG5miWKpo0x0ujbU6yFjFSWnDakWaFQCoW3h+lTBKmwwnsZxZBd6PwUs9HbHIXtw5l9bJm+D
nC2BFKZIgqRfrFIYq1L5wtF6gcHtwm/B4hZGJHCA1zm8erGNf0sH191iWHS1rd4RTxk+e3SLLeuQ
jSvebyX0L/yX00d7aDlpHRVX6pj1E/c4GWSy1EQbzDEOQLWNp8ggvXMiTnZNM7wC+gAgOYUdFNgw
S6iRX56T/Kz8E5Wh1LJRFe9I4Lj/KIuscLEnU6eMhbh3/TmpyFuDdCeJD1bdj5pmJ/hLyz+QNdDj
OK3zExP2ShyIdv2kixW749Wo8UL2ah9W7gcVdyjVpKDk4TBgQaGgryvwz6WYxnUETW+Zgt0XJdrh
TEr23wzJ3oksgNcDWZsPZ41byRWHoMXNIHPnXei+N5XrbErz80T+0ZEDBwSmTon8EXLf97mINCQa
KGnaFVZSI3+0+4wiu7G4MB2W5/ucNOmiHEoflq83d6Z/qJwTDBzFxlqk+DcgmBWGFXAtaItOexb7
PTQnmzWGQ9ybJ9MMQToniXtG4YcSbVkZX/C8MA3NCrQxw9+doZdNYBAuExsD5OijWV0yIjFCM/Ff
GlqAvzbpRrxRnt/tgFBZyWwtjeSSAJ+5TNHIL7WGRO4Cl9sShLyksPrh/CVDu5IKzTPG+Wua9X1z
gLu2b84hovKwLDAaQo1wGb701JShholRNFO0U8jRVvGBcZKxR8HWcU59LyNIlXzkA7fA8CLBhM1/
0szDs/fVQoXwqZEZPedTHIteipglQ/IQGLgAWZlD3BTbeBKSGZCc2cg4LDkb8qyrFD6WFitRp3m9
lCU0sx5qRZuMnjvmcPUoMC44jRwSmxJblccUMzZcvSjRCKQ4+ye5k4imz+WAicocX3kx+WefoFB1
2dP6LZ9eS5GLA02OlMg1t9VVKeXRG62H/kiHaIvnMsaDBV7rX0AjcuS0SG63kfRKm1C6UHEGeBjX
BzaA7p6SdokltHG6/Xd5ER7B1o/CIzCoqMoM8fQBeOrF6/8SVcTMhTpxqSHgXDgpU/deTJSA0wUU
5nJXMuWx/XIlPBMNHLsI5IgbqQ29w1uW6zNnPFwDYCnlFs2pWhE019ViCOvrrOARFS2Y/I0KQmOK
1xQdmA71TTPaIYUhpd3o4qjbNQNkNQmeky+Bi6rE/M23xWDjmR6bZ+R1nEPcIBBUcTkinbRKTI+/
PiHCQN4CBR9gjOgbVqE8JYGROzUcPB4S0r6LdQ94FqyrpEJ6VmsEuZkVtReHxnOuCoFJpKHDy8kM
2uKMUcfT7/lRb2/UYSSl+14BuvUU3P92qoeCuQQAOEnHW6aOU0x8Ap+KiJJLg2EvOkUpH6jDsZ0W
fr3jsrnepq0D9ulA+TTZGPtl2lK/Bhst6nzRiJLqrYhOwSibM8RtY7ew1wUUUdQujm5xqkZDsYy2
eosYpLNBqj1NcNdNWo7lQjBMruX+dcI62+yVy9hrqPidDOgFcEokvl5Z5/HTqtOZoij28m+rn8cy
AdqcufwMozS18mOw2CHamM/NV14abxwqfG6xUpbBmEm1cLiGGbBMF/qbx91sTG5W5SIlJZ1oZYK9
u8HXSZxuyCXV5AXDeNn/JGXNPJvkb+q7rIPFDo3WTryyVvXVUHYM7xzXsx99djgAW8jJ16bgYp7w
Pao5eFwzCv8GZDOPCWMcGakTE1xT/oW7etRWebtihZHScLKaJealSBK5gN4n3tRda1EodC2Kgv9V
FoRJTq1Jk2ihFODXm64ax+CUJGYfa8X5B0eQr8ZIyr9tzhTyhCzxEwMkRa/4bAq456Op4qIlWSD2
rgBi1Lrh1ru7uYbdEP0BN6LF2G+bYLPO/KdgI8lsO/gaRmGXubRjlcNnvf8uG3M9j7x5Sh8Qsz49
Mfbn87jIJ6vmX/LULX10+53afO54DjEYEI8k/uGhSx5WbmeIaygi7Osatpyzz3F85cQsGrw3arjv
LLMxsn7t8ZCyViuqvyG5HyJdaDsiZLKonxMmGuTnbkwK2MnyiHzJZ5+Ib2rlvXlcf5uAcLxTjJnV
ER4ISG840kiMtomrjWA36Kv+ozZlxvlmQS7P3vFvnfG04kNBRsD/zJ+ZFalDDaJuHl3y2iCgV3+v
08hiy184cHLbXP3sB3of9sc+qxfAtY95NfmgB6mtFKYjYrigwRSMeL0BsLS1LM9U5IDYYFw+Tly4
2LxuOJewEQE1TuvAqdb4wH9A7hL5qr/Pen68bRP3rmPfiGR3qViC4fjF7bTaChmXEHnXZLS31Qun
P8zGKhZ7LsVTtqPLHOkzkVq2ZtVOid/Y0gVDHH6VxZ7XxpS2G9mhJ89IYJmSsd+4DT5FdbpVrBZB
Qk8UWh2OukKpAbr7Pqs8k5bThNCM6Q6bN046BSnhRIGfU51eY9hDJKwFThogj3kQCeRS9ebyHoXe
O8SS5S+fpapdLxF9JCnfNI6RnW4lMDK4Sm49Q4RqOu4iNe39fahuJ0lcmfykJqryvv3D3fLBQnbD
hR96+NTYZTLmc2K8tq722Ewd/oNKJAAxhzoJE8Ay71iL08tXbWDo87pYxkknzPEDHqbYVZF/3VXP
LF77cbGTH3qrbWCjVPb5fWBRthckYdpqim8JV5PLboOh6XvbPj054i6K2V4WGRLjC1SjhHuDNGjl
Iz5aajygijNv417R74b9AL7LF9M1lPQ00ns/JjCuftCsW+kp8x0kMDnkSMvbcioI6d4v0okLlaaa
AYP5JMqvMzfIVAFCuOoca5YFyW2pBc/3ZD3agwIiypmYAmFzBaQ79bd+DLgbjhEFMjYA5dW5pAuc
Xb9+JLxervVIfJh/Ub+jrIKtYUf9MqdB+2/O2r6gLbFx2pvjoVm4+NP/s2FVF882M47cRtl2n7bJ
PynbipEPULZDBwDGeY1kDTEEy3tt89aMO7SQIiO+nWCGCzRA/A4Oz4q6ZwWS9nVlHMaQoCAeu632
RZ+BLfUeWZTgKVgxaY6rR9/rhQEba9nfMy30jkdhaH6pwHDoPUu5u8Mze5ie2TMIk/KkniPXrsd2
4ZmGXR/bh0s1xlwv0kmH7+WMKIHRTfJDeWYkb0MR1O0L4lqyp+oaYdgLf0IqF0xKyE59hwZEQ/HB
zl8mvvBF6hqtWV8+9wfAyP27waHgbuNb7U6QM8pSK6OfUFsGo9yuKbzvZAfd/VVRygCN7FGml++S
pP0WaiDCLzUEjes8MWZCP1oYpMv28sTiqOsdRA/lVYpHgjKBLxC1iPqRGSiMONDsBzRKrH86ZAb/
7B/MLGKOSz26XLfMnKVaAi/Zzh2TQT5FzZlfUbJSKM133emH+xVG3B3qk1Lqo0poDpimTmJM9XK5
6pqZ94n1wfwR3/42YamHG+rkIcunzDAiB7YzVSNJD2GUaGKcfbrqMzJ9zZP1lTofa5tV1Zea4Nll
GBH2GZJ6S53mHw9llxDzfhTFBpIs9sERLteiotCzPcpqA0OtaTxj+VeJ7N7Z82yRsgtq/yBlZWKD
lbdU21JPmetMcQ8A4MUrjNBz2z63ZBhSdfIMEWtfH0tU8/y+RxPIpi6SK6uo7/2uelhMaRsGDFl9
DGtfbGalvfRQHafFha+yfHJnmCXATu+ZEYMjsiWcWF0902DX4DBxGWbF0LgpMVF4/owXPeMFRxnI
Rz1QfPUiGL57zDdWe1/7HhJ6GNWfPb26fGIiWtCwbArMkzUR7NDBHbmgb8RLq6AbZ6LA2YcVZ4Eu
hhQ+a9HcShwg6eU8e+xvbbRWFsr68FAYtT9FE/a/LH4PrSsFLM/ly3CQcFTGjSQZGjeETP4ezq45
uJaXHmnW3+Sr3VYNzIu8cNafqdw3bHfVPIOkx+aOua3CL1yH0IIUNFtQeCZn4xXiC/jQLz6U18EI
TgZBpowue5u1ZizgJRP4o2NaP/7L95mbdavjfJv70v6NRMqk84dZOh66j3+i44Oe6TqnP/u1GvgQ
b0m6zMubJI0XB87KWmyhPxlr4XftVla13vs/hgcrtYUwTqmlNRSNYHKZ7gw0N2ydnA0TYzECpmlL
c+2UowRf7EwnNLIKYbY3u05OTlvvHSh+h0rsKFSYRlGC9XSXqshKOlLn0C9y/cvUoqNgcMZG23y7
YE/KQdtu9WencCLh+JArgeWRF29EU0P4FQ3i0tP24nQexr7LgNX0/kJkUSD7KkJG+StauWpVkQbD
vUaJN3BLWzXrxjUs1oRLAYoVDT0MhmSNhGfHnMKiV8pxRkdyQ2XSpq21JcBcWnOBpV044pFSwquI
ioDxiXUe9bCxw+S64oAz2UAhXGUyBOk1id2jmoupHplTcv6ZFzb7dMD99R53q6s8HOQVvqarmd5h
Om6rzTsTt9sLAFSABwTTy8c8eGXzn/zGxFO0yY1NXIIpnsne7RRpbzTRoSXOVtZ/LVeaLG2GpnSq
MyeuNLktrL9FQkqogYil/H2kyXcB8pFN2kQ/m88us4x8ryAVIYACU6NSJTvYBHkEyHO4n3kCOAnO
OA3VEbl/aXRM4W25zIQA/Ir6CCnGkqQu7MfByYYCVKzVi5FdnNIf8ZSyYlX0ZP+PeN13gXzvzbmp
eNlbA1pEnl2K4++dCHTAk/fnmrKO1zEW3XhyHoJQ+oBx30WlPeoFuPflkSFyPgKZyfLx8jLoLxsn
GKljK7oLY5bG34uMEacwbPDrDP8qwQuHcvSYHP3XZHezlu+tCKQD8rEcDpOI9x7KRaV+R5ydL/xZ
sHRtEcbQM+X8hiEKs0cjCjafYmD9o3bF94FL9TtS86itnQklXcWoiQ6pLBHZ5ZlDhiF0BIzE3UKo
05UfBekvs/mK7Yd8gRAvtYKK1B5QW4+0UXTtetietB1nPLbIB0mYbV8Vu0C5EyM4cYnkPYzKx1IP
cobfXjVA1saiMhjyFN5LtT4jBqu/ZuGgGLj/LFLxAtGw+wx6gl0Bzxrpk9wWtKGIT8kw3JzZ+ko4
/KLV+J/lGi10KFP08ldLbnhPfIEOM3GApaC6eDfANrVHirjkQHJX7pJp+Z/G2bq80iNcOOfSUA0K
wpqSlLO7TnD5CwPqTeRGjM44xJvSrD82vKdqiOSpuV/vusYjjhLEmLmkeQWNOVPsS4Dg1fF4RFLD
rLzBmHl/ptOnPcWpyL9aHC34jv3YKGs9Am8xbWSCgehghJQVhEKTs2g5f6PhOW/uA8FWp8U3KfiZ
o1E59gqi0/UemDvQCuL9HIKAIQssXxYWSmiNFdTcvwRAaEggkGzY9drG6YswgFSLyVIqRq5yb16b
d9dyfQK4qCs/0WjqE+RxFldmu67cLmGQKGoYg3Jr2m5U3VphPIBNA5+kAGk7BzCcZh5lG/Y/gZSv
bYR2OlSXPpdWBkZ+Jlz0+XoOBIX9+W3Xd3LrA4JFVCvFwopl1szjH4I/lzvcQGeSKqNhIyrdTh5l
nU9zBK1TSosPQbru6wgmnxOQplnAduL/5OZbXF4CzjBDGOs07JrL8ChQCbvf6+ilRMdJ31aSg++a
xSCLY4g0vXJHX7ZF+kDRogqdfTK9hc7h+e1lPigRqmQVNxZHgxM7KYAyICj/4w/ejl8PCHn8at/7
9e5b+DsE9LvghiL5v/JyMZX2X8uT/1k8s0AVAQU2IUaB9RPyPETN17xWmif3hkyb2LcG7fatHlzu
bMSGevMxkyB8yyYE7YgY8fn69alfr39n3ROymHNsMpNTXRpV8Njywi9SdZYLCMXiv4MGxG/9SLWO
v8FZu5eDrdFFBPNcZYHI3hjqfcEe9ejhVPIpkwlHVid8dLi5hCFwGHoP9MkefvjuCp8bG+RW6Zd0
Ilx47twkjqBBFI1WELomipscMMyaBir0Bqa99YlooT8TaMn+Wz1ReMqjK0kRCwUH5QB63kY1d16B
5OBvcu7RX5GC9zypTeV47Q1oZEzn04j+aaIn/eybgFLh/DdDFePvbG2DG0jzbxAuz47hxFI4gevf
mjltgwJWeiaXwdE2RtsoL+uiQPwV2dfwDdP6AXTDejWOhMzQ6NcWAm5OyEtBz++76gdfLsg4zkiI
NWvHuhZYmsfTpxHQfzlVOjxRhVPqT0GPhDtNuCljvClzh5a5vJzXlpOBRupFZL0PGe6SrwyKCthX
Ol92lU0qehixpO9Qat22fsHOdKSPuB3c0n96TmfneKz2FXeampbjEUN/CeSO+F/+p1yisKrMdiFu
XvCtIV8QAFIJZc38G2LFRWLJJOAnXbTNMYEB3zfWPNghjFCXssQtSdZNn+CASiqsqWtM0Jz1nAxJ
uW60USGyuout2n0gkILVZosdgz4v2EIV7sEzyxSeJcSm3k4Ik11Ry5nnfzCvBiSwD3i4ptoxdq5I
K6GvWGPdScFeiijQwt3L9Uw2IfNabcQV+y9VcOP/G4W5ZsWe3DHYhuZgvMIf/vLYW8FBN/FsHYvc
IPDpcfNBJ/QvPjCoRp4yBPf+scGkMrLe2DnK+RqKEHsgJ6UqXndss1yECtYmLa6pGDyjJg23km1q
iuCEKNtiQ20NS5yYDg27yEjMueQNZ8WUAVjqqIB4Ee4myRlpjUYJr+B4UjofvYYJEHc/3CPprBy/
2PSpuTdg4FGm1WuhDk8Oxx5AkXZMJUGsr4fxebMAzmuWiojJQB2CtSg8SaQLYKy+fXZfobD7EXhs
w7ewE15IPAoxHGkR/NDJ4PH0aTFxDEopT+NsMpMa2J5bG/PvzW7Xnn52YfI/TPKWYFnFfcxoMrDY
0AlY2z8OAV7psA2LmBOpTEIi9QF3mZvx9y/OGqV8Jn0us+gQD2GcMk7vnAC/+JgwgUe+vEYGpbtQ
wnBriUgp7NJSEBNUMd/R6hzr0hFzz+pFGNxYjKD8eJ0DhvjTexhk0+8dDOZ7EzkuTRVD7Ck0xxio
x1CHMO80Q4prgxcfKcMQsB1+U+Ak6v8KRrksLDaEUqYBjvt0GlOYXQADuuuWTG39d80RmDL8DGu0
n6ksccaGziCl5H//bnppCljN9oi3o5mNKvx0a/LMKvZ8q+J5ufJMbUF4U+6hwbgAVRBBAKBrAHy8
r4bw8EdJKumc4O0Hm8jwmCI+yrS0GwC1PP5vPIJOJ+o8PpygjPNzj/lsBYYHuH+r4DC6E6JYdYAa
9TcjLoa8RGIx59kY+FWTQEDn/SkP1bEJy1am4UaDVvcs50j4sI6SBNQZ4ndy3KYnbuCNUFIMKEz4
GOJ9leaiI2xG4Fgax7H54mkdU292YcHHNwbaJ0e+J9HYlo0GlYZL/dpOh48f2a0nIwV3MqpJAeFh
FjuCN8uYy8lhs+hQdTNXO5XYSqD3YpVZ52PLrTGCrwUPAuawuhTY+6mezo5o2+3x4Lcw66KPOrjp
TPYnq+KDAgelGuiylmOfMkYBzip5ATvn6PuuTxEPpPJmSLV64LSNjvk3/aMU54eNfJ50rJgXC6Bs
G/CnEdfSGjioWlC9gxqBw1evMvwezYf1DWNHuBoxAjl3mMIbzo7PkqC6uz7zIa1n79qaVUZTvwrk
4qbLr5CCMegMLKgSmq7F8qzbsSbO9/RwKqhhx9/Bw7ukiaexS8RrzM+79ey8uqPv+FsszwGmAW/W
ubuVSbvflPqRCo5GMP6WdctwBxZNnXZZhPr48ZtdTz9gr/UMGMPFMumIzew+PV/+OBEmUT4Jnwzk
x3m5ZIiC3i7K5l4bExD2NHxF8BWIpIZRtEmqHm/LP/UOlE4BWsr68rvXtT/7S2LwJbTLBL8cLhwp
e0q6njuJoy7ETaxk43WEq8zqMyFwp/ZvAamaBqB6Otuq4cfS6/1/viDG2KQ75BVvYjgJKppPfCXh
eUNJX5TWsfUwzOcnpg/qRj6US+JUA6/4Pi2XslZ7+BrnqFyd/QUwADU2+qN+3r8JTJiTD4Vr5uEA
eOl6QHuUanMtie5pq9WyQAakqdROm26kgCmyv3p8Rxy16b+D1SEYNAG7/NOTLyrX5TfSjM6lxIQs
hGmQWDKMUxqFyT2Hc8PzAnlKuSihgR4GQrE6O++Jdck7roDkkVJcj+qryO5SeAdUjCTOLxbzSvcp
YjFkQEvSdc6+//FnGZS1tse4VNMsZlwCZOeoiIWXeBAQpEXYOvQh9YVSgOEEilHf4mDsEMnhcDle
s5sLDX31yCXfJ7Af8fkWCV3BAJZfAqu1rqp5iqcY3Amm4eI/oyn49bwkomqeLWfcN9YooxuoBybp
CiXP/ALQxqkfnFmFBS1UNdeWOO4l9X5rGYLMoJaCElQkeS+9NQ51S2Hnq0e/I5YMbMfaK2qclsF+
FpJfeA87bv1zWiZ8isFbgUEihATUscOsARaBDS0uT+yoqhiHStE1IAe+OM1B5AvNTNtl88vo2ocx
s5gn3rJkvZLrBkgaFPwxm64y7TFLQoIxWASwjTB74ukDWKU5rCRcqQbUTMkg0/OcKYRTHNqXvoKb
dGoVvET8cCBHSh7vXZXpi3TIkSppAdocaBFJBade+PzlQHVGvYs8kf/gOAUrkc/XZyvgtckl25qq
arT/mzFDfx+fU56Ws2HH1zVgVfLLS220sMsZ7nZk4UM3WkRL67kpaXb2b8iS6/yehobkjIXjXUj2
m4Of9xljUohQFPcAYBvDNVmOBKn7/xbMThGjwOUbv+Aek7BUHMp7j7RpPiWiSq+C8/FwaB4Ae05U
EEG6SKXuGeh6ynKhDOlmce1nXaW8TBNvY91sdqElewKts5yAjc56Owbvfawhmjs/WHvjFDHdpJHd
bmv2yh2jpg4Ma5XWIkM91dhg4DhGz8XR3bHwprBo4awfyU9wDf8qxMbgoysexrX9Ez+M4HMnfcp3
+Ud4MUFs0fXV0F0Ktc2hbv/DND0FudUwLt+1dfpoozEfG6GWKBeUrTaiqajGLJ1rdqQCRxfy8Bj4
NSSjLLWOVYYQtbATRntxjf24onas5mOYONuUr9hpewZ9RNx+sLvbGZL8ts9yp+ABaRYZWrcLinnM
jIr+ARuqoWLMl0FVEd5iTN7Ec5IE7BH+iKUVj43TRzb5hczQ66aU2IdGpHMWIqJ10eHkLnBT8Btz
9mWxwBcXkfiqPJ/8R+0x/o8AM8cPtuR49Nk5ignXhwYq/ixHtO190rsFNdhj8s4t9BTZQns4eA5o
r1zYNFATiUMSGVHJGwrl/mI5FptJLzHHaL/WGDQnRn5WDBtTST3UWrruLLjLNpyQv94wa22jhsh1
OqsWtrFbdxO9fdTq34XB47kiCmgVcN0pWMXQT6PqM4X6YgcKZbwzU3En2dPdiJagzrQHiLc+ZIj1
dXUyd0/nlRxOqd6hfAR0mQdlHTR5q6CChP64P4S9T9WHae0BYpCgDfcl83qGyfRVHDi+a15uriL3
1YRo66fEQJlEUf9DZV+CtxWltHwdndH6uyk+m0oy1lMaNLpwXHmMGswHv6qlVdeG+4z7E4qqHji5
yKwKdfbGKzCPwatgOzF+oIVhf+BjYPCjz80ovCTJmsyKsdZ6iwA94pLxGD6c7dxaZYb+t186eXQR
GUeCjlpcSJRvtonoJzoGov7Q6FuH3v6PooHfRoOnuOWAd0IQ7fSNho5EzKBL3bg5gSNYqd73OauO
D9DyOW6uNQ2u/e22VKmqybDbFbkC/lavLvj1Xitpz1qn1REl3sXb5QdcuQPM2Uvd+CFnetCE2XSj
uRxNCfaDvcKJFelOMURsLueBT9z21aTPA6g2YHuvToH8eBJQLfb3mDUHRnGJF//QXak4GAyGwb8y
VCykLp2MNtz3s+qAdeyakpbphM3XNFAsQJGHSJtYxBYC2bHVSGWyP5RvoFfGRapUc+aXk3ChVfrD
2VvwZIss/1PlQYskYJhotWbvlQmU/TQRfKMsFIgCiU27GFXkCd8MkThDL1rOebsXSliL+05CCAmI
d/VJqdoYJhg5uaZFNc/dMt73INkVIUx/9rdN0hGDJ/9RbSjnXCFasWmx5VD2MxEtXbBbYIbb2xK7
3Eo+xlyO5QMOpowrYTWaKQULx7E9k+OUFu4qdy03bk8Km1pdbDVFoVTNcTG8iXfRan0lVHEjtv/a
jwdl0fFzPe+jhQXfTTRfplatdJJEMKl7etVO5ZmB7vOHxIkYuQIvdj4ZKNkuhS2uubgGvhZuL1ve
CEZ1aXl6RB2Aq2Chwv55P7CwuYwAippIYKeNzejBgPle7Q0Rntn/W3K/A0dlrd59kWCxDGFEnOjL
u1Jpbe0kScvCMReqmLDWr4E2go31uMsASsjw/2uMVSH4YwHAO5d26A/b63ZerC97MiaJyxjIYszP
j/0kMeRuk8mxLOE0IzcSfjt0xVvzBPT0St17/o7rlcqwEBZmI+O7JFA1P4q1wDDtTfbc4qF3z7ue
NlYOPP8xF6W4SipgO6pGICRYmvtqXdTzSRCV2su+ZcgV4nFb9jjVezemiPS8k3U6g8BBWVnN7ofw
q3ChsxAfPan59i4mebaoJ+6YShFeOrYpblARahl0IpEuIxper/hKPvO3OKFUCQ3O0GQ8+6fnlJ1P
LDouJX12i9J9FVYXgLyXKfU2wB3ilZuNYsHOsAKgnYALX4XcVw4gxq5pdd1ZCArIyykhGeAPpa09
1LUL7eIK0RCeMuJMk9dhyFQ5goNXLbTyeDku8aGhyJcXHaYun2ITV8Pw+ptjp7ILVA8SxnKlEmVF
/7kHcV3Jrp4zITNSJ/EfXGtyzl/M4av8slPWFgTBNaaZjNUC+GDcADtYLSgCtnChjC+wuY+qzjcH
fbveOQ71oBWANrt8v4H+5kSPB97QzReecpuBTyRy7Z9BHH7Ekz1JrztNk3+Sz+esfJZ74YgeV6KI
PmwmBcqm6bifCHMRj/iYYEW7hV+WvdU4hhTNTsW9TQkXFMsylVThmme1128YwkZmHZSaYplJaM70
zK0hhT3ILKCv9FGnM1itdQlbwMjL6cvkWXSWQU/kfvrts9p+0F71tzPY95+eujk8f1DlJeEeThqQ
Y9xJOjg70063wGHqj1KZQEmZYSQ/4B4NPeAcFK3uBBWjnh9lpJqU7S41aLMnhKZxx/zw4h5Hb99n
DHhD2ApuqrAi76tdtTG2hDQYRAVjT8U1vjTznRzz0NoOlPMO3qwpvUZaBgL8Woql4Tp/ap4CYJc+
P+Lg+WZJyLxLF80UWuJWL5YXASMhHvgImRlqj9Reabm4GeNkqWuAbj9X6vJkitJS8XYiNWgHPOVQ
HLXf6b/hpxIjaMlJrkzfJhjLqA7Hy9beQVebosDM9NxDpRF+iJpFnmu//lT3/Gbnf9xQxVP3CXBO
c/co6H4fWMZ693PZgj7p9/zuYtUwtCqspIfKepqNu7HKO9OYNL4VuxkNZWoDDjN9F/HOeUjV7pV3
wm9XRjv7NppPiVV62HJz6olsDWDa1wBjYuy8G0bDcj7X7zvG2iAN98G862RPi4EAKgtSzMbczvnQ
VOGG6eDOB3zG7AnRypk1iU/k3RfuidLSoCyoTSHaCQd8i4/NFN94jbcOSvHtAzvBAKYzY+1uyQqb
q7PbM3MH+PBLdOAzVbmnbxjdA0U+vl+68+eXbIJFBxNOVxVabE0gKEbewCfXE094bzEU5IbgX68L
Aji2D2KwaHgPZoZR0VTqxha/O7PGtbmL3rjCEEDFO+zBjfJA74cRBC36XEJWBXfKlCe16GFBxmql
rRZxsIXs4l25rTA57ySyAvmmPplTm9ShO13FMK2cGkFrYPyRV4kttX2KHi4uY8ccwQB9+cKONIz+
wiTDFjLZvs/2vDDcIN1zZ2HnHHPhH4w2uOtGmNDIB0h68N0/E8W3ap41g4PtTI0MIZbOLUcMEplX
YtaYlGrdbviJ8NRtihyioZHbv499JQ4sqNBewBXhqvGIIf0rLzK/QlwofzDmoImUY8MJfhExWtDM
brIAnHiWtoGZIXsr0No5bLD8cbmCZ7HkaPDmEwYZOZmp7LvDCnKQgpS2CYmQaYYtfrRQk8KMhe3U
fmyQUJ9OwFaUiawvDC9sYPFtkQgNtokbBw/SqJseDeMmik4KtFAQqraixN+KpMvqgIHM6mIOycYw
Df0qzN+iF4Mm9VhspNX7HwFdsnRj/YJMD/Yq1KkJL8Z8QZ56ZrRK7aCOwMljbSBXCqNjlOGhmxXw
1LGl/YSSG0/MwdiGngwGv1zc+VlVDahHbJ8NofuZ7fiRruZpOzkBVUTLtrEBfcE4sUlTX2VhodEh
BROuxef8FG8qxEnw4KnPcvLPFtvwZRZEucAJh0nWIJDdxuVi6rDHEYG1n81yCPkZSiAsJDH1lN9B
rNDs0QboqEm0QB4dOJngr6ANZP8xLrQfCl1VcKLSO4PNHGuXxVxpd7qLeMbEp72REAG2k4Ub5hml
57zKm1zg3RvN+RPDM7EzxdCBduUagxAZcAeb4l3M2JcEk/uLD/BkWa+WX/lCrKKZGhmYmgJ1/Q/4
ih0SR+NPxv6GBKE5luUgj1bojRxP0RcCLSQCRop0ixyrelouqSsw1ZO7VpmVDtEdv3Nt3qfhNivf
d7XFjgofnd+vFIU1OdQX/Cqy35uPz8950KUDaKayi96/DRxwEGh1UVpQajQo1r7RNFNk1xjwgna7
0AVsZav3vWP5nZo1jLtyLUjVKnb839bBFQSM4bYWl2BmJTnArQsTaIGRWnnVoFmQThTjyijJDVGS
MszaJRre4tITybk96fID+1lTWGQfRlHrHVcZlb0+V+4V04dVqRKs1pnhl9D+rmB05AfsNEyYf62Y
v75qNtUthetHHS/qgNv+iDBZyNG6K2QgHaZ5rzxRkY+dz6blDsOwlrVQkcIN8mkabgHB1h87uK9K
ux2tCVo7exJ+KTFuuNHQIrbRWLT1z333T9lu+KvSdf4/jUng+f1CYN/i5Q3/q15OlnABnINYMSht
E9isM4ROCMKeSoLp7faNnM7FeSi9wzQSmnbNwjRc8mViF4xjcCpcT99SWZCKiYQ2jU2HsxnJBYL2
NZGJqw0aMY/nOWiYXCUaz0Dn4AwU6RmhOaCmt7B8x5qAtAJylmFNkJsUHxhAnfeLEtAI5k3XaHw5
3WmaZHCNIUgsY5Zg9lkJ5GDqSdeFMGaWnMdbdi3vOXZRGbQQNxggABYAh6JpYeogqF+Vx/OryQUl
vxpmJlr0IxsQEkKOa54/8NPE7i4xv4tXqU7BbYYGlbFiwQeyajQGIzD6U06cnCjCzEG/VzhPOJvM
S99YzskGVL/4LXaENErypb5RCmtpBoC5A4vetiqv++FeIgdCKk1gLsf5/KH1gHL7mU7/5Swd7wnW
I5oRntZ2GuT1+pIF7jxkfnvQfi1wjkmlwhNFSLefIzR0gL1Fk1so4K+PnYKEzVzTg9n56ZZFWG27
In6HDnLUG/iQSKKnYXA6j4RcILKbFD54MMA7b0LzzQ3h0ZmzkCldfS6VQxEV6Qjo5JuC4DMwDERE
uzmQNjAtU1+nVe9rvnwvoQCBOcWBs4Ijuzbb2FRN/vzzqVAqCdNLw7it4gs9vQ5ORnbLznXdKIFI
J9b4MxjUH7lT3pNWkLn26X7PkfDog8GjCOKyLPWF/BoLGPjm9ofkYV16ObWtQRuN8hvoMdKR/vtw
C02G71FHmt3s/T9rUWRUOaSeLeBauTbwEjtUNX459BOsaHg5bD2VSLYBWfMuvAV3Dv9NsprjshvZ
OsEEzR4O2SnsJtN4PSd8xh3FhN1p8gJ/vK7lmKdgn2x95yUL4iJp/UrBcVVcIDzrhysdBgne3AQy
TDLzjWYerbvMrBM5HYUz6NKcCRsqKmvRKZVDirwhVph9zRj8/M8tuSmkaDOoXxXnh2MYX1W5Hx/M
gA3OigPTLEdEyZ4aRxy/8PuKIZgjTE8JmyxL1CRc+PCzZ5dmeNpylo1D5FrQ6LoSd+ROWySUFhVw
EiFplm42ap0+J9J+k1CovQA1+5C0ZLZovbjvAucklPSo8cQhWri+eMVJb7RYZbAPiQqh0SLZuMIX
paCrYAovVgeP7cDajfCMYkKG806nJCsnFX22l3dHuYAvlkVzeGyLrG+9tlZplucKlLAilUxEM1tJ
/K0nkA7GmA2Z7HCR1umCz/kkp4XsXeCj+45+X8gJMBqd29/yJgVxHjGOeWzKjIGGLh+y0BaS0xlA
Y3uSucVA2KxG16/VaKy7Xep4RXcvAVYG6U3pR4iuFBE3kDTsLkP5fPxsCkwMIlw9BhH5GaV/o6eE
tST/Pz3bEAtqvN/PD1YIclzpxPWBk+M/QAD8dKz2q7PZKNBXiEOIhTdYkwzTZxo3P2pQjZUK4Vgg
D1TXKKSNx/AWykyxCNGj6hMmNx9y2Ae4pxNbyF+e6KCslaM2/kdjU4S0+3ajj9BitWG5Cb2Z8qHZ
rrkEk2+Rd0IVRzR8gokIoRySMSf5uOlOovW2TW0V7GjkSM4PU4+nIKXYvEK0SDwyvKm/XzE6jCA/
wjDZXuEN8nOxdNEHDMi8+v1O3zdkQmUR3nuTCSObF+Zf1fbsLaqXLtBJcTon4FmJV2Mdoc93zo6c
hN9xiemB5J1Huew4Cgolxrr+vmuQKCW4ALgn98C4n0lT2MmakFokiD/CgFQu4Z5t1g+bV4w1DiHq
76aiLQSN8bYTmLs5ZZ8GZlrBD2Bzlq0QEjPTiurmGi/4EYbg7rSvAP7yUw1TD65MM5Hjy7uZd/J5
I5nFbT1PBl86qfZbuYjTmhNENxoxKX4M6DeL3qWiZl4WMy9c1OuZz4K3u3hFcscRbUKnwEGEydSk
8rsvi9mio0AaZJG7VCAfji8VcpXzJWv6ZXdgjhg7K5pP6TNMOyjvZ+th+1jgFXCyJFLdlmwFXv+L
MNz9cziwqvTbXylPB0wbFCAui7woRi3cCalov3XWExo18khmvzn1zgLgeQkNV/Hrfn9gKt151tYH
ItRfLdpWdJrDzUSiqXH9Y2R3WC0TmEcsEGevLn9VNhJKbWDL+5NOdEpjgsfRqqsSTrFWgNi/wIRb
ZSIknCUrsPqrgQwP1BUX3YLvYFv9Xo1OlIHUdUlsFmqGJoXUnluP+rM3DOL8mO/K7zrP4Dx7ydD8
fe6o7P5IQVXWyAYGNsbeNoS73om/SPTvLPMi9XDHKMjm+EjZEwEymQgzHRbh/Y/0yBNHGRsFKMrP
5KpPGTxRAUPod+yn6x+BqM5gJGcy5SrNT+9q2TkoEyuoYuGOXFEIJXBdHH7JaaM9OEGb/AWh4wgt
cn/kV2dNPArWnr4rcwd8+lVGMUHOrBdG+ha/HkFz6TuuP5eKz9ZmSZVLbp/3/79T54iHqwcsP2EW
cK9rhzzrroMlU7rmZ2KDVNNAzNIvtbjmgQ8aoHIdcdtZ0S2BsMF9cI6s/eLTUHtEwDcZYWdfS0P1
pcIbD6j4XpiAFCGWkP24uKp/KA9TKi/Kn/pWiuwl6Lu1lU36/a4Lx7cg11fPBwlO95J7FR8P/42T
oK4dtedcQ+CfokrKuKmpcEYsP5jm4PFk76fph2qMOfgdBKBsVMAb6HfJKS9ZEwKCzT3d6ioAiKGn
maus4YWbl6OCQllmQx2kZcZsGUsJLLt1YD20+tL6Q2yc4j8Ps4S9m+WYrjAvgldrc8Lom94YGYa9
alDcXMrARc23hy2hb47KIZUwolY9ot+hyKbSgyOO4JrsOHfxVIqUoCjoAvjkZkjpqNRwW7a+mWWu
NSB5iZVQ7YXumfr8tNGxLdA6hF5V5s1AgYn3aeV6FMOpjVe993NU3KpZKfcwGKesLQDcIY2o1zjw
J8uADEO10RJ1juCgWfUSwpq3e0pYhrQZto+xCbcXrRu1dam5VD9D5dM/BlfkWrcCJgPv85q4Mu15
uXI6b6wg0YplTZt/Ov8Aa07/qBQm52/W+m29KwSLnQOJz8+BjvGnl6nAcKFKejAQ/IIhgjSpVQ8U
hdGkqqSGjFukKqulVUfxdY1eF2LhIZW+fzj2bF8wD1bGcA6AqWKugIBTV2RAxJys3LONszI8Y1Dl
6zEX2DaLomgwMorBFv1ek4Su5onRqCV0SUZGaA6CNA1yqkuTkooB17vn7KmvXsxbk5emdeHeQjJT
yP/mmpm+9rkkJXcS7zdsJmkcsAs163/uUoeHHDj0QzciCn7HAfklUg2MuH+p/vaeEpFDP0MFjwo/
bU5XvqKuK2S7iW4L83Ifs9tm8ylrudR5kXIXpgdYektT5kjHLW/497kcKpDm5UMzHHaKk/q6ielK
+QylVQIL97cMWECnjAtlVfM+ClR359rDm2R1Og7ZOwnMYF6ew4eNIJu+4AnoiChoWJHQf8a/bPm3
eHfGWCRZCT3P4Vs/qWgs8c4quNkS9uxqeDzL55cM70X7YqJUty6HFyrNbqmXMts0suHqmg3uyPUb
Mr+kwFCFGGnmU9wzWEF7hmbBqAWHKdlKnMx/SL9Et/G0rm6NRfy/+cSUPlTKXA1iH9PgU1jZCwZb
uCBVhqlcKur82xZnPekwREtYRjwiC8XBF7hTaq7hh+Vy1mLxKeBD6MZ6LS1buGCpjWlO6yZIz+jO
yh/vYYcGgCxDBxnmVlatfMQN2ey7vcUdcXJ0eBK3/AKACTV1fso4/l5iOzUhbm9LdUo7UohaIktu
AGa5PcxMgjsOBRaE8Qg8MQcrs/OflA47IyAzbSSRmSB3YNS3Vj+39S+mUxfW/GyoEtr3xLLlj+SS
DwepcIKuPvHPQ8z94x4cSjTvgILAAkPhjdm1U9fQh0Fn+GwQpRZwMagN7uRsARJsvrwVIUnPyhZg
aTZMrQnPnKW29LWKHNHbx2n5n829zYGNoJOKh7InLkBg+S6A++LNEKAQnPIjmgWL2eiguHCt6EP8
cvkGAZx8BO2z7RQ8dVS9qdcSfB+Q5m4jW3vtlwNT0exxZ2TWZdbJ78+vXksX0fY9jx71WmD7oTyM
uKrBP6caM5Qn0n77zG7Ib7wHnEYXGGjJyKdiCOetyx1KdbZZpZapvjNcSKTiR7JgJRCSkq8pnWyw
h7CEwzfwH/ERyP/2r7uFRr17sPiCqMPnRQua9kX3/7H9T0ui+eqzh4Csyb3ANaFPlSK506ZbkdlI
XUbmx+F+eZH03jPkeqUlTJl01AUJU2zy8wr3fTUDJVrYveL7naot6j9WGFAwNBj/M6XmvSPwMYlJ
haaFQWatjsLFf3xpTbE0Y9S6P0iSKx0tXD/F9iPgm4B1dEZ6dTzf5nOGgqzDqVrEz8e+IAZEykvg
F7qhtYgbVGtpd2hcAyiW3acDvSQisFNQiomFZsp6O5pu4j/D44Gi5dKLFBegS4hqIIhLHOPMLBIR
0EJDzFM8ltcrqokqgZ+H6OdkAaNomwcmV31ycqS3z71NV7QDyh9JL37zYdAyBVPjs1AYb/wpNQQu
OwtkjpGF+hHTExtADRBo0sUwg5O2TcyVl1TmQqDXE4y1RSY3zCfw8G/nKzmfhowDKHlFN/eO6BtT
PL7dzwPv2SJJPoCIgNpBih6aK738z0V58qhdT9NCFrCVQHK112cAT4rONJDRt+xuebn8kes10DAf
EhfTqfb23D25NqTpo3IYEl9He+JEKm1AznRoKqwAF/EmH4hwAnKTl4MK2U+EbLU+c79ltJUg33qW
HWYi2HdUSMAmgWlp1qhxXyy0qXqJzRDkXfT8KoEqTVvEawxftxycvA8WsFJfjcbObCHMWhgGcC8K
U4NG0Foob4IGKH50haD7gnpLjKIMA5PWe764diilG7X1TjX9NhBdo7sbLI2oKYlFpWhOB3c5odxq
vZqV5Epgt4txu7ERIr3Y0Z+jN2DKglzVnEuRwve8IJym+CZepZm+3KTB3RzFJJ2UnYI4IFwceq27
LbXaTGWFP33X66qHgHFYTuIl8sWiPW/a0J24prm54kucLzyl0T05lE/lroEBh9/vDlUYfCZlyWX1
ksD0aGFelcwsMCgVKfgzK+Ps6IfBdzCU/ZsaUR/IAkWEASUfFF8WruDCWK+35njRDkQrWlqmnXaI
HAVbDz0Rk5ihcvezFSer2e4pDKK0Lf9bbLaDDjDp8+Wxjf3ZryvhnUaT09cl4+CUrN64yM9purP/
Di7H71hAjbUzRoXN8zjPaQ/lhM2pkkoqfocijsU8xd4YWyoa4zQMD7oQyJel4PzrS+S9MXOZ/xK8
5C9RMiw58TvmPeHo/eQm6LYzTbnZyQK7dHKzcHsoLnv8CbjHgXeTc7DppnjONqDiuN1bf4R4JDG1
Ygh8TSAI154uxGeVG06HxSdJE6p4ZZe15XGRMcOljoWTgY+qNivi3AGkFpkMyoZrhUoVkk/kkX10
nmhX1qiR0n/Q2mMnXFiFNgnJSs2En5gMjkISTowdG0KQ4cOv0oBlaYi0A7FSeiMtaTjLlU8R7rAo
RkFzERcpUuflALub7NbHspDCeGHHZxPhbT68It4qLt+p7JDXpCQ2RUQSQ8NWch2jIWGIfdlWu76f
oCCJgdRD1VZwLY36YwpVxMzNYblMG/n8kOrfj+lusww66gy4FmGIQE2F6I1rsXDiu4IcwiIBCJI9
aVNuw4yx7HiDN3540qAKnI/uwp7zd956Inhatpvy/mo+Oyu33hxRcO8Xk9Ov+ZXPMA0eao3NzxrK
q7SGHe9gA7BYfwghBU+FzSXiUh3VuUnl1W64VSMMSq29qyWu53FNHelwBQQISp+zp4F5RUUBchCi
gLTRqGVNZhGsJ+DvTzYwiA4agyW7ATvQbIFLiPoiqw0rc/pdkc0nW2bqv/U8VFY5sM43etJ5+HMS
HSSrJtzcBZFH2ot0xiUELewYcg4+sxsGJ5I33SHylhMxgun3oB7uB+09h8WR8vX7+7Us4/RgIF/4
hz7LKt24kGISR1w7w8EfNzZt8+b2dg1YNkpigS9iUiDYvBlkNGpYuNdS3FkOVJ/YTiP2migr8Axc
jV0XzHqViTutx6WvCgmpoh2wk3U5gkc8hJiAZZ7gBGSmlwemKla5Gy7lC1xDUQoel4ZcI2I3UZOx
Jd6q3zvsdmF9YRm2F5m4gghcCtiP8Q9C4l/Fuk5JIJRnvuBV0gL32XBjKag+QuKQjDO2wiB6clyT
u3sWD49XE9kRGtHo/fs+u3uonDK5Z5+d4jZOYrgKxcPOpNj8Hw8szvIBtManQlRhrn8ZF5l5NV/F
B7cDvYZO6QC9ksjVdiFCqjaCT8KiAbTpU3aJc2xXLOH+NShGo/P3Z3nZd1qfTTLzRx8oyucpVKrz
lo18V5oGtdifYZUAjlOwsssfnptMyOO0DfFO1nrm/IQbnUjjAeya3NLm/mxYOoWeVlRzH+WiaIPv
Ar1D1mIW2WH3NJ4q8YmP2HynSNmcGtwqXKBbHD/QGu2XvvDspiqQavwqTI7Yyis3zQQrnq58Q1AK
c3W1elFOkXs6ykC2BboJq/s5346kt0j2hl7RaPLqEmOUPbqriHANKd8jGa0Ki7IUWuaFLRk9zDDI
SvX/6FP2PzrRGiUnHmrVCcFJvPHRguiLHY3/lQ7fkynr5KD5DRyDnrb9d4qmxikZEcIyOPQqRUHJ
1vJ96/cKSx7icgOLEdOSVbVqUyqGzEAh4PBfOh0RPfM4WNZH1WOu/4sJLdb1KFlnhCWAcgrUXz/W
ZGWXgaGCKsCTjiSfIiPjhQE6mTyJXoNQbI188wxUJ44pcX3YxKKdUYDJrnNIuIoZAoSwBbm77sQU
NdyiooY14WAETN8HkogOY28UNvyUueRwXUtWJ9xKp6SXajhVnU5wMqH2PlXVXWoiQx2ttRhzB3Vg
FkSz1p/f2GihtrDgp8LeI92EqlQJWi3jqOIXA7svJF88XoduKsPmqrLn7UhVqIJIUHyd+vwDpNfi
7zt/XpyHQN2S9ZacEBc1F0oxdp5TybWXZHxptH3oS9DQTfaVsTMYY8W5slul9jvoJ+qIMAn4OFV+
Il6djHLLrm+KoaqpHQPqglX2r8rbM7U09FmV9W/30D7YbMnVGBA/y0C+NBcwhdjpImBVYSX0IoSK
RGfjn7kCkFitSRnZIAX+oXDastiB2rCq1IA5Y2Imlc4avdgXEdOQtwsZPpSoSU8qqVRc9NDGXxni
1HvIp/AMoru0TELx6S6KTmKb/QIwBcDc4C1vfz0U6RB25adfSQ8Axbc5FLWmJ+Dz1mFCXFjVs5We
YNyaN8ONj99EXTYpfUccxxc+c6VAOhLdi1v7CKqCS6qdbgv3thTCJUkDeRRBHQ23vIEYKtXkvdVP
BnvsqDBcAz78miUC8S88fgGmP12x737BTJ/ZJY2gD8pv9tzZDwrNeKtug3SMhcjFpAv75hiawNUm
nwqVha+9iskm99DKMrOxWj9iXLF7slx2w+kskON/HavkH4o/KKXY7f70RCkKhf5MUoEZYJ3scUCc
FNAgqwNJ1yzu0yV/LQD3BakeR6k7smW8GWBropnYzOo3VH5PoljBLYC6OF0S7dgv0kRU8hAS8G2d
MGLeok94YGNd7McK8bVoBX9JOukjg+HFMlRQ7JshDwnS/tKcNidtIzyehby+wYiavDVwiM1/da/o
G1wPilEA2CUZeviQCiIpadhN2nMgKwQalSPlyB3YHgjd9ZooyGytRUawONoop9g7bMrcCnOjF7hq
yGmgtocs5TBWSzKe2cl6Tjm+9skvptCS5CvzaPzQwhUeczZ3QZTA6mlR9Lh7iuzrBI8CUUVV7u/A
4cKYlJiwnesvrHwxzefKyEd6xufpzfr/Xwakc1vqatixfFWfyjvbHVQz81fe72XAmm973JBkoVqA
iLW7ATs5Z7QTJJuC36H1HBS9KDbE2LBQeLs4D4Gf4mXe502uFvrxZZaCVKQ61dnxW4++N+PWhdCj
P91KYvnwOBGBq25+A+XViFkeGNGzs833mU/jCux0juc0BBAt7fKhzC8JkFEiJsqJMIzjegipfVyo
hP7ItaXhZZNz1NDte1fBbpr5pN0//jGGZkl6AnYWBRISBEpDQEk9pclDaTFzn+Ct0F33u5SzRvVZ
QIc86FFuRWJOkdAs2dRcUkzbsuI269nKKQK16JbfCCFOPagf615Sf3JXf+lNEuBcAfr5hTiYlkCj
5S2DvQIvv5yrJC+iOacTfZo5Ckd0lImkIgIpongjHnCTqE8Zg39J1M9Iz3jeCU4S2l4f1H7Bj3Vc
IDt8Vh34cIHwCCIQse/m1ZzPK9yX/lBEJboqGs8+iLRapDWYXdXxCFKbypoHobHFGOKYZF/JYTGK
xFoiG2iMog4aVL9im8o3MA8bAkBsMJSb49PBzfartEM7+JZUwTxB27YFZ+dp1zNsI8kd3tJDqDGz
2431DwhsOmP16VfQwHNXd9jHi4bPYCUXwCyQNzU0IqiRvCuK69TPxPoPPUxCimWav9uE50wE/EKZ
KY3qZXI1yUXiNh2RqG0vPCh+ljXt41RKNu+VNqp03IPoK1vhOaH6IhJtMGBFN1N6FXZJiI/qb/Fv
t3hVFov6ONmjg3imI/xFjx7/M9sC1ODBmBkFNWk/wJMaiwjtFk8uUSrKbfTKs4l4UMX4zal8PVJW
tvU2Q/dfKVju/joFEJMgWJRhX+NNhdSVsJEXJePVgxQdIVSFsphvNRsGTwdX17pT1q1AEyWLHBCL
xKCMAvvZaxl4ay57TLhr0M3drWHZDnklSc21JOO0k59WU8b56OQaVpfSZkKygwIzR9GuFYXIn3ve
Dijvs4C7YXE+op5nGdfBcj1r52Ml4BkeW0/ONLZbYGa1f28ojs1aOLdI2jYQt+3mSPqnD0m4LSd7
R/bN/BtGV8HYVImPthAhF56o9+dre2hbEgMQFviWvnAZP7RxjIR2rLqJH08MXqbqc44LkcMiXWfS
Tb7PmbonXcv7kVq/ieBresGSqPLRwcaJqprL2CRIbeGmoM++3P5IDvDdMBiSh4/Ug77Ap/wTF23r
erNoMKex3OrfnGY5ZJI+wdpKii/Jf3zeITXdB6RKlgmLw1MwW/RlFfgpq/CbOBHRIYFNMnPE2062
Qykrfr562q2UoKcRmeG+Y+C1LcEG0uK5gHEhxnt6WlO3XMf0iDfkk2tEAzjxI+C/cksWOrAT1KDj
ALSEVo/STIuK/efqib6cVbtwgsktNMCCA/FyEIivDipkboMzTpMbV9YsLxdr10G8Lvo3YkduxJof
JYfntlw0awwZDvt3e1NqE7NdycUXptVx/dRHpq/VQPirwPN4gYpjiqyL6mhoegtLaJhpf6DNhZ/y
GInhiAzoHLq2O5vaIHAPNbK+jeFrfUC6zDShqe93Wkn0YkojpkvherPUUC3+sHR1aiufStuA8js9
jOcqgsyx3tG2rXHHHpgJycNxdo4Tuz+RvMahnQ1m6D5OkTThKChFo+ggtDRraT3eOjxNzQSTRYpe
SMEw8qmtQaEiVWjurNJOUctRmc4KvDqVhGpjyMLC3tpKHSJmZP+KgUzo1R9vXMVUcZFXGVRUjjbQ
nBRvMhnUNiRtEwMJFuUpGqCajFuCrJuDzfsZc48NmVQjOS7IorthcvZH9dQoY9cbfqGMzD5958fG
hGwIC1wOWr3m0FKQ2tVqidUIkXtRGRvA0P8vPvF2a4CHvd35+3olR5SUW0ouxaWFM9+VMZq3cife
S2uzrsM8+PbErbUVeKRdsvEUo7Kej3E9yDm9aNC+8SQEJjiNl7MsA/QTwuUx0iry21/x3Mwq8Nik
pWn9xJGBlXGzU07Zr4FDM8s56h+JTZ/LI30vmYGynyz1exo49lxHgCL5Ow6CnGWib5jyPXpi1AmI
KVWev9I9CLtWZhsjHj76fB4Vz2qG22AjkVvPlOVPTPyZSTt0jvY97Sh2wjVj8rtxwjto3V+r7bDc
FXOwI5DnR8sH2Xk/AQPv4reH5uEzXGiVc5XyFvblTpMgRZIsEKaWQkWAfUDr9aHPpPyh1qEe0+l7
Bh+MKVgyUg3AdKtWygMZqc1zMHHF/FUbGa9QBRXr0Hi036fVZQxYfPa/B4QUXoTsAkrAz5wbsZ41
B+rNWoGwXyvb0fufwBkZ29uqXn51WP3iisqoGiUPrGuGzK/GZLFY8AA6RJowB8sPDCYdsvJTNYjz
fJz19HzQcdJMuDXe8e44Sm7vPTt+SUknaibGqhhkO/+UTkWAquhuemUFi5gPTmsaABUrrQKSGpUz
Qkt8lIxEZf3DCPJlzFv0S20bW0sKrSu21z2CX98jFUoL49KHTmw44IXsmJyDWSKHpGqCo9eICZBg
sECinpcj/cywdS8GHJWnqMe8CYuuafrKvaNVf+zZ5DAq0LnozmgPE0u77FlakCGI2gPKEqjG5OfQ
DAQCiA661nB8CSugidHBKWnwcXqxoV2Qxyuj+AJncCKfnunanj+2+sgYxAf/E/aOxotG2HGFbZNM
WmP4dhr7m+f/fbIrujiwJC/8OfkUOSVCAf+bCE6cTz4qkFplcRczShH/2i64hwFI5n0/IuEuFn1o
nyJChUVU05NqsB5YvOOGR2+A9PeZ76ySvAc6nKXDOIqUVTIzw3P7fQs872gQS/YS2Vs7kd1u/Z0E
yGEjkqQPT8qN63HEbjGu+6rkim3GJp9MX2f57b/Fhty6Vqy64csfriTl2G8IOhOBCAR54sSg8xOJ
h4VFWQFQtD0Xl4d+kONR0xOVlCoF9VCH8TwKaE+6n3ODXThBgEqXSbuv8FNAM4w0j3+j6TuyvfYG
2L9e+AkBsW2Lo+lXrWrxh0DIwQRp3LoOhM9YQMwcXeaa6cHa6alR38LqIqFZXdalV1d2/uqrSmP0
oOq1UYDjk4hMurKwJI+uFZD44rWCIGfiKZLTgz0EQ5rMnJ0oNAbOgzkkXSbQwtI3lwDnYg34yVII
vlrnCm5cX+jVcPlFyiKIy2cQR8sdT1kToMAmt6haE+KQLATo/n5CRdbNaRFl49R31o/LTdPk76ri
q+W0c03hZ0F/wa5qVvpZM6vcsdQBo3BrlBbtBw5/lGYLBvAUdbqedLuiACiS56Ekebn5JIhOFzTp
ui3IV5656ImYvzHE9CqCvgIH5s2MPf/WZh0m3mMqJGGU4+jposFHvX4m7pKpL7SOQ7V+BQtK/yi3
IIMGjuIXKpFVx7oAIC9mOV6xaSZBMdePYeKcp4lY2kg+V+qWD/R9MCHPOO1acLwFo5kLS+HILSUh
JoOAHu7H3akdMIl1eN9C3/Pu/JYqG00ICeHjMMJri/hsrFohUMGrHwgfazW+/bYBzOyBiiui6uXm
DNO7KFvb8GlcYq48NiN81SvLG43pPlJREE7pAgBG3uM7fv25OF1Iw6s3+vLdFPswl87bxkLtpLpU
uHT0c4w6eyMy1tSL+6BzSzvT4vgLs+1KzMXMCUwBi531Q2ZI9SErEsZHzs6gYT0vE37Iw2wM2LXE
F+65c836QYvdZgtbbw8oq/Nu970Tu3aEEmQEBrJhB3HVdtqdiHpTiHmb/nHt6pV42pMrHAkGr77x
cwfyHcs85L6n3Kx2AstSsNygIxJLwrCxRFeGuSSmjz329gyjEqwxrEcpLKVRg/K9yaI6ffS2MOP5
VxuPn6lUjBVQrVrJ3U5Mpc82zqwBXZSV5BH46LVEWrdkDNslu59SfSLd6jKVapbTxeP2Ld7t+w1w
l1K/crTB5SIf+mX+59rP5NL/7J0fH/KFBFqFjNpvTtUg/CTrR8s6PtE191WHawJ2DnLVy2lOO1c9
xkOu4Y8I9A/FWm46c4sorYpZtgjCRsp3a27Sd4T5scQCsXUIvtVEJK5LqD8bx1RXoUyBSQVOG64k
wDkT2c8FAMm+exOfCMxYAL7v+c65rlF8KY3L2ubd5fK8hSHAuGs+pJeaehYBrZ+k4uLCIxcrv3XA
+jYT2BmGqpGBlVb63HG6ggaOL322VuLnhoJugINg/XXKszOPrw3ylQNz/1bZ8r5pPuz3sc2eUN3n
8hX0y017gjFjv8o01HdBYVFDu5MPi4e54S2QEL1nnpfHJeGYg0+dSVpklDX+i16QxdivtTW8Y3/j
MkLmtbDZWsDy/P4GOi5/ISmSmjXLHPD+QvSQWTNwx8PjKBK4P+vRdQuWwVKpTVEAzpUGEFK7i99A
t0vOIwrRcYu9EnoCSzmINrPAPv3b1zHUVfUUJ/8ys7ccIDhyFG5YkWFhsxV18av67OTOPXnN0ssl
hhJJkDaYJevfYZLYIl+3o5bZJO3YvIwQvCKNB2lyrUy1qtJmbhsaL0zQMtAoTxlwAlP7BOgp39ex
f9E1Cht4HcJ8KV4MVO+w0YOr8WOjGcZo3kRpOfKVjWMPIWGguwNgLuyVbwdW6mLBkQHQIglImbMb
KAyk2obKJHQ57kVs/5yA3kdywAbbM8EWPNEY+9xbIfhJJHZkJqxC2stLwLUE5/4mtzBRUCJgJmJ6
0Nr29i8J80VK1qznLrwVUCEdwG/zvTAsPwy3ouqC6f3rDli5u7y3DvR5frJ3l+o1/dPu5J4smHvj
fsAG/dgToe8wMbhF2Jg8QitQxqLp3oSSTBVjLopzuX9Ja9nw80EpRD6YqSo07WwW30ZSHmeuL+BP
uW0IS5hGuPkxu4Rd09/2YSJHWlPkuteflDasVxjnT4Df64eQeVStWTSfbAnGuU8Xf1xcI48hzvuP
upb5gJRTK+7maf1rNetSuJfmNkQjl5ZrTmloRl0PqqiGTaDx1nfQtqK0UxZJNRLzcKG+9OMeam4G
5FWvOUA7jo8MOYLfQvHLohHrJWEoDgACMg+IFWWkdYA5rwzI0EB+MSX+taSnIlmLXydYpV4vsztF
JppEOVFzp0fu7tMQm26LJWEZKEMVRm/rR5u4TFYPYwwTpxwnIJuZ+bT/o1n0jTeAARF8jiUqT1z/
aimDvFVH1T2Rj+/WgFq6Lidwu06+V1JQZAmcuXF2ygk9jV/5KcDvXMrANfbM9PcyI5xGds8C5rr1
YzHKzo83LOlZ2t3VJrlAcnxIRZXPNuVhmdAP3S58N95hesZ4qrgN2LXGY4OkYm0nv2RwO/jKemMg
dOJ0oLWlPEtTBnVoa5uaQeirNuCRRjrqj2BYXdna9gAy265FpRFSaFPnxLCOR1sTtIP+aM9gnckt
Joekxo2C7SUFvj61lFkcN3Wl/4cWwYQpD1qPFcX2qwb6uN+T5xZlqE1HeHGufLP74B9Agn56B5Bd
x176P+iPjHd1xSPyDys8nYple0voGNQDlRp6afuWtkkD6NSz8vIkW31eWmsUdO0MtwK2s6Eg5TbG
matOEnCWlIyg57GZqa0P1GwmweHwdfudX/Do8Sm4Vvi7Ru3nD+8CjAKkqGwerqkJcSlT9MrOyuVf
pG3iPUd6qEY7YpsqAfBV36uKLUXmeFvwVnhm5CuX9zHtQeq6JYhr8bjK18leb4cyNrQmjGGIAkdD
V8Ug/ItvJEeo1Ko5uLGbi/qEBOPxu/twKINdzAyXNQRZZV3niuwhcYaG05Iothqn3+od2peysk2B
3Mz9v54MRN6eUz9jfXb1HohJYhTYiYtiZeR2/0mmWxDbzsgrto4K3Ypilqnaiipa15BzVFzZhf0e
1uhia21XI4Fvt0L4Gj0VRmh/XeyItHhBwevSEOmK6EQq44GtqVZV2AsSt+PRfYq6gxriDqv5bZOE
WDPVOXP8YXCJd4uCsZ0gMVCzHTRjL7AzgIkEqt+LcNbMZdb0paJHXV7OwfhLlbwnTVOYs8GvLFJY
pBzGDTF2PyDcr/R3KE1ux3U0MGFUARFcHoQc+nG0w35OiOJmCZmwimizYJrEKM/3QNLnc7r+vpbD
GKxipjGFJmSAzMcQZs+0j+STAEXcHOYMUVS2hkJZ4JgiSTTk3ThLOVF9rQstxcmjODGSsG6iORA2
6MpkA85GvcLIpUSP7X7WCZTJDdjMGyHIThQ/NVXw6MfWy6jyfF1ThRFzkkwAstfjh5AFfqR+SUAY
YN/oLPzk9qqhcEF4J9iGthBL0hlBnFRcTZXr7KMxPVcj/wbCRwhGa/exTagvNWbwwxDQ0o4kAEs7
zMb/egDkJglYe2O/RqjxWyDB4Gb4/wlfDkINfzOA2UReZ1ZxSDAP3laTW4cjEzIOgmwtLQa4rmsw
HZYDiA+PAz7unQT9zXev0bKi2MoqUMr5m3YdBuC3Wy0wBBsso31x9hjIwb7UiVZC7++Ijb3VjrEC
wqqdjFUSo0HVsYUIdpikUy03MOn2jAX43rqGz4amfs8knRHhjFS+FjQsGfzI4tkwo2LUE04tn+0N
NmTyhWv/XQd9mX4/JLh8TCmPH05sUvxbpvdxLoTEHW91D5qCEBlRSCVoCqpyP4Xu/ypl5bi8EJwl
jFzrHjpujEsc8j57/T/Jw9IF8dCmJtTOK+SOuuyxKcG5pJ1JDc7x9gQRYlqOTXs2Ez0XFb++nLc4
Y5dCzmXN+KSJG+69aNGZtkfC72IOEKA318BbqFFfX6j2xkbgwFIf3da4UeAzoxGF5GhmV8T0AnKV
VfYPPVFjenf7F0frs2QJc/sKaSTUMvbHCLK3vsmCiveFHiTGGrZMIJmNoyDPnQITj/1SKRV3+jg3
VWxRcsYmLcRGcL14/eUhBlfaIuPeATyMM+s/ywRrvUxj8uz6q5oHDFFr7LjSE0WHOog8uNmKu4rE
Kp331BeXIQwwM5mUoBCJogk7uhoqdHmVMCTPWC8Npu+tC0NHdRe+vkl4s4rkVTIP1yqRczqKK8Pg
CCW6Na+UVvjfLbeoSqGweictm3aM1v7NhzkRDLvzGEL6XE2PvIMVrI4US9CbS1R4qDAbvEARroJF
z3tfjkfC5pl10rSHRrhksZ9/tXYVa9f5zPPND+iUrJdnUcs2Ikgv3bpZzDOdm7W0OhS5K83Br9jy
9iR2cfRfmog//mIINeSOiBFgKC2Pjucz8FNxRlfBZjK3tBrUmXr5/b7tiPurgayE/d8kD0TmMhcL
GuQEym4/kMdbXEi4lCD7I/m04Pl/hp0R5gmUhUq7DYbSvpenyyHTmq+z+BIvhH7EhIqFGWnyDhlM
bv8EOXn7oBDQtbhr5m3LrfMgljKV74gpA6UPKT8WBZeq5+GiPv0KxoSLgpmQKFMXe8xvL9Aa0KKE
EzroYQItASOjUYwXjQaVT6OdTi3kZeLO7Ls8/HJ24TkyeplwYUfQiOpvxtiZy39QqgrOqSM/EN9V
blb7+JVvGtd6qf3OJkAcy4Xq210ZJH2cdWLX3a8+9sRNpc9eorkvF8Y7kaqaWuuADEeHtgXGGUf3
kUgQ41sGOQmY6pFTy+ohkzzDtfrH9xl9zVV+xA0CmsdjqA5rH8cLWPlmUUJkyIr6RGE8BsbFqIqW
gCRxAJuBzUlWwh0wVNU6RPwHv08qMz7PfaGL+FdtOAryJ/LNuOrDW38GrToOAH0JJMWO3/ZnjmTy
MPSAVQeii6m/3pM4hvrpdXKCIme2RFBTSRoh1Jt5nnzROxoyVauXwXH/ZSEzPoXHX9NsHQ+hZUVT
TBh9BoNiNiKKx2823gmRvc/+YQ328M0GG7v9/2KhIqJywysi5qDuYXbe2+L5U6uMEnZSw7hbja5p
tde6H531BtDB7FOpmv/iGsyr89MhFIJiZ/PJwIVlk6TxTnrDZiLlS4g4Il8lRXUjCIhemq5XARbP
kRJ+rdcCoqSk8jCMbaBt82NeMUnl2aicB0CF5rER7yWY2mC5CbnAntReU/3OSOQE9EoVsd7ns4lJ
grMAP7k5vBkH6DUj1vyocTtmCGqR87wOCAR65KtM3is5asWxeCjTZORtfRGtHIbbUeqGVB+Q4zlG
RgvfZ4j0tnm7kA4fwO95842tpBzqbdIZCIKAemrhdecif8lIh0K/SvPiKI35KRJMOQxj2DCFzMZ/
F7opOXsdAF5+2IX79UFcYpTvFd20p2B4NjIi+cO2F0tFYX4J3O4DEJK/DSGM1/Ql+d8GIJJOThdY
eq3MZk4q/PQkp15rOxikW2aUpFSNypOr6hTm54nCYZjw5ZmF9/0yy2ZHsuShEOjsL0OHVeNFVF0g
41nXhj2q4TiarjPfJtZaJ9qslVUGXX0Ww1tjYW+7yoVWDtAzwmJOMyF8tDFIu02XKVt3a4XxG7Y9
HFKIkruhjC/ldxkcSnc8u748sazf/SHlIQtghlbyfhexFTW8C9G4bb68sANp105MZRHBmdBAlS7s
of4plR/tD1Szv0438o7GX5eO6tadui14g/UKDa0lkC6XKLcQnJhlAlhkOHGkpIfVW0TOFPf2BLt5
xlC1171a/eCzjIC9Hy8Ug/Z0UtgvgF8HuLCHVUPGMrVin0eS520vVZtcF9+whoV/Shr9k/25qfNq
ud1ZDw/iZJJoKqcNFlFChRbYGa7ZNsKnAEsvgR1y+WbgEMKnROZIjt3dkG9ZBMno/F03y9aggTRm
7v9fpCXdVnB39INY/NgT+eYHfXWD13brw1nhyxxzeEai2SXD4XWtj8wOAnciq+cV+5LbmItXoB9W
OFeqOtnDd1sAxChDVSx9UcRlwWjqVDmEL+ZBGjW1dYwGVnliNtEnxUicFoESNe3MjUsUczMVrWDU
g4j12Ug22gV6zv5pUixdFzxVmtghtLSc/3e7mCDYVyp/pyRFQKmYDaaJePIsFNPK9XBA/hvddGL7
x6PSCJKUAWgS4bY4XYcgNETebWmIei0oTL7Ni1N5OkgI5a3TFe2JVCT+h42sjsBnS/8gM29AhMOI
TbN9gUaEcft5xed3tkgnhC1j6fR1obznYa0kpVbuN8Pt5y9LKQx3RuDk0MNYJ6B+f9/03UCsEhSd
zZUvBiEB3t+MToWnkSzddCtyO8zyuovtn+mJ0AW100NUEu0tlIiJYFisS6aNMTZLN4fwv1kuL0l5
9KUMCK6flIkvylfy39f+FRJrsreTReiutip86KyxDG5VcmCO62tatqCkBrDx5Uev2DKwEIdGEq75
bYXrJkxvhZ4t7R5vUubkKXHMHELMazQp2TBlkLHhzfCJyKYCbbvaJRRXk2A4yv7+wz73VTUNJpuX
i1gtmoQebYsUekv6UjwZSg4D2nsBpioSHBlcpTbr7En2M2pOk539tp4IihY2X5nVZ5geksNRWNQC
YXtsnAnG8HHaa0ZiCrcGa9FMWmPF57GtxEMu3FhArQjVZPCk6uRb7Hxq4kGybi+oBGwBe2PTOYdP
3PW0di8daPZ17Q8Y/r6hSbhkxwlu0M52PULRLynHuLoMOO3n/yCIOzWlt6+DS3PGOuGcZvziOC+f
t7vs+YQz79MUghpfK2cZQWasZYXoRL+qNv5XEPcGmo02p36kWnR30CCcBnayYEhr6DH8u+vlZ7zL
b49HuIv2mUwOQmdWzV1pwQKl00Gl4ipq2rSbUxcCri+9fMDdgAt83tnlrQC4AaqvD1q98/9WAlBY
tGZqe8OHkJrTt3IScf+l7fUsuEof6khoFasLsgxpcWf993FL02YuLhTZS5ozI1nw7j3Olg9vihci
mHfK47af3R+ZRdOEGOzeWGRpJWfvcx4tvKI4GLdsiRfC4r4LSULUd+hG6zz8s6NP8/TPhvydq6C4
5v3YR/ssYluFoEaNml2+FwKk/r7KUw0qIu8+0Yta5vjIozETaeoeohJyo/0/3ZN0sJjz5PhFZYL1
2QbCKLQrPyueXZ1IQzfCTQz453V6EgUvDZfKE7/AzFxm+AQuie7nH0Wlaum3jTfXOAbWjv6jxNjV
QKImZt2VhpfpNdg/5dLxKdym2fyRipOC9+kA7FDTt1jl8j4ffxDvnD8Hj0sMnqZ4aLMUK8m3rlOL
KuwxdTwQzrKAqtiZspA34zmloypYuI6di7qvj3vafqLlESlo7l2tAY26fxzaLrwtlaCyCveFobVw
jxdQRMFvGhLQXZXl4sKR6KiTtjPaXYG9r1rUnd99UVB5AQHbGg+LhPU3zphl2xlSLENdT1hPvXdM
oqXnqfSLts0ieOWLZANi0Bc1ihFQonCMNNtdUMte2tUd9c/HXDiN1C7OiDe9w2sONSt+pRCcaRev
WYIujB/RPaFLpe8jhVXwcpgV7HoUZHq/BBprRgs6usfsY+i+/SwS2JnqXBTUPjefksW0bujvbgOk
mMGewPra5QgIgWTjJxBvc9+fUKyRfVcB5XPqHISuOhm3BHg4obVCmB03C+XbnluSvwNAT68E4cBf
9gZLFVj/FJP9EtfSi1sELaxF3Je4TB5Wm36Msc8VQ7ezfPA5W+bsnaR0TDQM3H7aOclabEss9EMc
q2qeblcIrpEDecxbpZcSsBzJPGrBOhw837o6Xru5WGn0tw1EGA+ir3UzxPtSpHD2gsj+UJt3wHE+
MZBHLxOFfa4ibcj2JXvxqoVMDGmu7SKZzfqlIYHVdCJ/L04q4WnI1SrOi23Q7HQB4fQa2qN6JZ6+
lyo4TLtUvJpj5UwfWiAGwyx62bRHikuALgwyip3DlMwdBB38vxSskLRhTuJdn2eIK1tkSQA7Hadt
lKhzeMvOFm2nWIdpsZ+Shf5kBNa/xzoNrODt3Rd/M4Y812NWmw4cjV21D12YZJamoj40lX7wzyzh
QFBU6cMTlFF4NsxeUJgOgUYZPO0ocSYhk1cXMOPGIeAcnEq9zTeMVR0O+vd+VTVzbbNE34gOmSuf
Kx4UxXgvpV+zmgkZqO0Q2fiUygmYHyowqjknUrms57WJugdtI4zhQzSS8zl8judWJ7Y739p1WWHC
qh8Wqwi5wi5Y1HX789nG4d47DXpng+hqSDgA8vnfhgXkLjeAHceSYiEZy+bsVVa979G2JPx36b5J
1fAFgXti05MM/j1t5cVW3mkQ3kTIwXhjboGnv2gCU6rZ5HvAjXZ/cvOFWC3dtWeWoj2/WKpTVDEk
NHs9XcJt6S4uuBy7DYxWbzHvGFSGkRgTjh4XDfmSWvS1BI7oPvWUUXOJiN0ZP+kwKbEigcbm89oX
S6VE2MOThHxE7rHl5UG3BXExmjUtTSQaFQwWnFm9ZQeOg3YyVAxfYimdV4bXNq23F8tQYzqxd9ha
N8g621bmagQlUrEQHf9eImuZCRAKVyFdhsC4CZJ5lMu0w3JjpfIAg02kAYTISwMRTto5P6uOD/XW
Txgec5nKGKu81yrflqBOZDXIyrpeTZKT3dkxOyZvvA//uQaCG1WfD8YO/PEELaCFeSlHILobLB8w
uZZgDryCkyj88W+IjBohHbxYuj/u/Q5eoPWEdLdEiadGFambT0QvhwWs8D9hfJr8Qgis25WxeojB
xzLFB/iCR6r8cgN0hk+FOPhwbGnVboC/VBbnmGk6IR5HMJFwIzStm90XrDgM+VVIYC5FytQVQ9MS
z0uzU1UMk6fENoExeFMbuq7gUpl81XGLiXzse+1OQFt/XyaBQlkbmGggGgj6WjD/CQ/fKtoA0eHm
ZNHPppBXHdPpgeBjwjdSZwKPBeMIwu1BoSduYx29mw6ZxlTz/gvEbsKA/etaqvNjUJmSIQxqqA+/
/vy9AH9Mc3SIMbXGTqHcKVkYrxSKLzgq9pp1RFMHhtmJ3+Pk7yWtFCZUEVL3w9jC3YVh6I8vVkl/
BRN0Fy56ZPNoI+hzRUJKLyVd8ocTewKrDlu88HDpf934rpVeDdLzM1T0qhLc2uLFg8pDUxBNGNwY
vUyCQOaCaOXY4E9dVomlUMLW6fJ2orx0YNqtu/oBAXVS6rnfSthFtLDR5wa1suTIB48/Suxixayz
yDHilT8iTGzSZcRBz4+1/Zf91nq90Xhw2fbEHhDQFR1w8QKY0jAjmoPnhdQbEhOUkAMNRtMvbCzP
pg2bLZ5jzFO6fXTeUz/V8IL7kK25JONA/v9HOqWOKMZ82SISwZKQEGq2acIwzCGgDhZo7ccjTPwM
2hUesD6y8gg96UNrcWprxMqhKL/zYEh3pa9Vs+S5ajEUARxddQKXBKaKfcbSN0KPUsFUR16Dla+Y
7KR64rdu9O+HTY+7Ym/1B3SeVqd80Zig5qijjdnXrwonw5Qq45e1YbXVKHT8ISdBrb4XzLRHWvA2
YMG6JqBPYKp2GwBxYCuLu8mV3dorlXzNHXw//a9PIWtuxoAPC1hMF058OylLo9ao3R9wDYL9e/qC
aj9RQbj/CrOABE+AhvvXw+lYAy0csYmyMaQkja5txNinzc7saaQSV7PbMgzAx6nJJqvEd37dhs2X
o2/h8Z38rv5qz8vO+Fq1UJCtr/JFXQdEXi6pCmw5H292hjUGQmf2QdyC65eMAc4vNYakf407CIi8
9FccbHGu2EM1ao8lq6bUL3zpmlQJxrANHylm7a98Ec531xrWk1Jxo2YLK7X9dTVoggFPfgQmFvEB
OnEGt5gZXSI42Kr4Xu/LMhc7x5ftDIZ+SAgQehV8Eh0Nhohp5kVgGv48Jklfh4bjvNy8B3JaqGCf
SClC8Fwkr8MMZW+FH6MDBN4YvbIofBP3NMkzkElYBJG4rUjhAowCkd3MyeoRzo91CyfUs7rrDhYy
6J7ncG1x06ugEkBPAllT+/H6VRfqNpmgYSpAxN+v6TzcgXpg3fZcDV+RtZ0NNjxQI7JHta+HLu1l
iv6+G78FcFZGOR8EIx0QW9ge02JRhs/R3K1dcU44iDmF/Sgt5ke8RieUCenyy2pAPlMtARnck/aU
LKsUvoArUrC9WwnDcoJb9KA5njZcKulzfTx5cKxqWjYz7fFYjJYpgh99PEIo54xpFE9OBJPMr65d
EeTqedeywZ7cuOMnCagG1mpKSf2Zt5aJvNrPXZd6Pmx+nc9dbgTtnSQmqZ7j2ZbpvG0wvV73GxU4
HQSgNLTuePyJeTbqku+UqKvWvbtPD6OOhfs2dHMAaz9Prxq7CTF+9VPFrj3lTKQnzdRqdry8kMo9
XUUw7tCvm/2mJQxgjSfPaGvKd/F8YVPOns3LySuuImivAVG+3dClCkCQy4r0JLd64YBBr+hLXgwy
RzPTI4aI6sIo2Is+zkPXDBQCXoejRqd5ur0Iazu57NHgNvIo3dXdmUNoXTn86BDo59soQB4KooVv
TK90isb+sIf5Jo1Pa1yHuWmlU9kZ6E1vwDjflcYJUEL/NbauCUtW9B/0oI6VMBK26j9XHCOraob3
I9vAdAxoV6yXcfyJfZYUw0oJDEcvVet3+ER1LdXdrtcwRoo7mjn89JxfbLseBh5wkRycXA3SycVI
6379qqxhKk/sFQazBpEsEk2d9DOqDtdf6rg08Do4d+DKbPPW44raREZxfNJvNyzRMlAxo7M4qvuX
/fnlHYaQ1AiXKopjVjmgMB5EqCO3sd1MQkXdSRaYvPEk0ub2CLznCHSFvIzO6PT9/VMf1xsJmieR
R8FkgzfMlowFMupcQDwWCy0/tOeioio2j2xNly3pl/54tgG7lm5TFIiHz1Gv66OnA/kNwrKkgdg/
JdQGdTqTCqUE6wV7/kj/d2g4FuaTVRKalO/4CPEcz20JUmNR2JekXyMbxo6UfE7N/kMoWkSlvrIF
Ai+Xc5BBc1OL38lwSdebU1rdbfsbwbgZL5RhaORi8Xx9wyR6p7RMNm6R4GnQMF3/gbWHNVJPT/QN
FAoBmXpxLH9ThzUEHi/ONzZ1I3UDesCLAGgltIsucb+kPnoC9kpfCEMt8o6MBHwBPrhkGJWIERU5
bx29xB+ri2T3P7a/UYt5DUTqC2G80TD1Zo1yMwApU/3+xgfrFKG6EP41sf2iwO0KpdCxbBVebDKt
x2GL57MusoJfV66rMg0bcQ97XdBjddMGm6U92k1mHPAsKgEFtR9B1rOrtthM8HC9H0feateGMTAD
k97KnB3xJMvBduCybgmII/KoDjlRWTYM+YwcMZBf5vjfE3qMtshATST9dquLqz3NtXK/KCleKzU2
yAHH7eftGq5wGukqCXIse76YU5MHkXipJWh3UfgIZj08SVN+sUgZp+J5AlMrW22bV54X+0KpzbkM
6PMQy/AmJezUIqjg5rHUM2wx8Mwf4LjG/6CmxCOaw9+18YD7FSSy94jIqYFOQuhD4BwIlsTvB06L
JqXtP2q1JyY+UE6TL7vZMQMz8cMlt5Stj3P+GDZudnmbI8WnDJWE/TBHo35PbpE4EnNNdJabPPEc
Izo4GCFniiSjtOpvazt8oWHDgM+aXwNFumRzCBuJTluaJHhuAebfStvx8fQ1er0gJSEcmWrL5tlO
+b1jv/orJgZm9kp+gl+4wRuwG75O6kLqFV6TqIpfnatQUM8N0KZMfu5kLUDbPdsLzQFwxCfnfZkD
hAi9jM/Pkppb+ggDUoBsmgYCSyiZzXulS4QR2KKx3Q6UEBzd9rjeIFcG7vM453pgpf0FOE6F8V0B
ZvJWJXk9uBVCJwfcP41mbi4k0OM7jZPzo+LCP4F0bXstG7W0s2N1CBFXDbwgXwmcuTpKrR3B5j99
4WhpOvZYzNhPLLAXemU0ecBf9ShjEP5LTqu6P0lD9+VZ0PCSp7pG85N9ra3AlIYeN+V/0ivdQLTn
RYhNdIOte3jJRz6V16RmwFBgQETPNBw5MuAOjNqw7R0/ECVkh6bXKmaGk4TZttgymMhrIhcK/RsM
RWvPfZq2dZ46Jki3QnrKIZ7dZIBAjaTkmWPwNSzAmnYOfWNQXn65VDgtTsmsg3nai+EaZg9NQMOV
uugTsFMoIALvRQtV/9jRYGtFasRhCYbjni5BZHjkf2zf5A2VLQ3AuxjbxIPICTF8daxJ6DLX3smD
9J90+Y8NiBmEuP4d/+WiEFAThUYuu1VYTRKab3rpa+mV3gr18oRQI7vK0o4hQfhNM9rIYV/BPcUI
cyhMVa9ERwKpDyFVNN0LwiJxtqJ14VAABaUVJvNbgAeinA+vNS1z+dyrN4z0GObC9UaH8VgMK2Ng
AdAPFdONUNhNb8U52p418BlVHeQ5KVOwkgT94QlkiEtrzZbFuk94goa5R4A=
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
