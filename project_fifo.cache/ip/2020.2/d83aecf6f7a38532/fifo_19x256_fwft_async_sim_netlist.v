// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Sep 22 00:28:10 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_19x256_fwft_async_sim_netlist.v
// Design      : fifo_19x256_fwft_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_19x256_fwft_async,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 111952)
`pragma protect data_block
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
o58ANg==
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
