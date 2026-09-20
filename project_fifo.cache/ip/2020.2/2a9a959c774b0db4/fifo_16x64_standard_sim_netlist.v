// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 13 10:38:47 2026
// Host        : null running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_16x64_standard_sim_netlist.v
// Design      : fifo_16x64_standard
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_16x64_standard,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
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
    almost_full,
    empty,
    rd_data_count,
    wr_data_count,
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [5:0]rd_data_count;
  output [5:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire almost_full;
  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [5:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire [5:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
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
  (* C_HAS_ALMOST_FULL = "1" *) 
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
  (* C_HAS_RD_DATA_COUNT = "1" *) 
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
        .almost_full(almost_full),
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
        .rd_data_count(rd_data_count),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 109648)
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
