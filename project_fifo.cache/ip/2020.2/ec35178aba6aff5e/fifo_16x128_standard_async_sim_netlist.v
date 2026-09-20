// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Sep 18 23:00:50 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_16x128_standard_async_sim_netlist.v
// Design      : fifo_16x128_standard_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_16x128_standard_async,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "125" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "124" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 98544)
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
