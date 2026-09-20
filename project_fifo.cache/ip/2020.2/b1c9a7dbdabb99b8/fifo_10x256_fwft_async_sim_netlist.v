// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Sep 19 00:16:53 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_10x256_fwft_async_sim_netlist.v
// Design      : fifo_10x256_fwft_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_10x256_fwft_async,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [9:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [9:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [9:0]din;
  wire [9:0]dout;
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
  (* C_DIN_WIDTH = "10" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "10" *) 
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 111328)
`pragma protect data_block
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
yrWbNtRoww==
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
