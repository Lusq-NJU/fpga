// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 27 20:13:23 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_36x256_fwft_async_sim_netlist.v
// Design      : fifo_36x256_fwft_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_36x256_fwft_async,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [35:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [35:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [35:0]din;
  wire [35:0]dout;
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 113056)
`pragma protect data_block
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
doXyRjz3gKXr2vRYGlOVM6itxERHj1KYRg==
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
