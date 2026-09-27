// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Sep 22 23:29:41 2026
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "253" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "252" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 104624)
`pragma protect data_block
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
vja6nQWKvo6Zt/MCzR8EcUZ6Bi2kUuK0/AvW3uE=
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
