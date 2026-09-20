// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Sep 19 10:35:19 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_1x32_standard_async_sim_netlist.v
// Design      : fifo_1x32_standard_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_1x32_standard_async,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 99888)
`pragma protect data_block
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
xQOb2OHrkytjbdafgNRw3FhoImS8K3Hv
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
