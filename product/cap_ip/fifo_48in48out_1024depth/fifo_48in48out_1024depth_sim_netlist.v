// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec 20 15:00:22 2023
// Host        : COJTHW101 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/HW101.COJTHW/COJT/capture/cap_ip/fifo_48in48out_1024depth/fifo_48in48out_1024depth_sim_netlist.v
// Design      : fifo_48in48out_1024depth
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_48in48out_1024depth,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module fifo_48in48out_1024depth
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    overflow,
    empty,
    valid,
    underflow,
    rd_data_count);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [47:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [47:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  output overflow;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;
  output underflow;
  output [9:0]rd_data_count;

  wire [47:0]din;
  wire [47:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire rd_clk;
  wire [9:0]rd_data_count;
  wire rd_en;
  wire rst;
  wire underflow;
  wire valid;
  wire wr_clk;
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
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "48" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "48" *) 
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
  (* C_FAMILY = "zynq" *) 
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
  (* C_HAS_OVERFLOW = "1" *) 
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
  (* C_HAS_UNDERFLOW = "1" *) 
  (* C_HAS_VALID = "1" *) 
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
  (* C_PRIM_FIFO_TYPE = "1kx36" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1021" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1020" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_48in48out_1024depth_fifo_generator_v13_2_7 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
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
        .overflow(overflow),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
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
        .underflow(underflow),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_48in48out_1024depth_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_48in48out_1024depth_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_48in48out_1024depth_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
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
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
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
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_48in48out_1024depth_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
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
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
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
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
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
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_48in48out_1024depth_xpm_cdc_single
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
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
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_48in48out_1024depth_xpm_cdc_single__2
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
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
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 133872)
`pragma protect data_block
HJNdyDZAeFzPfH1MApPRFfDotg3cpLjTgHKqXFcJtBtb32nYxksTx8IqouYfYwegdylSC2pkUS1X
JG1t8CTcYHejtFrdtFGRXrhp/onEInZ8BLz7kN187QlqkOfwPYvkJypW7FivOV7rRTGSVhLtAPbR
Euz5bIrkpm48nDnAXaDrAcCyF/Nttbt5fNf/fQUi5yUWGQ6f5WrVrLpwP34h42R6BrGwzyN0Pzoy
Ct4W3ThVvo52sXWIhA7uvRJTAc+v9dKxc1BVV8bslpSoJS9JxJ8iSHnMk2Z7rXyLkKE8EAUKbqW4
AN9Wqvj6X36aZ0OgMrSms2O+9quWXCukfHFAH8IiyUTDv9vudJKyH0UIAG9MGUBR+LADPlMZBwoO
pgtz+i7C2EWzJU6xco7VVJIwvWqGF86rxMLjMKMkLw6U/cJtEwFOnqG+NqGWKUfQ7OmkDnC6qn8t
0W0sW+N1qM47WixP7/pQHCyuD5rbTJa6bH8/IlRRRoyqFdU9uMBBzpExkc0ExV+GboRxpQAFPgMB
lUB2qJh5ZM7xNmsr3wtV6tnrSdiyr08g0MSHJAR3ztbVXJAVFckHRcLhwwGqcMI8efTR6//C51/r
Yh4xpqwKRcTkwbgXp6/FYjwDdh9hDkwo7seMxAnIGe8QPqsun2rtgSbrk+OR0GmQf9W6fMVu+FKx
ChEmfcp85eneQYoPojIdxURys+dnSp3Rl4nNj6DLrPVCNDHqtJbNB2y73Ooez8AIWP7jQOgGq3lb
SvB3pFEEYPnb5mPoHI4wkdklssBlJVaky2nApzIZHj/Y+hUJ6V7Ru5pxnzzR5o0uhB8pqIhrxk4k
8Nc7FY8SzyrgkyXRE3DzFpMesTvJuyh1dOcnMvRA+MIjLfRy6iFfH7MjV9V8q5fFkHkJiQ7X08wl
g4tmbMVkfHxGnU2+0Yxwck4lfEIVTZEjx2SdX9ZdonSGFcHqmvLMoI8GFDWoBW/W2g+Y7g9H6cuE
FN01T8tX1bL528My+IVyLDgI+PTnumMJQHG4QESZYJA6EavyA9uCqwX3JWI4wSI8dqInmGuo5iWf
xpgcY8CIMKDoxFPHENYsNpxKgIUbEN6l7hEdlyP7To+ZCXt82KQaFEyg86hljBsFBy8aZmj/S3NI
1DQVCxO7dxkY85GnOTpHVFhNaN3mN/s/FJ3PJ47zGAlqP+6XpKTj4ap4Pt8ZMic1TZO/cq7Nx25r
qcUa6y+rScmhw5jVdiLkONaU32SaviM7DKpDHoINrZFaTmAYKLX7fkH8ivHcv0gD1CELkXawgPGH
mL5e1xTOkZke6vF+WYk4r7fZRzyfNuucgbAJEjCq5XWbyjruHK+fqRI7gyleh/b0DYotQRbxkJvL
D9kdp9QnMapBJ68J6nZS4FjIkKO9XLTI68Yc/dSv8MOWQ3GY1VSYFiQJWr040+4VHcMgHxJgXpM2
3MuDx84DXqtEQzR++EwEfdOWiFePID0TtKt3Dcz6fpmAzwhXzHUhJhvxLEioOJS/MaPJRc9nyJrz
PArRhnkgXghym1CqTuXDqYvgcphHr4NadHIk3rRI23N/6xdlN+vbMiurOmap/vYM5vtKbAbmjQDE
7+rJQDp+7tktOqWzjiJBTBCsHiRT+SPJF5eKUrxwyHo7zDXpR6+fSdwdhIUrWc339CI2Gv4/B6KT
nRuzJNC2l6LxnpgFI3mfkypQ+ZquqB/CgIuAJKen5VPtKqWBUkVvof1q2ZJ415RB42AA6WVM20xH
OcRbnqkym5U7uHfhZ0qCTDKqc4hLAQ4cFFYdloVi//kW+1Jbk//WuGW1EdtGj/pN91MvOa039nN2
N7JMsWeITuVpQt2EOpwFK6mMSxW3GJ9bcFIAFP3977u9DkDxNC4F84ZG9GqdMFVsePmz5hH1rdGb
RVnAADdHoJZ+7iNIwguQX+g/qMsiZdv4wp7ec2gG1LHtzpYSZxube3gm7wuANwqXXDo8gvtTtOgi
wi7H22lBsizPr3cL4w6Aiy4vh9M3256uZetiXxrVTl6NrtCUKGfYmgCz8+j1QiZQSl7tzkc7GFNv
BLN3jYK7wXmaJ8ZInfw7XmTtZf9x9a39D8aFRjK4wo6ERIUncdqg8qixCv6rhs6qUff0CkD33AMA
isI1DtuVgJpG4fv0Kyi2tpGqg7UtgLBKirdArzHds644+jUMHj0M1LGPxDxIPGU1XVI4rT3E6wFs
zgf31tYW9OenRlEXG/fepEYmmAZ3vhmClydO2XNQsW7P/DVYZC8QusuRogKLX7ALtwYT3FN1YbAq
Sa3bdEInOzqTwlwFoSmMAbXH7Ov6Fd5WNrUFhO3bSIP3dNGRZ618e4XBnEM3Ubz1V7IuZOMTUOqd
j4V3fZivlMhZpW/dBNQwPRQqkWWndhI7cSL/I4OcUdy6tMkSHYan/6pYnG5aIvqcxosKNiis1PF0
yuhVppACQfkvWyQZvT2WvXiOYSLuh56//0m2xiUjC5XPql3jxl0xUNiMhiK88zt3lGtVsgJS607E
l5nBUuftAfWZeGNx3X5GPlIeDn1OXdkxNsOJSzFRwALav475PHFMKr1wtSGB8cQaFhB4oJ64KqSS
fEkUfJclXVr2nPuWXKbQd4NB6wKRWPlLCGNHhFwdSVbqbtEuLyD4UXMTcXQxf9BFDtQgAqtN5gTw
fOMosvZe8aYRecPsoD+MTJJdFrsd0MuO7hSmp5pV/ZRuPLyd+7hyxw/0KSmi4QWaG0Hct17h5B02
VDypXKR3svKj04XeeWbPLngwctYm2i6dQ2+E4+rfzBfn02rxzKZXrwh7kiDnuy8unI2LX76P9zz2
c2Nd70rE3b0J+dfmRrmNGS50NGi+63k4pPHYsAZv8JRi57pZND0iVYJsS24s8ZUoe0XUrztw53pf
eH78zfcLOKL5ddhVfdLFtGL0BcJbIzNK4TGnB3Z8uN5V7T+VnMSk4ayAIzmAMDD3zR/2hbbQ6vfI
w8N36rIqpWqaRO69sTOVUr9ipU8KGy5y2vWdBpatGCZTm/V3XZKVkdfCyB1NQRkk7y1NSG0yJOJU
5TFfov48q48h1YW9/h8MhWAs/xobC38SgylvqX2xDFxDJpQfgSmshrax5siosEFP7a3lqU/PHfev
Tt+pVjYXh07V1gK+lBFVD4rAQdRGBez3lkuHGnS+vX2WTGl6Pd2esoXCtklSYRpJKCOglay65Jrn
7x5b0N8aGhNSbiiM4h5/K7iBIfndXLzrbf4hl3wjnAHvhLiYWUS7mmFkFrkm2pZfCYSWw2gHyj/0
SMcdFpm3KfV1BM19+OoEBJOC8U/kBwg5mdQXYyh/pl/FO6n1vO3pf1Mp9FzwI5zxXQ1RwCJKjtIf
6vPVgRoSNs6ZelOTjWU/IMdTHzpsu/ti3NNnuP4j7lW3Wwrkh1TDUyDEMvJcC0MOxxcf8iMYQ1Lk
eAD6s7MZTpcUpPC8P7FripNOezGC/8iCcCF3ezDflixK4k4lteskBV+WyJhNTLiqA0B29mnT2GvI
ddteJyvgvPjjJA3f3wYkAhnswWPjuPY/yEO9UsjsMI84bTWHCMTBuerxT7ZAoxF/fs1Wh1gWYu6f
8tBQt4kxmBGZvc3FVs82KzIIirMJcEuCBKYAUKm1bl+EXXi+zUZnPcz7ftFjzJvrzDpxjpTbiy1i
Al5JGhvqYNljpvwe8Xe8B5lu0CJIuV65P+nq9R0SGpE0iG/fxFlC9asgTYPFPHQK54lgVMA3W7cT
KHc8iwFHDh3apeRibToeHawYgqNLthJuvHoYmGe71UEFhA5ijXMrv4l3p4Gn2C7I0e+QeoQqoImn
ZCvrrLwNrXzqSM8upDbD9b12GBwv7xVDpSYguco8dMKEUMkSSf7eeY9s0mmwzcy1D29z6dgp9zjN
fPgpv2HT5M2btYnKzFm4miy6xS97nKdwXIhS/s2aW8daRbVbEAK+UFJioacAHlCXhDMAWm+4KPVa
LGyC/Dnd4kRPZApYz76/N1AS+/emJAiB74XgM9y71wExMmRCNoHDCIiCE4QjC7A4slTrb9BWhtoW
0OqFecn8X9Y9xNJjCjkichZD7iqg6yb2B5Mlo5MYy87HdoFPut0V+2csebdpypRb89bjDx77FOt/
lT0AAvVDM3Bm+870MW3U5A48RdGRRmX2Gv/SRrJcJqZH2IZMo0Q2e2UKohrd5xU8jaH3vkWjQFSp
SdYaWoS8O7pVz3fy7tuNK7wVeKIp4BoztMEeo8i69biPm7EiypLTJtb/X6xvDcXZLVXwLnHPSMCu
ubtxjLPUEWoVr2XeMS0ZbM2phpFYVT7ausI3POsLIS1jqqWuV+DrYFLgJoe/1ZD2qMR4MlVHa/9U
HGLVOTNz3GLxxb4hHhuwRPdTxv5tJrbYRvTvCdLi0+1oWleGrvQagdGO+bdeLS+RJFRtSzgSe/dY
/LqxZngJfueTCgYRwYT8yViPNFVHiWNRvkk08HtHEEQsCZaAHhhc/sc+/xlNt5XT3vWO+FiktgRu
lY2vigbM6YU1tqa/kS5AFUGlUUuO39lbLjCvD9kZF2NV/ur8jrA3aHgCiY58p1sPL48n4Y0YPmye
9+rR47P9J4uR3N4705IO3t1ku7hSWV4lokSIhsZOCIwL+++1dd/ayU7SLIcbtfmIoCuW0OSZ5/Jv
qJGU6fTX5Qc+SDoPSx1tpBhE9ZE4ICIqIQWkBtzyHxPfw6rR+kPrdApIV42LQpWr0qVrFB6hzlEP
xaAl6kKJb0dqN0yRrFyWlRafJSqZoysCOukGjXFMHh3F1c4I0O6H2qBPdPYo0xs4/x6kjCy5u5v1
Kgb7OYiMz16ncsb2fzXYMzCCwZkSMOc6nJ+c5RrqB5y6jUuG0GkmWByLG7bpag67ByyqVKAnuckK
v2gTh5XOFR7R9ZrI75hkC+FzD7SUw5z6qoX73mfEmYZBzjm1J0OdM4iLd0qDQUJRO6rWyFQp+jLX
SvjqdBCuFnAIwrUlzZ5zpphRJgojrHtFrkVXVScPrnwsZWLe4DiE8TEqonnmUrRx5nYQgNFbruTf
2rtYqa/j5+wcK+jF3hutTWzZ8LEfh9pEtG7y65u0n7Nwoz9DgpQ9xq5KDRSHtkUmlbh8XdY2VLkN
WHzohVX5aBvaP5a//MKkYcYK0LPc9eu78ejRk6QfVt+B0mi1UXtOKPrUyzrq0jwN2urgVdBfwdZm
Y9znsNrl3wItbEQpx2NnFDJioLqMQsoD9Vx3Z1sslNBEZn7tY9raZ2Izal8OZYFfNWNLkn65kFpe
sq5spYXx1SWlmUy9+WGktcWvWzMC5W5M/TmZUr+ol799rHCwEAZbSgKZQdFje4UvMBXZ845+IHWO
2rgjg85jMOxryxN6d6esIO+u9VXU9s+Hf7UZd6TTG0jYpScAYa91kCOoXDaTrxxwJRYlvSp2Ao+F
7jmHm6+0PNvatDMKsBz4vWhYsLChE4pOajSJ/SCFWlfxEIBVErGY0ZfviHEvncQTMpbaWkdRwuVc
qYQOy9cQVejo7Tkor3C7+4fUHoDVe1G66wUlTGGHfrrNdt8D1d2yztYsPasVUEfNJYCQLINFMa0g
a+xKUAuf+g451XLf1pQ0SQcwypNgLGH2CsLFHOsYwqE5qBM8p6emuiJh2OInwpV/yZLm7PNzRN2h
Hh0CXu7rlzi4P1T8VVfEoZBRK3jhDW5r1PF2HWoypK6K6PolMhkwPu8wqlhIobrm4T65vC6v3yqS
jCUlpgVwwlW81Z9C58t7re6bj4xfFC2Xn/VmGknbbsw0hBeGtTptzMcdVwsxrSlgn1Eg4gQmu2Hs
dIAneZE2dNgKO7JVrWyVMzOh2FkCsv6C1rP+SmeWkR0D+Equ9oDoRk2Dsu6wr8YSUxPfk2T//RRz
jG/AwUfoJSeB5EbO5srhfOANDe/kUWsdEo5NyfI1O6Ic6MpzaLEfeIw4UdRJWWqhx2TlaIVXQ7ge
y6uzgtPbM21xaQQvSZ9KV54JpCDanivwAgvuvQmLY8wUCKifBQ3m93bko0WCcMiatL05mvtCHjYU
D9TVZaSJTUcSw7VyYqWW8ztkXvyttVMI986RTJTk0efH2Bc07JCb3GisUXIpub0h6F7NXhlg0sCQ
nY6aeTpCv6EFrjHENBt6GwIfaJljy3hq2dAJOVR1JOeZ9LSytKTggv9IqlCwgM2/izkgR2NCM2ix
D67C8CYAy20abeV94IbAmaQYRItB1ZRJeKKNXZ3weA9wBetfbcV1YiNyHlosc+nLgORefq8IXf/f
w0DfwCZEFC7tZrQwWijT/gE6vsUyw8YvxvF6Yt+TfxzvAAXKZr483gQLntllVpObwgUBE45bqRH6
d/BeWT/FuN7BylklCaL47xeYWMRAgtIn4hS5gQcglaR9x/LS642DGUEz3nyZTH92COM3YZV7x7gZ
u3g084eLrJsQ9H+YJNpk9orr94OAPXztuOcpq952t6nfTdw3hmaqWR3Thy2EzNNPSITqUNM9rUV0
jt+9mB33WKyAnLYqU96AiGQSilsKkcDFgxVAoJTsIgB0LKQXpciMECnKlA99bi22ZorrQ2yi7A8T
PX5Bq29i/vurNoLoXUBGr/4M1ajsx5fgp8z4coVV8BxTN3voogyRsYmer72U9SXwYsuEM64OEtHJ
bGcoVPRdk6r+vt38YFfkG02LXlm7wS/XrHPD3HddnEomx6xEoNDM2C9iZosa9z/7emjtYsiZoAhb
85b00S3xiLQ6xcc69eWRN6BIbDVMpVnkZgyxxf04q2yE75lNefShyaqMMvvsL+/P5QstM6ajfGPF
1U7f9jEeRV9vD8tBeMgUYHH4mSeMIlQH2QUmHPgCGmI0LbcoeJpWsp1ubGqObrhAsh2oaTa02EdM
r8Zvd3bIKQiBXiMtPVioNeuk1VDiL97g0IfHx+0mAG3fjt8WUUpKWQLNNmVf0T1uIY6Rnnb6fV4k
ufpqwyFP5xAefVCz+tJCPX6ZdceF9hPLmOGWKaP0Htzy3qhd7Wo1ZIGuAV95oLGmS+9CoAbPi5In
GneJQPCcI6wFFtvrxqMbflf8ErnEAO4dUfzW3u6Bq4k/3S6sbC2Z7VnNvppy653zVReE5NWD6Xrj
lpBj3g87CKp/3Zgjrj4KmOSLxlYxj784Qbp5gz7HOFAxioGdUSADHMNsEHFIMRDM13K7Tl6RhrNM
/+414fKHYIHN2zI6lD3sYZCi5u+xnuYYlxC/p/MKWY/VNLe3JMLq6llGFeOcqUaUuSGJJfQ9cUl+
LiWMIuU7erx/MALYozSpUvrYNMCwpYVphcR00wogUyl1eZ8KgB/hdgxnjrTpGZFL6yMy4O6UFxBq
AaKWcjhx78bUw1GsUPG+SroyJBtoK2XK/FV48NuyNmCZ3hsF02tk7lUVRWFoASaljL0PusEd6h8g
/MhcLJaiKbzvHOTiqXqh/t4tirniBQU4TjYBqL2U1lt4CXrzMASI3UjLr6RN2vfRJua0rNQO4IQX
VNeUVd/CZLaC3uMBqwM6VqENHYfLznKT+qfSD0wlyBefiqlm/0sYocQ6cn3gcUvuj77U1ux6Bb2S
xbC6/D9gYegMapoqCWJYhbMnoKe9C0Z8MHh7xfTxfuC1KcZdwxd1m+8UGphXjYvsIgQNQiTRUOpv
zHjucEuDxpQo6QP8GodNLaywHpsqIWHelU6pe8PWA8VbSAbE+4uNpXeqQAdrL2QmTw0TvI/UoYoZ
XItalNwSkTHViuRabGSNddtG0+MwGDMROar8qVREpRKHdnVr8GNYRcz9tumSsjPmgD+HcEhuqJ+f
2KDT5po2oz4HIefy5/cCKR7zpAcWmZIpl79g2Fm92uSV87MdiPGjS0YfidUDeU8Pyuo/FN1NVUlU
Q9DUTqO95NnRcNz9uG+HOYTkX0fq9jLWt7n72caEjGUgsnJpJhL/rltlzKBPfjk5tzIlbAeZ0Emy
rNnRkeM+92wyXG8ckt6YsWRl5DTHBDcySkzwqn1QO316vEGyCRQBOIMRMLxck3AM2cBeTX4R+myI
2nbum+ZJE4x/8HtdTOnpbJuDqSK8Fbkc3PGkxdgBQP9gFXwfdx6Ixu1ZWjgQcjY6WviUO3IFcERS
bj6UDHtGVEWf8804EFUHNZqTRt8GjDefWWZxRkiAA1vfDnCSCMiCTla6hfxcVZgPebOywP64PRWe
OAuweq3tp5Cln/OhRLzgjd/io9Mh78oH7XEG2jI/VV22uBr3iZPWvOZcomz1+gLt2SIJhR4Owf+6
iHzZMv4pZ0LRiVhWZ4rULFRfINpptxrNoa7UgiR1ESW8ZSb3tX7Oym8QnojeZFnL/dKQ99mtVm9+
46vmZpzRpN4redw0DDRVH67tuFNvXcFFarbhx4mXSD9wPJGo0pJg/tbB7L+SxpR8BeCXxfrW/pKy
YRdAPJX1IW9nGKARxXO2701+t1dvOEw3e/eJ/9eEk617K2K08CZE8O63ssZeEH3jooH8kFBPqFt2
8BwM9R+vpySMCA89+F0hMpgEl2NZZ4+lnaRmg8sO70syq0+eACWnzF+cM7OAiYFlhn1jNcWWQpVn
k5uorWk6ysVwnk3ZQwE83yv98kq509PzEE+eXN0VZ/QHkRiAlYQzBwjffqIeM9CSmGufcKI38TVX
kZn5v7io122RKmOO37/tCERSMjxqf7rYuk432Gow/nu0+N/4rRDcV6r1ckFs44AlBvRuUpgsMGJl
v5zcirzHjgt4dnBh58zxwf1XOVKHLcEP38kUgr2v2VM8TWD5zeHeBTcYFUzuHwPtJHYnqBq5BMvx
Ka7oVRkld2dhfhyEQPZEp2GQKXz6lEpDIB7botdyB4JYiADKHOO718in4js4W54Q4b6SBagLJzDV
F+6EjGyJXAV/bBOcVt5FLm5X+GmB8i08D4VRnbgmBsphNU5CwKnHH8jAOegYFx9AHMoF67eQbFju
SJx2neGdrDlPHQldnlhxCu8vi6NpkNaiu08w8DZtqToHDLGNwcFcHs2xx2+5cxY2AJQkoA/epgzp
t4ETvg9cUHgEkXlm7MYxu1O5T1/0fErrm6tGfrHpGIotRHTA5S/mpugOw66pt/+UkJealDmWt2dj
75a6XHD1CeUvcHHOR98YkE9Qr97o2k28sUYZSsaXtzAryqqT82UgAul20nK3Usdu3z3Wmn2PhRB9
NLg5M2gtD5eE9Jl6C4/Vs/5mkT7WSXnlittZy0McAW1QVQwK8R6bGy7DSeGqzWHLvlrrzBa5Yq8N
WUP2lLjPlcIUcQVCKrp/25OQpFfdqBKWz/li8qZ3neQGwSF5fU8q0sqQRnLLbWC2q17uAmm4nkTk
xWdTbdmG/Ov6cJ8n1Q1+0hCaiToHWA82ji1xZqzVnr+/9tdiZHyIqnAJWaNUlVbqVX86U2K1Rja2
jENJP3xFLkHkgWxiaxOOC2coUIx8JiVv6DVyhczuYzTbVAnEhKGyHSUPAGftR7+4WCnl1wgTd0mb
tO1lUkohNdAHNPWMAzQCU7Q9LFfBUNA7zQfEXlRWGupIT4A6jP6AuPX75vvuzs1nR7+ERhymO+A+
39BXDlbLm6tSbT3R5u1nvaaeJdD2zhlbkCljyboV3lNYcTpelyT0OAS7wCSA+ydvn4gMmrBhaUNf
9WwC+ifrIL8LD17LAK8LmipAwel1Z72o2tcaLrQbWh47pebGwxhmf5dBXpxDArTs4qTmsM2sYMKx
WLaCy+OZkG/1lnJpy5Jan+QntP46NtSadfdJwArbvzRx6SOawY5E1TMAOBGxYSsJXOIJPwLACaX6
wHfSyJfdeQC+U7LYiJChP5LtIyeJvPfx0SNPNZaa4Fo1pezfOAFfJSQwYuxygj9qPTgt+kcuejVA
5ZzA0qynsNnFPjf3xw0z/G3xv2FwdzZDNDjsWnWoDq64VFR5ejk81kQLf4k8GSz9c63tQ1HAvbko
1ZddNmtbUVFImY6WBwcagspX45mYuuanjlEl8jwYVi7bQhY26zXlZfsRz6dLaw4H/xURhnCClMGu
3lmduz35yDjYYQ9YkQoCXiPSD64KtkHMGNeSemaMuqKoMDxxcbeSerMf3HYL8QmQvKGEc2hjcnBC
8ISztWCTWKoWqAt1enJVkvR4MuYJ9U2RnNZ3stfI1n0J6xyZ2HovIoWKAwcd/Bh5UoT63S00fSLK
gPM4qsq8LNxwCVibgOaeGj1CTv2S9q7TNvS/Vh/SdwLpOunnLjCa59nLfZ7oGxanFA3QzwCnsmO+
psBmRXu/8ezHElKA9hzna4PFUwOfMOiSzEpxIW9Vo9gR1nT6wz+VwpnQZ5ZhIO+Lg7iFrXs49lvL
25cyy5WmUONIk/7VfKsxiW8FS3ywMmoWEeBjPa5pIDvhhxIe2AlJlX1ruHqyQcn/tC0EWRLoqvVy
J496jTJzwJ/QWSRc0s3tJqWw1kt2EyfaZ+fRyhbeDZV4T/wnkVqBAOO2gURnBxqE0ksUpdoPZou6
xaZ8WLjlwUx4Miq4s/wXKtv1xY1+/P0TeYbqXRSP13ARGVxw0SAX507l986nmqF52PKpmz1r1Wkr
i0c76p4l3vUc/oOIE1MG1CaLAxh+xEwb/qR8Qtm7MyBUY9xDtgoAIl9qjblN40HxqAUKXhQBIjds
Kv6c1kmFEK+YyzAi3Wy6XxYfDOc0eL24nqGN4waJ6xeKwnb4Hx7yN2MErC+nvan0Gzfr+zw9e9xT
iLPgGPDiKzF6rm/wdVri0xj1T3xb8ZVTAf34BST0lA6WoO3v3g/VfWxsxKw6RYJ+/X46SHz4gEsi
/Jnfdf2dSs3p9ni1K2m49ByrWnOOTC7uA+Ef83fCeP6KySEnfHrh07k78VtIHWWo3dNELJQW+2+Y
ASJEC+QHSRwNZQ/8ghnKquAeeWi9v8kYiudX5qbH4PJCkQvVUE0jjcFU3J/tuc47QS4ehgw1dCOJ
P4/Zc6d8wCc0t0rpYgyUeqdV3rO6kHsCIJRpiPiEr9/x4p2FxqPxcNhxF6YpFuXpmuXDAin6iKpu
FkMj7hFDJ51CVPcepKe2JmSTwRYc1Q8qKF/SW51WMTGPDUo8+Uc6B14WupLjVGKlrsp7y3KQJ5pa
x9ZNPqQhStsISPmgRkjtxgXQ0dxazhDN4/mJnF809neMOWwYn1VznguO7+BJkPEekg8uUv/9u65e
DmAC2eyc6x8VG8QoaHGtS2T8i78di9ogY/crV7jKDi3sC/fZGiU+tA2R1/5GPebjkz5NVp0SS0GG
q8X8yn40gybFKPRxu5FAkwrVzQRyUy3uzi+IATqj3ERmEFfm2l0VK3nUPd/L8S0zE10nHANRMwXa
uLTN/vEdjLkzz84fGBS36iaT5/eWRy27uRmSIdDrCkjZBRxu3DkO5gIszrQhF3l9tL7U/RA+/u4X
TS6gqSnu5GG21oOiVQM5O64D7Qbqd0/w9lwZHYPksJT5Zpq+8D5fUMH9acDL0p/iHkaeTEvEbWSp
SWFiLJughBRLBomBLUecVtLHRLdrR7W+wX/5PLMmoTjwgWRfhJTR5ZzalVo8TatB0WBJxKpxNP8I
N65w4eTonrcMHRZRuJFPWkAz4EkczoDEoCNdB6i20q6cLz8KTw4n5j/VJtH181jyqfH8iHxPC1rT
KvZEvaz7Txs4iPC/iNbNqTRMSLnu6YARTPwK6kl2a3T9Pd746VjI+lEwyHzJwdhBp4hE9GDhd/po
6Gv38l80kFSj2LJOv2z2hiFjp7w4g4A3mVu8xDJ9yqxa8ghfcq2nwLVGfkzG4EYrDcWtVFTJOgBs
t1lV5x9/nbn9Blr7/0DvtShEL2Jx8vXU/iWqYe9q3vSc4CIbfgeGMlqUstHHdk2y8zlP6p3vaHTP
u6Bimi9vMui45opg0RBECcFzO3zQ+tCFV4CrBfi37ykyQ0TRwap1gdQ/15lSWsHpH3ufFg70PtMB
NXgXXsFptKaX8pmOHU0oEjaOU+SEcIYJAptGjO5zeUub/n0ExaZZ6hAAD0Twi6T8Q9y0ut1Qzq29
7MTyO4UlpJAhPrSmtuSaXa03PTS/t5uK+tt/eSu5rfLqciq+0yScohnpghRTIkyuKvPvgcwmIMiY
S6J/8Zb3aYD4/zl83BhoY8J5XP++KNdWCYsOGWUZNXWQwslcTaoiaUj1AUZ4se0KkLSwl4ZUxHYK
ow4mNhTN2FUfVy8DADxgjjQfrTH9DrxxhMU2H/ncTMmt8Hi6tRJGi/yNMcMobF8hKLVvczQ/QIJo
LdSPkljJg1xQPaPP/bTic8GSIpJXUDspk0aEsM03UjplV64mAi3ryMhj9HdzYzAzHzFR2Y46+XHZ
kUbKSKWDAD8plTU3AQl9A3Ag9Nw5UTGZuYMLI+l3IXYrFBdcBGsOJUGHcTLTV2DkM2ZdfgX0egAm
m1HvSaVduCszFkxm/Miv94L24XJjsPOYhT9HrP57NuU7R+FKSb+gTTb1QNl4G6drYbMnbYhWvF4K
Q57CXvxmhSDDnCHz1wcOP1WgtjqtWWmfxnXEMp+iXT/6IzKjyTJgM6Y8uHjteaH1QNtl9M6XIyFa
6zLgwyTHwRFBSwBXKRHq3fHGoMTB6ptu9WtDrSH6ToHONb1U5HMwhOyqVoc/3hKaiMcwxdY5Ooh7
cYhBox82sKVB7R8gINE7QrDHIKaU7Nbb7UzSP0Zd8RGLSAvqdC6XlmRKUNH8psnIinlpOquuj/nu
Btyne4fVu3Oj+18SrIRRPgf7hk78SOxwn/KAYI/C9KfyR2dyLuuU9GteXnXqT9ML+XJE220dRelX
NUfle1YqFnYbRoDRCXk6Cs4aJsvMBbk/nOO/1gGROTz0XsMyMuigHKrXpNH1wQSYSY/HXCarLRW2
bUFrvkWlAKypNYj5y4soBGu6wAWNxyZxPD8CPIyDHoo0+3yHslD1wTp0GfHkplsGzFzzId1IQHcC
7JNeU1QTzGn7O6uA68+I0CVg6sNaARXKSkfuXZohULcZuPQO72KPFgBIzlASptBr2aLhlMUD/FKp
4YVdLUvY2l/1cJgxq9Qf6Es+B51PPl972H/Nles3mwDQyypDZoy/ONEfk32JGbjCTPi1KHO9X0eM
l+HyyFSUQiVGyKj694GRM4q2NF7ySa1ITys8pq56TGmrtlnG0WOpO07xpwx84Mq8L0DZyNtujBe1
7bq40U+TU3WQ9+fCHBQKVXxInu3+LkUcOZPdU4NGrZUbGVGM7alt6e9ZufNY/q+UCo74auHkMvI8
58uarw/EoddeeHCmH+fhguSJZ5ilCVjys3sO7HsqxMYIod95T1NRHRIFCwRbQZXl4eygMTzJalvq
G7889/7QV9fhV+ce8KKzyl61eGkBdVvRoc3Ciy5qIUi1FrCOGIK/jPXeNxo+q3tXu97bJLrz+NcJ
CputgPsCqY0q84IIM66I75kSEmDNOPZF4uKJa/UmKSRBYjLcg/gx9SNrEGL9ZsiT5uAOI5wTG1Pg
cFsa37k13MoDIYulwKb2XLXv0x5jz/drxUoStwEaLokXOSgULLqdd9vs5yAVtugzJD8JQqv2vUKf
f/6ZsKKsXCSt1b9jrSiiuSZNuMl+aMB+aeE0qxb+Yp3kejqGe2MJEukkin5VLvFc0S1XjQ5WTFpM
G8LhiX9xMCQbaIoA+NygsZFIxDbV7QB54o9d/sFdliSnV5+cr/BqGY1d9556+5J3YBApzeg00vKM
7vadPtcHynTKB/aIPos0YQ+vWoneyWwdCnHG4Qm1TQGpgRR14fMSZGtGq81ElqM5ks5Jb7rBhYzv
6PpsNLoKuV6DbNCJo9a9FzqS+ziglvMcGdGgDnaYBza5to+5ELLT7X8GFS+uVanGAbZT9/HOdv8m
OI24oQ1AQrJZHRLPJ1fnSmfkD0wV+rSg0/oiD1A2vL6821KncgEG+iPEmFF+9ySsPdEeSaxjDKMJ
H6orBlDm4cxfpsAimSLbVwElWVOqKyTQJCFNu9IXK/WACdMPht1zEEzNrHD/VoAtfPHgk1ryG0nM
fqLXkZGzxvvl+ssXJ1vWXnYyCnV5s+Ro6956GczNd4IKmsNKT8iNJWrTGxhuUo4xEjMqWfdTC4ZJ
JdklYTzwKw6nE3cukfy/zCfhkugDLwKWMgkM7ea+9aaHGZ3fdBxXsJmtupmrUvH5rV2ZVikYc37B
oKH/CaASS+WDJ1L0zuVLfWFixnzciAVejZO0m8vBhRTYohn8FdREs+L4yAWvSfuII2scAzLBfMK0
bpOK6OkSUfaZtl5ZeGp4BsBeodQqs4bDMfuS/WTKu39ggDCqUs5ySamIAYcOfWR1TFMqD8T2BqX6
DdL2K7ays/9fD7O7qhGF6t2Ojgj5DWbREirRPg8Q4t4m4oGicheLcnZ2n+W0E8MiDlVj1EBWNpBk
+NTIt+dssrA8noRKF1r1T1+auVlVcgyggo4djATLqf7Leycj1YzPGlG0lCJi/yJlVakPhY3iBr3Q
UNHr/sMc8s3PAz3kA8mjU03xqExEEqQz3Ww1jwBfmZFrXvFnw1NkkmYX3JrX+yL5yK1xfNOPfaxK
gMUsj9Y+lvUk0rHiRWTAJ6cYGFQsXq/rb1+QfIdN4cFBb+1yi1bqOZMV5NZO3sqFS/jOlAKqlRJh
GIMw1dOisgi7xIsHR628l60m3aD5p3ax5IRqf6HETbh2FHgCrjutmLxqqou7oJf/j3UCZGfusKpT
+DxmDluq0us80sKnOZXnnA2wMdPcg5V7KAhNNtj5Ax4Qpa3AyKlDLSoGqxS5lk62Uaw/O1xo16oG
lnzxPe1nM6c5eOqD6F/vwcUXFY1Sx/Q3VLak6Hid9nbCOBzJ329a7knhFfmqfl6lBTPK2L6IFlCf
w3GY8rs63lqNPm5QHJdMEcXgn5Ml9VzwUAu3YruBQXj0C/zkHFbYqld1uRvhTR5BtdPorhZKpDMK
UkpciwCMILSPT1gKRw8nyYac70qtMLY4EI7/z+BTvCnb+bmlV0sX8b/2HiGQ0RCtuMIYmNfr8GEq
d6oUm4iSD26R5sGKRTJfG05sW8FwVF+nFBA3nS/I6W8pl5yQY5yCtGdHMensxWluIKHHdjgspad/
pQwWuXnBZPOa2Yymlb6EFmot/AIZWnsiJI0UFn4iwWofOUNifrTg6B4W0u6lttDz0+Kqu/CrT8kS
YKENK/9dS4OlNNsS2T+HfnZ/RWy2Q/NuE6W3IMQlYC+qEeGrw/ttVJNRxNRA6te2X0Arxaa0sMGE
gQ2b1cDOF6xMIXN7x9D+TzEYteBAE7M5OtT4CudFE0lNYOj23wmXuB73SdJvPE/3i3TkzkOp+Tz8
cULSP3lMuTpFLpI5H20wR/w0Bwh9QK7PM+q8MhxXiWWqHL/3jIOvTk1A8NAkb8DchUvm2NaeFGdp
kor87mw8XIlZbX3kDC+KnimhchTfX0yjYyR5+cr0To5azi1qfgFqUq0ptUY2crENC60TB8OGX8DU
DIx3YWsXFvA7CTIbxSUoBHMCRKd1P+JHeBrhLZjTmTg4US0BDWUAe/eZ8RxySyOTvO4/Jgfb3zpJ
Y9CSz3fguzabNA63e5ZX7D6FuKa6qp4DRu/XS0+HdFP5SxvXJZQl851L/gWOuxCUYvf06Y8ckCln
09FgbUg4/6Ub6yzvWdOlx9n36t6OLykSi0zZNPrzxI5I6wdaLAEyVwDccwtHoS8o5H/w1H5HYuT8
SvK0LjrIOZ1Ie0JlYui4B5ba3A60dkQ3uqWNlw+GTvDHrTG2kw0EkdyEqmLLMwxiAohPoGpLkerJ
NwPTFomlRingQ4dKW76wGkEjACe7XyKsiBz+3E3Mq15g64hbFGh6ulBP8Otzi1tgGoMXt774zZ03
6sqnfbV2m607k/OZTPipkdnmk/aYxLhmpi/GP+erYX1bdSBbmKQ8YhDuwsl5cQnhED6UcJHbvj7m
kw9WbrSspQ7LV7C3BJpM0djlBkgHOKoGI1MxbXETFmriwj6ywOzTAQq4QGKOzETuCqZM8C3plvry
eKmu/OjV07BUkxqGzy5KIspUy3R6HxlNd1s8/001nc3XPp+NJuesPsOCn8Va3/YGq6/ob5lNxrx2
8HUtrZv3U1r+8Ig7uq7OgZLWr0IXlzMVl4103W7nhjScnoqrtd+4Tuh4lHTaqPJDu8sgxBZTAC+b
2rpHmyZJ4YPYbEb6ehYbGosE/bYRFKGhmOdgGdBlIhpY1dAPBCJojsRx9IC/ZSabjN7GjiZZQW+v
R5FXUs2VGhNLwNCsxgzv7IBuhfC/0VplwFTEB8WqHsISGy6LjsjYOg0a2beSKGOTMKU0dNyrglMY
umlAfAiQN8VIVRFvT22rhwXHMrakFReSyy1Os5uUbVK8+HQfwB3QQ2+ZDqf1ftQrFDk6p8gPXXPU
i++ENVThUeXeLZVXfn0DhXf8XquFpmklMbfajJa+UYKbRw+r1Ya6flihbO+mBgvjjmptVDc98epl
d1Nu1LwbilxHm0eXJYnzBJJ00DmcZqCOgbAUZnzjCD+dGc1ef/WJ/JhEGxLkjByQ2fBTerPwbIfe
eX0Sv9HXijC3wtmjYbcyAJ2bDStD+BB8vA3ww9wjwQtNysxH1qb16sNG4ZQxQ0QZfrPGbvxfOmPH
r/N4GT3ML/GgT9LS0yJS1WaCAfEiHkpoBsyK8HgnM8AGos06CVpg8e5EuACgCpP+abSOGN1NJmmt
5/OyTqMzmGtdIi3qKz63LucSbgpZ57JnUG8S/ilA9q4a+8SxX4USpQF0l+ylQlDZ5n5QtEpP9K4a
oY8bMEiwOQIPZTnsblfYMRLO+rHbXSOD5ra9yttLdFdZMgXOHoDa6Rw9XhullJfqJYV1TWVB0pyK
AO89TUxxQJetnI2QfFRRB4bqf2OIZKEs2LL4WoQ/zaqOkMnaUY/HUnO6RS5lYBm1Fg7dAKZ+hBQP
+4c7R0dKwugSHDuPZ0TjUjI52VPsKs+DF05fb6HlW3tcTUmiejK7AmOGxVcp15yfH+FTgjZKwAO4
pvpTy8rh4SYjD1USenZV0aIs/f9gULHUn2+xaJudQrAnO3fwqm893lFG9weCJ9JlH9DKQzH1sEJV
YqeJeS8Sovwbxng0OJZC7OWZOuUYa0H/ebO5HnWIP1beDubNBr0VU3zGXohGOXCgpXHsGq+FxDFy
d1ZTLYo12wX8FNtggza/oht8LR898G+YCW/fuwxc3ui1FT/+fZqAvXhAfCIDOSbN8WHPWekXUMkb
RM5D5SA3lX+44aDS8F5Y3YQlh8+QpAbsNBDAqtMWqI+uXZ+1xkpYQwZVyt9GN/tjrw6bymmgPa1Q
UlcqU1+khfEmJ6f9cPGTwFSjQ/8W26jXmBfAaLa3rnxF3Jeav8tHoYgDaSE6BwlzqR/QWas7ut83
2hyaamBz7Kq63TaK+pPTWlSjjfRIkIG7TKjm3MfMqwe/zSHknuH62ua273rgxUZFRMSw1BM/HDQq
InK/S2ECF5K8DBikbKoWazcvW5dRCmAS5FmOsrua+ElRDT7iTMu1uB0hGbZ1RMJDmpV83M9xNEXK
foHS4xl9pH9fRHWz5sMcSFZBseymYM0v59gttS47V93MfDgo1MfPpanGG1t/pKvAW3V5ABK9w4Oy
yGNT46RyfaRk4+QVN/ieOoyXoQhlz2Ho60MfzjfIfcSZjN0cDs82nQOWMK8CbuKwKjAS4qOxIdqX
uCVLRkMLxXoJ1oq/uuDZa5ZJY/lYjbbKzvDA3csEbHokAdD83lkGz3vtdmPUG630w3K2hyiYGEXi
f+6k2t7z5OFp5zFQnJdo1Qv4CpHClzZJJR9peBXfzmBOpOYzHZNWoaNyZbY0DkvVYzpZmZYyTP7y
FrzsZrjLyz2q1F2nl+TeOYfYgdQW/VH4ISJecz3s8CCoJuvZUCllwjxxpNutUfnPMx0Ealp0R7MC
E45Ic8dx05VSDIXi4F7S7otEb0OR1QUmSWWkcPn07s7flapBsdPKv/4xEoT3Amr2lXBfh15CvRCA
q7K14s1RnMr3jyTAQszanK2cbI3CItabsfWVC8SS2aPKbCFmtlQ3EbnWU1sxZZVqnfeyam285wHS
mwIIE4s9SCg5arUjHFys6JiePJD4NKr/t0VAfZfNFeOdC9CMW4M28uDuxkA4xgqcqe4cE7Mp4oJn
Whv7lM+osoxh15qErLiJKu1ZrStKm55flNyL37p04dRwJrV6Auwk99BFdg+ZbbsYtEulvlz14TiM
cGaq0GqBKZTAvEEo8dB/RynVPJlwsG5ysGjiTj7xTNOkSjxQLHyB5wzooNtBmhYGxes5t+Vk9mij
kpcY2yEbYGQEemRXihQFgmhNP7bhsUWqL0NF0MiSEvaOA7V3WHpUGuWvkB1rbZeLYMrJdl6Ykvsj
Qe1q2PDhCC8Fx8O4qWnVMQvsHmZDswGc3RcCY89PqzP/s6roGOanrJ1Rq3fmVYQLciHexAapHQKW
O8sbtLYK/8pD3t+AIQ+VTPdMermJUvHwmLMCfKPIgkmxkMHIHFTrWV3YhUvsGERQ0H7oaHSYCpwh
t9vpn/wKJLlD5HAyS7sV9vbMPQOnKcAZs9jmvynfuqdU72jI2XsmBVV966a/UkPLtdeZm8LhuGP3
sTWbXQZN2dB1yN7YnOErU0B+Id7W6+MEa+YJIGVhHA1osfN4wWbYPljwOLERnR/skPWaTRAz8I2V
KfilinJ9AfKjDJV0DLWIQSnwxSZWAuU0d45FPYq0mboIIF10Bgnpk9mAZJI392K8zGRSMrDZKM4b
UUF/xtdvtZOjhgL6Z2vkCwO9LCq2RjEWyJY76Gndy5AFiAyNm1Q16yddQP4xyP1q2UbA5wS9jnzE
0bp1TpZWQO12JqTG11TuWNlzubFPkeU50owcv8fRQ6fFRttyadcVKllPGxt+PqUuUCfGFwU35+39
FNOT+IoMrsfbNvcVCZcwJfDz5hKbn77qrlgfGYIQ4J2GkPFKcn+0wBDSvzcnLde31+EHbVKDoavN
1tb+t4/475WGlhDQLef7UgUv5E6GoqllgZgzLHWywJFho6mO2xf+xwphkzl1bFdcmFUZhqJIn9Az
/B0/AlNNyxbQ7EBNeVdFg90KmmFOW/zlN2zD63DMsn+2sn931TVvpAOy18/rqwW5Wt1iZoVAfuCK
ITdzlQRep+OkABoAmumhUITubTdHCXop86EJo25iRCWANq8ZKuLqKpY0VvIIjLS7tA7lsc9+La1j
OJDIDmjRSPnsBiqtquXMcGpB9FtSojYUwTi1v3BFGpjwHrcQTEjJS6uEiEGnd5G2S/kX9N8FlfYk
vLw7o1oZoHYir4y2+YjQxkB7R56N5ubBlJRsTHMvsEhTx+wpZBiLzcN0pYO/Gu+55vKNnUEGYjQj
Y9MdhJLiEOnEWQCKa2c25cRKmyt0oSYSi293OAIOim4ywQ0Jq+QlC25Hj9iituGhnHBVKc2fdXKO
aHPn4WADuE7wH48Ga4UyFWHvs38IxizF+vgVS7ZpLS/hoHyNECC5e6PbL7zP/Thf7pcfJgNp7iP3
HVYlfJMcizWxMqniSJbCAv3kuAferfyIZddABeAkfYL0dd594zfRwvfhzXK7b9LT4byXnnaq4vrc
URK/rVpW7YHt1d/mosEBxBFLkRa8AOBjm5v26FsnxwB4B52E8vhPs02AyFpVWzjrjykqxeGmYVK3
GKFo8amMQGmrtJZ478DPaDtxqUXFEUDAgLCu5ZrSIVFS/BsLZbe2nC6HDwo+pDLpmvPTxcHBqBle
/8cfBd37pD6ktHM6iAh37sermaqqay9QX5NY+JEGU/tIFqpDw6Q7nDXNyJMqZd/gdws/3mnq0naE
u6SDFnwsKADf3CsrVrO8qHPSscaOqU4/z8J7NZPW9g5ZA2Sw8U0YG1dmVbhDzNmQS6+D8U4qPVYK
8qpEzcBUnFbHjtrKReujZ9HU5AtBppAJodxGpM6xqrVNJ8yuqxmjhqZ79nxSjM45ycop/j34k394
5wMHQKzItsH3VevDf/HX+8sxxZ9b906nG9hvzt9lbO3dkWag0ebjJY98zAZAIMqFK9+7twpRJWVy
9/Mo8LiXAYmcYDnJ67B944d09cvwFEV/rvGkjs5muLnYj1EftkMCzTfGqOCbbDmY9UE+QnXnk8bc
vNGv/E+BxgWVfYTeNnSRB8U6nTHCvkLMKtk7GjhtpMqnNkX5IPUYuKR9V38PGxp1ZNyP6htKI4va
TJtPxFx6Xq0t0EsedVhWEPTjHqIVP3R5DPB5nCCa/kABq7YLUSxbwJfCplUnHJzHU0cLYeg+97DI
Ifs24fQ1PSuXBHboZrvpmhr8RYc3S3lEBdTlSRg3rf2dOXku6v7sMPX5gK6F7IlDR7h0OlBUZX6y
Ye655y94DN78RUvGBDcBVFVpEKEA9xMOsQPu5sEGtQQFVqzsZz2JxHPe6V0SSauNfQLiZ4vezUsr
yZnTM8gySbWMqt+atP1U5qrNV68N05Tg6xmJCi3BPHdWKv6tI+a+UQTo8lOaw+o1e9DJel5VMMU/
LtaBgNfysUYIqowfjbVnFlOLRnl5dNW7kI3ePkoOGN4FLK+rh2F4VrsO7DmfLdgEOOGkr8USxwx+
yUmE+Bk0nEC23TKvND/lO4qSJdz20jkI0Zha6VOmHTeIV1UBC2p7+zCSW3c4OXAwkgoUXqICQ4C9
NYvNk3wNjnkwoQDMdhmSNdY2GJmvYmdUSDkXcV7VviBkhp9ln1I51CB2dlcMhu98T1izZk4C/+NP
RjjT40FMgl8Ej3DjtY6f5KCQyhQxUlt/Vi3i2rjG6AjYElNhl4Ts0UKAfx8c2eXvzumq26kmAbcv
aFWU1IQgHGZB2EZ83YyHNA0CfPA15f414GVfOhkx4e3Pqk1XlmcSyw1LwJntXz1aFMOS3KUYrtqg
WzBSGeOGiAfHDirWBwY0yBMJdba0sWmX0NTvF5AGPR7R+ru96SioisbHFuWo8zwFjusPq11Y7R+Y
TQMzFGrgk7sbhBIrrqHShjrRBJnZbhGeLEt4yJ5KwuZQ9oH1TgD4vzC+C67tbC1fNKdAM6xR9tCk
1O0So4Z1BRsqdPjr35QSHY38VBc0M/yeJKbaa+Yc8j+u7xGZcCs9sPrcbszF7JZX0pYa7rMDo62x
iBr3qUG0S3q9KDVSWyRaQ4qD75BJbnG1OJO48Ad44TeasE0jOl4M7Ds5QA5ljUlvUIH/Jn/cUYYh
y7mTZq7sAfWSsTJwb624YaIBUAAhGpAqXEFXn2yXVrVnEk5t9kd09pG+IfFCU2fJrJ62bklEwD96
18WeoTY5uHOz9X5t5mcR8dnzhRWLWO7jYWB7Jvt/89wt9jCms5rPn3eakFcZIQ9LTTBPjVkWSnc9
iDTrjMRfq/rSQwMVTLdkPD7RZZjaBakLFJaQsKwem1ZqgIX3bXPPz0l+if01bJFFpNACR/nQZXdX
9AgQTzqWags8No0iMrqGNkzRoLZhga6of23FxW3nRJcqU4irfOJCcHPy+HJLiVdWyjRSLJhG2CMk
2unc6gLQ5VEapvqH2fGvLZ8RymswpUTpSnbS25382NTRRf+zAQ64r3y/BNWhbfPpV+PZ0dpanh5s
USSLbyDqKYxCWnI5Z26j2BXbM6PK59WnyOXfCWSBxJZUIW0ImygctiaMWrSRnZ/jz+agYbvwyP2M
gNJBY3e+Ng7WekD8tL0l1i4vlU/Hau4pxGKAVrUA7rbAONfycmqe9WMD0MdpFsL3k2vClAJ3Kwsl
IwCSVyvV4+HI76pR/L0mATQWwk/3LmelipioXI56pAlj8F5DlAkKL/OSEXVnNXjpEhEExVRlkM4B
G82etDGIhwVvmVOOrxtLDK2SXJ3NZEQsNasmzD/bqK/ABFatCcD+m8x7pLPy8ivLZF6X/+R+hQLh
/Z0ir8Kj4BUbeYuuxMnIh9odtBBev3dUZ0DIwgWpjSzSrvCsPr+Yy0zbxWl0tEGd4Peix6YiZj9n
GthDrYxJ3EWLJecsLY2RzcWoxhB3ySU2HhXQyQXr0ejhshDSVTpsy6w+BB+zEW3gige5fVKLxHxE
fj303z3NIykPqbIbDriiKzQPTfrMPZOQwN9rjg0nERZ+A+QKY3v11ZMkMM3Zg+Tmn+u2bIHqnNT0
kW+keR6sL43XdQjJuozQwibTVu12odvoi9fv8/I76RYL02udYbm+w2GUkHkC+JOaMYylyz5EpS7v
L8H4VM+g1TOMz4910Kwgm0lT+Jen+9PybkCyA9BSNnzaiboJXDWJs3PXZyPYHtEMTxmYZ8zem90o
VgJHNOkOO6o+ZxppqfjSvcAcc1SsQIcE23a49cKftXHJjsRTCxPDJDY05yRFJJ0yvtQGNWKUhTJ1
8x322vf0wTh2/M40oJSQtJbOmSa1ssBYu7Diuu75eb633atQKjczTACasTx25hqb6jWIgAHQ+cwh
7r2dGgyQNzg5+G9W8PG37tRFtv/mtoec8G4UPFmB8dlwj1DI/GnIUg7OBLY14Pmqd1789nejPPrw
Fk0L9/m4MVKXVT0xLfNm3uhjeL2aYYBJXcmMnYl/KfS8Ncxi1CVrjc/1hISwW5rUBQZyQUmvlA3a
HaSw0qeBnuo/q60w98aMbA63ZNYSyvn5s3MkxiY0V+fOfwjR1ebAPTdtzo6xd3RyrxcT6aRC622q
DnOWE09/uRCzlGEuII3+dG3XlkMmH6l5WnmBjEQOpZ4kj/wXHtPLiLgvpjEPoH0ORW5GDxIox55+
tIuHlUDJwDiTGRP31ASkqODMk+AVTheXQZ2HSb/ifcf8HdtoC7f7gaY5No6oOmHpHPaRxcJ/LJPu
y/8nwHMgsbPhjNw0EIbrfvh5MMSKsiK+rJBsoaVeX+Na4tDwlq7lFHgNtliJElU4XZJvm/dDBToI
vQnVpd28pCQGCJoa9R3NFvTkNX4h5kj983183ukIViqi5FG5RvGZz6Tv643b2UIXP9TKD25SDHfL
ZAkV842aA4CnBqlogcLWJOHwwdsxGiSkSHEfQwijFuUUKP05wBoyeiKemYwCRyTqd6jmIbx8kw+R
s5YEHpuvW6KJ+HPMLsMdHg7jgkqSqlM+jZvy9lqSOoScjMcgmP4jpSGboSKyJpDyPrH2z/E6+75e
TRI+2oOKaGLh/7RPQMrPR0y7/iqmK+gmGcVn2Y0cPyr9dMenRl5INtDAtKmxnpcNeGJn5kt7nJtL
kFB0dWxJiaZ5uu3259JHNH0fn95vG70iiN5NBQOZpikU0r5pX2Houeg9/H/9LhsrDvJCVfJaK6fm
OGUPmJlM5lovkX6r3unJM8U8xDij/jk81h/g4di5DH0paz0eQR3a4G24FHk2DrHE4RdOO5QWTTL3
hXQ4HpSIIEMIvaTdbX1t5eNGuuB1kfU3imna48L6wult43i9FFr1LhcQvLrygUc/uFZPDT0MQP5g
Sf9bXqCQOU8OY55yWnrYzX+hJfrap/ggXb8qJHBfM2FzR681nVYhuCutqwqhGOYOTtVfSKjT9lnE
KjHfUs3zi+4T52cJ4h+ar8Rd/ou3+yT3oLOf/drThD5DkumOEys3dQthSfAEt/EF9l19z4sCfOXu
V1wjwG3tytNp0JIvlZNYATKrKr/XJ++pMGYmBvf/EYNrZKZrsYWFjQakMHrh8K29QIGVNNYARrlS
pFQs6tV+N4Ez+xdInNvgWiai4+RCwhjFjpDZJG+1pNxcwIEkqlZPnL424vW2vyo2n22ZHQMigw8U
CjjZQmTgusLPWm6HDVByl68IWXpwDigWCO5yL+HflumeIpfQ8I4Fl1B0jEMqdF2tjeZiz+gX7gsp
ZiUc1bkiG3fvGOn92tr3oESPXyC88MPDJYgWZGh85XNHQv+0TJEo1J971L+dCtb6SeOlRVhYR2Qv
Qc1UJP4TTlAl70iD+jGHRuKk2x2e3z0urzBV6U9FG0xcO5HUE1f5sobXSavUTkrRBAi0hrYHyo6h
NKgnZb1x8gu8xCquZkxNTbR1dfpGcD8mdzTeSeDI/lj+FCiVnur0zHFh3Gm1jc2YfBY+x9RmkFvh
WKOmEqLDCXkpUj8XohIvmZQwJfKawRpXr0eLyN23hIZFpB/9zoPnJ+PTXcu9z9HJ+tTNFJKZ4jQj
LQOSbFXuuuZ0lyGMpnUmKlZcfHnWOfdElASiFH9qAq9hci3i/ChkKCGrDNnUbFaz4sQvRbVJalbi
OnGvDn8XZLqM2NAps68mYZIVCI2CgA1e7A/3/hHL3FXmdHjqcqYXeEJ8sBbB6zzuqV/OMGoSZrR6
e61v2LejuGF46FGZBZctq2FrAzLUrcmJe0W+fwDNvmCc1mEZIAMogUXchDu5NGOLaORqVBWzg0kO
dq12qH3oykHDaGAdF6fDR4nF/sNnZQyC+OnpPoNsq9RBYAfG5mtu831Wp6Db1+v/JpQOCC/dFQD2
IAedVRRo2cAE1vyZIuE2ogA0tU0TGOjMgb0IH3H33b2SxkNzSTxnrWhGGP5LIqxUFHIUuYqAirw/
dABeDpr/jP3FNxZW4qW6sEbqp8xRNfK5t02XYCAKOIToBrACxRDPiugrbt973loHpn39V6Pdxo37
PztrAJyDnrd+Aiv5ycDJWYIbDoeKrMb0/xb9mNc9nPS/d3eX8Dc+J9hiiKQsccqgekIzLvjEJhk2
T3tKx4b0D4RjpChshdJ7U8+hDO0QPe6iFYZI6zzB6jKufn5qpv25fdzsR0pXc/xmih7kYng8Vlol
IvEMtbJf4XBo3tTJKqOMyxxTpFJX4hyKU9hrC1HaldvFbI1xM6mqCZjuR1iKZJ1XL+2VgUDoABOb
/aeIvL+c1YNY3hNtI5U5sC8+d4eay0pW+mvZtpo9OQPSHaiPNmVaVTjkd4JqAzUnbwQFecUhRnhj
9PLj+QAok5WhVtCEowu2lgP7Prr6XBhnvStz+y11aqJAvkEX8aeZdCpVwvcae2BSrip9UNwx8E1F
uddPRn/LvY4AUqbb3KGpsFxCDvbW9SGD4Nly/HZmJv1m1LJ6PnXr1rcnUsjhaSW1aPo4YD14fTSr
oqGPh8KXpPCnIt5do7vlIp62azzKhlfrKMX33MU8SJtH8KxKAxpteXPmETh9F0eJ6AZOC//fQjZW
cGZuw2h6kdMbn3+DQLeHgauXp6uJ2PPtBM6eaTm1EyXGpExd33+p/rYvPh+qgqq0+jmCM8MWmUJ4
zRjLizywJR1KfTKZh8Svw1ufD8FnRAyNt5ehOoUEXW0L2Hf2dr0WIWWbxJq98g991uFbKJJtKhO4
Jd4U3WCXfR671cAuAjGloZog9jfVuMsJMCBc0trnS+lH/WtcDDF65EQJY0eLszQ9EjwLJ44wxXyM
3dvZ+z9LEQgGojogRDVUnMPTEgyfPty14lzL5zzk7zCUWGe8ZGvphA2fP0/59XtQ4o+t+n+GvO4X
p+/LzNn2EIWjtziC7lUY9/ZQcO+OcQ9ZyQyWGpu36vMTKnM55+RygwXZQG2zDUMGAv22GQpSsfq3
gwQ/oSANkk5LkGppX1ZnOljhFsucb9DW/KmkJo6/5a3TOlWXfzXnp6OYjSSN8T2mqO2wHXV3izj7
sa9P/11VtyIN+sOeHtDz/2qMhv9PtyrXdqvkuK/6TcXj6yoiaqro95uVjiv9//4GmFXZ81TGNT8Z
PLJUvbe2M0ZjwVjhtJaAlQlD0gxw12aAZlwdGjS68mXmv+gxTgFbNj3gbjuf0crTKzS+SkOZDXBg
eXhu1YMYzEIkBgfeQpR2++RJ4/B3LIO/Cc26fzdWO+5tZcdCFwZigTRem1KbRdyrhouL+dyYFGpi
piwaMQmI+JQtTdwyLPcnhKKOvRGxUNyIjNvtlDvNjHzJ55rD2cUHE2GPAQimxAnSOgwDm/gghlM8
xqaHJ68MTc+90hulhHCh+aGU3wvY7DsSs8ZCPhmYNXVJ1IKv2djeBz+mm/g0zvPcCHNxScgmKTnu
Y9ngHqRjl99dSJaAbkiGihbsS3HxukdPf8hHSnmLr4MJG/bAjTSu2aYKx5rfpzkm4gO7O/xe21zD
iSxhOuP9aZ921aP620C49da58Tmwe3WufalfjUNLpdBBVOKDpnds2WdtIMp5pmNb/CBr7+Jdt9JY
vYvCvh7djPfjqZ5Kds4/SHqrjun/rLCXJjD9Fq6sR2375FyLLBMkCJbMO4nTQr31L7yHNQTefKJq
TT25TW+KNIsn/XcYpacdnWyodbzaZfarmyTv2qwFNwAMad88KJrE6+UZpCGWZnZ7YNDmlgPN1+va
oYsxTTi3YzvnNapR/NT0ulZ6l9jZDPBG04buoQ/tdtJxGY9TG2KFNK6O1NNDTzHPiPzpxc8KSiXu
tEexMqrXNudXFPS9/ebZh3viXvctrZxWqx1JYFSNC+eCsydsDg6pGzjP0sbxA+r4f6cVcd+gQvyo
zNHX6eUTUHUme2RvdD02cYM7Wk95TRaxI0FIeByYdOBQskZ1UG5MmdA8X/DotllBJKaV9Z86Damz
WYMDLyV1xL/e9fNLl2pEQ+INdWb7uPFSxhlGU6+U1pTVuNLgnEAAw4HXX+9VxoVUfLLlgnwGjgJe
W8cMdwQbhSXIvh4bbjlb4i0LoFAuO02zRsChyHxRVI2LPVRXJil7DZt04cC696AHABtRZbaJmz0d
p8ob8+utpOAqNJqAnNWJmnpumDZwqLB9iF1421QAfKleUOGqt/ZorvBCWTANdjgcXVhRiX17LCwI
wOdZn4yq6Q8pj0wCIV4oYfiEFdYXIbXc6zZkLVJ4A5o6Ae91DYd5C6NUA3rBYp868gbkPYSBMSjW
NGdMoiNATkn1ItDHB7Z+IsFUstAxd7ZZ4GGxbQHveXCGhF7UrcC34hGqqnnISrJZRvD07TZnSe+f
BIFM/gr452LN/K68ceuauF5T2DsFyKi012r35oUl4dW0wXyrUzsZazPEmffggDSEeeu0E8JlLYMg
/wX93+c4HE6hg7hLwyX6icXLhTfIZTXa2DXIV5MURuqdATZyv9jCM/7ykKXnrWHZcA71ujN7ylWh
JKUmolUkYFfp7QvDP6NbNL4/LaTEkJwwKZP1N8JGFJjlbgb8ys0NmCqD/9xJeFSpjIJGB4NnRUkI
NVXFv/dcvsMm8DVOkW4Q6rXjzjRhfARhirsZvlPZEH0yS5kS655KePRNLP+vMa9HhU/0lXw0Sc5R
jEqWt5/hcrBdZk0gHTO2zAf7I3qAaMz0mPCfwOgpFNUQgTxAP26kjcBiLMK43G5CNL9wSuAzuTFA
ZJnpWPJghTnBGEreV0REGDgWzQa+b6inW3WX1odj95vOnxouXneYVMwWWqPTBfQs2+wKse7ncFlX
PQkCEwQgqBzTiOHFVREi8etyMdlp6yGjV8THMyQcLHlut/C1tX2r+GtehK6RFDBwPMEcwRUJ/O7s
CrXT2f+3CYhYRnZBJ43cb5mPsLfhdgmRim/bv406JuNHwogCiCe+Fi3Qk8hNltiw7LOddKBVq6wm
pWTNnp1HNy6AUbz6Pr7lqaZOvH+0q0XJrOqsMSsfh0UxD4Ql662Q99zsWbGm7L48KFDs+9nq6nRA
mxCdc85vXR8xmMkr2ImXi8w3WUzxPV0GgTlEOY4eYILzr2Y/l1W+Kn1ZlI9Hw6sznlyjWYGsqYCv
AAV3VjuPwtbqlj7oFK1PppcEBcdx7LN079yDlNwNg7o6FQo3T1XJMmhseKAj42YPZf5kL3f2+2Qd
oIkhLcwYieU8vyc+oXYLmiiCJL2cSjXG/paDyCGay4iuZ+XIgraSo9V5rpiD7CImDQAf3hPClkzR
TlG2w1TRc6X6qI7FI5FHePXqdVobsQFCw0Gt/GS78UvYj8ceJK3h3c3+DAIGPa1N5mdGq11i8OXZ
/ncDFxWuGq3Hcs/GohYemZcE+Xf+2/Hb4o7EvHQztG3pdNqOWXu9vD6P9MRRSt/sm/rVu0SJKqQN
LBJmpJPsQCM4t4kbj7GOtKzJo4ZFi9Qkg4tMXQwtaEzkJGPOpcEqa6vn6kyjZdy1BoGyGXuO5c/e
f04li1oIqfvQ+VdOrC0CPRLo8jM3wyvPJgNc0hiGv8WGLLKhoAwFMa5worMKZy2rqxFko7Adm+bK
k5+PjKg4CO6xjxfa3FCj6jXrAQyfBZtcUf+N4cmHfFtceOdS1Lo0rsrABlAS0vgrzebeEVEWd7MG
A10oniWNcCx/suFaKAzTkSRqRbFdjyp5Im3PLIij8kHruTwtNPQ+STBuebJbMuvgIVBWgqcyPkBC
mJh9FRt/J7nxFI9+U3sW6Jbm9smgV5iksVkrw4OuYVVmlyaL9iry9OSWdlLIbNgYGCPy+VdcFOJx
mGc6XU+MizWS3uvYJpaAULDJxWvFettM+HvoHn6NE/CTUnkeV3WNuizoZoWT0iSkt8SVAhN6rQbr
VPY58Shi+mJGkAZraA9WFRtKhplE3mZdiBZUz0tNRHcR1bZPidEbk2WjuEPB04A7tApT4o75F0KU
9s0CL/5la8thPZ4ZmP1hKh5+3IuWiVX22Ty1YYYCGooNfW89xmCYwPWWtWRo3gPbA5yvA2yNT+0w
katbpwTxNTeI/kZERjjXy/0LUZ6YNi0JnQIkx0l3kHyAs3r8x6lLIZvYNjjUIa67qZ20CDfCsKnB
4FvpkRFphcJo+ayhFB21TPYZVqU+5UusW0yIqSg1Bko/ulKHKrM7yKDUhFz8RRIsmgVYgSzgkFMq
2kXGYWQEdYl4HqUwiG91nQGT1WNYCxuvrKssO4iKuARik/xQ3jTwohvAHIUmNCA/jPO/txH02Amt
toQzihaPGKUXncrLM5E2R7MD5dX38YthxnzpvIJI1fmx+8lJ0UwTbQZZxdsk6n6kAGxNUTyQ6vej
jUwvdhFlCYhDab1gJhFtP14MBNCjT5Xvpbqfi1nB7pM/X4Q5MX2nLDY0/jzr64fOHeCG5zI8ICRI
eLaJllDyXJIYixJ1pWlP7duc7vxjI1ajiptaOfCMOca1qh57wIB/cwlP+chJnJnM5Yc78Jvm0/he
rMKKc9Ci2fsfNM3bgwzidWrfNmyW9RzFxWg9G+hJmEYsPh3tEzQV5HmHHrvYoV21gwFV0Z5j7Yqn
PumH9aTKwgRfIzRw+Y8/pZowYnV1pO6lJWj7jy07t1+FvGUKO6csw01BKl673tjUngeRZOWFqTSu
yKptblyq7f7/hbz6Oc45Zc2zzeOZGVU78WITKptEzmtqa44vKNxbUwGJsllYiw2IBllyCv4GTu/z
1y+3inEVAikkKBMRE9PHuqW1yGVLtq7UmnQ606OnYEMSpoSMnAtCYqOH/gHSt/X2ShfgSFcGQq+y
+7Zx66Cihf80vZ9ABJC09fHK8BHkhPboddBtaz+Io+undk6emrEogRGnPiH4ecj++z1owdlHvL5U
EspT8697LL2rH28OdcyWZPhQqJ2UJo1H3RDnbVo4/DFTnfo0Vxc+b8c/pXGjp7SvlEP1NGfoh4r3
lhXJ3YXje00jTTw0YfXJIcf8wpS689nydAzrz6BsozYIcRFBQgIUy7XhDQeal5T1k8N2OdkN6zze
Yp6EWhhLx6urJtaY+sSK0AusoRlIftGhXRPWch7/Smou23MKv7KEfUccN5u986XwAPSlU0EvyKxY
OWYs828Z/QieBDYxgIG2La8sUSqCdd+RLj5ch+6TnhkBHNlsPtwrxzc8I8F+fLqrWLkuyct8IeeO
hRIJ7uuAWpkkgua4x5/RFAjorYgNbcsqPC16mSlcm4erpZaLgaMB3FuGV6SXAYn7M+pvAjk3pObt
fZRH8JoIoeLZcdsWF+AOmsZ6Avi2CbFf7ie7ThiFaFUYfi0nMag+uPXz/5ffqoa/3/C/2fHJjUvA
TYatxO3s/T+Re23iOdXjr6t8oFJwvHT/nDbX02i1JkTZe0HuIN2LYPcPrEqr3JpTtJUrn6JbCj2N
dEXxBRtalqLqPrKBB9usUbO9ACw7gvnwFWujK4Hls6mfMv+fDIwWCMGLUU4pBtNae1q3QtTluaAJ
rjwZBBc1hbzuqhyad1JvP2kJzJWrFugGkpeQ6Er2oFERe80lSNCTDFeh8PcyEzEtdcLA1qZV5NY1
TmnJ6xS351bm9jySfYEMMVn8ggjqdutzYVsmQRmI1K6aY14fIeqthbyf7huFNKPQWnbjMsxvbjSr
6eZGS7LOEpLuJ/8Z7JtaQq6ojAkWGVhtntzi2+QzgluaCJHuIDVqmrmTmDbDD2e6XlPGs5MaG2D6
5o6ac0bf6vb4Ir/iYBk9UdrP17AFq+IfbAhQbMYuIiikn0Qlph4bAQ5bQ5dr/ezihWibAT6VPCZ+
8pHYspC+alMScSlihmzeCxkgs6JRuHmTvMbaXEJe49Wh+nWnr/2m4FhU2CwwvdJ6Ii5+mwsnTa/q
m9JCX8W83c+AOCxTI7B5fTu9VTknJVHxwat/G4l7vyhhT7fbdv0RFy44pkjv2hJl56O7ViEp6I1C
jL0cp7N4/LNHFHQvXjkk7DiTOsuQaaAYyf9PElYFjzZ0WBdbx5GQGqMBd8InJhX4PicPsq+bFXnm
+oVxisWLQRA21jtArIyJts7Tty3rbV5uADpCMYga/RhK+HOZ/reoQCI+d8Pa2mBnJGh1SmKZFRWF
2ZJtL84y46tjbTsYkVuzrN9QCMnOoWIoXwemNUHjE0NmNX2NVZhlOtWfUhkBtH8aD2LmEiEmbuAM
UPpz0bpkcNc5Hlxd032hSGXT9Pq5IxCD2CHv8j7j69KMIzZJGWziOYsLTMvxZjcQH5CYiAmfHCi+
LYDN/m4+gSMMkESZZt1rsApGm8cz4M/R6//lUo2v1Poxo+F+YNZq7xbeES8jCHxQry4Vg7TTC+Kj
YRkV4tSaYsn30wfsng+fxN/7jBmVbD6X5bj0KF+kLR3ryl7pU1PApb0XF+gZH6sZBiP61Q0/YESI
yV/kPUqqrNSkyMetPIF3Ut+2SJhwm4m38ww3BKxdmqfw5G4LDCPT0eBykkHVsekAbwNj6Quc3CYV
8GdOXxhfhr7FRyBfUSbB5pygI9GCbL5XIqzbcq22EPFegWR1ODDe2Z2zZpZv5YkAyBvxa9D6nsFe
DzowX+OC5vyaZuNq0BBxqmaiKigmTvuchwMQfei5SHOMDWy4C2LAzuBJ06Gcw92CoKZupyCwUkMM
qXJxpB/5rtuJDht5l8KHJfqCrJSlezxrF8EDFo6R7u8MwVyMjSnVjusoy2z2R0uUDZqiZeqLg43e
qE4EVbnFWJYiTw0yIYkNfTU4HiQ1VPknQ2PaSF1BhgY/8Hv61yXBpGLMNgxAC202x5G1E+Klh9ms
oLU/gYZtlX3ZZi26M8DoJeV+Ap/4lKyGb/XTlWaSj/NwWOXcdL10Pbq43p9Al11zqdm1mbKb2J+4
UlfilrjmsFYYouGPGIWXOD7GQB8tZi9crNB6FiCE92v8DlOv21/f0mrRJkuhNvvADkWtPRyCQMAG
ZTsYKIYFT+t8YAT3Fhnh7OSSL/MR7w5kyc8ZTnvNxIA6A6VHymGvUJZJE5ykMMu6MpYaDF4vhhhZ
Fsd+m1jXkKiFUF3n1uuEMVICXGfydqRDybLtcwySgIzr5gLyR8iX5lkgREw6f2ZXNy97B5ncmk3G
L8D/PVMKPBuk6H+H4VqEgKjkMycuv1LUdo69IIIstecHCV+1P/6XG3mgfLFWoyTpEsPt0zECEg5x
NMy7gs0CJbLmRjs80YuKNp/RpgFIzxNVY/sXFeRUFY+WUwHxZppgMJF5EiQC1Tso8jnN1D/Nb8+/
KBf8yHB7Eze/YR1OZdhYUV1MI68k+r3lcPSK4M3ncNL+M1lGGrBY24CthzFJSpktJgSK5kg71/R2
Kw3SUxvYwN6kT+zLD4yOHWOA7XHPt08S6ImH7Zss/NUikxDvRKOjQSK/Xv7nGGNgg6fgZbnFRXNb
femKCCVl6tSb3LYhEn44ENsVClDMTyX+sWdQ87ghkbD9YKBjO86JlPl8ZKoVb/RnHwmicVYcF7AD
TSSLXePoi+noxLN8hnf0SIg8dsSzdsTh7digzlwsMsy27NgHw1WITQpeC1FDkNVC/8kNb6D7Bl13
qFPk1Q+HKCnwHDczqnsR6ta0DP1u3wWe0Gcmqqg6q40/EF84uSiju/Tztcn2oZvrINBh+Jwa33IV
y8SNRNdwFspKgeYfKMEAWCi++CGH+I95W2l8LN+5Gr6Hb69AmTUXJt9spSzIMsDro+DXN8K2HKH1
GGXfe///puTi78EV0l6kDos+MlW4ezQQFqfClfgsHuScAQsMjqddlTPRYk8PN0tXL+fDJIy46Fzk
lIgroFYslu/fZMQJ+uqBOp9kOGLHcbVziKJ4sg+qxw3ks0ZfXuEa5dbVMXWdsKCkCbQZAH5nFObU
eqm0Eif5FBk+jsxDfnj2A8YuZX6XUSNbFLbqkbl8Zk8uRjRzQKSOVxptZALsM4LxOaJnTF4Ay/Db
HU9OMY52d6+Z8OPPHarwS892vyOnBLOoJTccaMkMEuenqR0g0lB7jEY8nEG+BR2MROqE8k2XJjHs
RHGekZ5gPASuFZuvamxrUJ3edL5uRUtFr2dGlTMlyj9dXVvXvMxGnb0zzL7NV+Sc2oCTTBjJTh++
ipZmrRZxrTvz1QLafhHGH/X4Wjntwb68gZcOftuqR2GXWpU4zohRUWSy5Js97gP8w3RAWB+5rvjM
Gt4ev3kDSVGEanAetXuBzYaU2uyzaaijt7tN6jQRrt7IitoBIN8J8CXLPe73/XCxkGM8Atjb1RO7
DzSQPTCaVY9eQD/s+C6HRk18LhiqmCCqqOwbsvgeooOz8vuP2KVYAQtywXNLp7P65XqRdFcMvlyB
MGZ2xe0XaCldadv2Szg1OE5xD2pwn68Z78son9SXIfzdNSnea7SehCwRY67CbdzKcPZNM3x8JTBT
DxuIrLJauw3THOPboACMDFcmiC0exjg4t661rM6g2cDIbCosx3ttb7pwGCBQbMCATqxXreY3IiA6
+UnDQB8+5NONpoUpTdN+QgWRZBEUp2Jpx3p8WAy2eVaAOUGldUUiGlLdR0LsvM9isi4quBG2TPlg
mqbaahe2kLGFQM8MFUDvQgHFrEXB1baN6NuBslHfOkLuc60NTPjW7BvXvDOT9Fs4viKbgcY032Z1
3irZsgq1ISaz1YtjvhecF4q251ODcbgl4VNFrtcpkT+0vWyY2qOGa3pT6bo143J5r+OUynoQQGhO
rtjrhCl8F8V7HCd0ia5ZLVLSqJVQtc2UXyia/Ka1USc6fmJPM7wcrg8kjULzzx0Y8IfjLUv8EfsT
5meBX349o/UxoC7+WqJ4fwniSc7KEHbN9PEOnQPVmPGR+TCEDOadcjdn272fUc4hT1XJFyDYfPeF
w0/nANgpdCrPyQLQt80nzJ7Mc/nggFPwH2fGEUNE8/oq+uHAw60BeY3F7ZTAu4OEOoD0EQDr/grG
egCSdArBL/1PsmTnJB7AwTUGFjgwSW18sTlvwxQI4ZodnOxOPISx/0jUofwEO+UEImCraYpUIw5I
HmktvbsllrWZMFtZxLqY3IPVm9V1Lh8SA3B2Wiqx4CDhgcKPKAyhm39/ucBcC7G5jnHzxovkjbCM
TzdZM2wo39RqIy6FsFwHBVczi4wn+rrNllSGk7abY8NE/W7km1KyC/jVZ7QZ6zjIUXaru0euDz5S
MygmC9QNlg/bJo1UEyLZ7C6sZQWtmYI8E4Rb+3Sr08GxURP6Qv2OXtL+x21l/T8VVkO1Kw2pHHL3
FkQmYy+tTNnxSNr4q+ZddqYJCKbKXw1KZ8F2L5/gPk+idmxHi06n9Z3jyFtSPY7Bh+375URFhbFo
KT4DZh0jrkJTNEqtsIQ9+N5EuWuIo0AkFTzjUw8pQFm5x6/v/rHSzRDqB4xzUUNIPV84HRp4e3r1
T7aBdNfcmxTXWaQUlmcI/pDFp2WJKVcZLLlGatwHlhig2lZViq9IlnjGG/V37WIfmYHV8MAhuflt
J/uzZyD5nMH94xsz++uMYJfbz9LYMy1UJrVEGslBLJLhjoY60mRYO6NEZ+hIfnZr3PhqIME8ii2I
p+yUmXklMDLipY3RwDH+6/VdsyxLdwDH1PXLrAfJzrO+BObpzvZNtlcXG08fpF+X5O6CEbJgUzdk
grULVtT6VT+DxWeRoM3kPgZ2Gqyjdq+1Ef0UFm0c6PhQBmHVTlM6spem4dHTIm1uOj6cMNO/BzfA
jbrRqb6AOgNiVMUxfoIiNuKcQFbf/0iEdcnOuEkiSQzeaNxiczH75i6pAKGGKqOOL28gkd9LBgdg
eDCJrZfE2mFWl0HlH5hL9t1WDzAAqKQ4Yk4f1S4IFuAAv3kocItB4ID8Z7pQksK7ShWSxjpZQEZ1
LZRXcol0685eOzHCySUo3l65bagY25PIxcqd62tqtyV8ME+UoQrvNbP5bbmJ//dGgnJuepw5hhpU
PjR85EDK6Xg0MfqCU2mebqSMO+5ip0EGou85fDdPlGfnKmEna+g25fFFm+xThzSjAPIrWx23FZV/
5dkR5YRtvw9CRRDXKT2ER5Jlzdx7l/vTCOhknfemtbt7/hkkqYq+4K0d8OaI4RyvGTFKt8MbgbL0
qMwl0Jp97tWGxvzr8/SoGDg0f2pF82YWlf8+Mrylqv8cWYlF3YE5ABjiHOthVp1W0N23ELoSpK+R
h9riGFRhx4xkd6F0HEmiXmi0IJBkHUWge4ZYnv12PXkE6hhym1kNwPpqm6Z1aNvsnarkWMCJwYan
6Th8erxPojM+3To+fc8tAipN2jJn2mYz257NnQR/l2g3MDx8oY3lbFGbM16ssZPArNBFQJWTV88J
i9TQPjgSlr09UnUIoUWTIv3c+NU46pN/DnSNJ6K7iEbPxyPsl3gB/rcWRGqZi2lN17cg6lVb6OHf
TIVNZGm91mW+PHHcBp3mldNG7acEOK1DBlNmujO6ASf3zKWgozkOs5qmX5KaY1aQqk+WKERiVjAe
Z9rpq9HuE4AtIrjVfso1OeRVWkxBl4lqMfzGIFiBH4Xx0aGXVUhpKUThIceUid3eGzCeYgSbeDgt
BdUU2ElWRnUL9RlZ767iiDwaXtf8BY14bHKE9uyjGbLS1wLGxiynpvnBR04yoWF6xAEjYM3gWtVe
yUiwhxqUd7WhOUvLwi2X7pzA9CWkyv63YaAfrJHm7cdBx/MSVKdpOzWARl6QU9SVtVo6SrwCvknK
8lUdxQY2aAyanXd8h73VottC6vUE1ccF4zoa5qrKGMuGQUIJab050NTOZlS3ZFHrv+FyUhNRfZqL
LOZFewIWk71RkX2nO/tlNdlvUPrgWpSpifAI/YPWzqqkDv6T6elBp696nT+iNJZ9aYl3MJWQibkm
NMoujXUana3P5vRtQmCpmzHvhDeTBTm36OVsdq80Rw+0+SS9XuxhXTCdkgmnlYrhq9T6ziqhUbeT
Ze4GchRoe7bTRL7WqYi2AE83idlPwg74peaeQRtJIQSevp5NSd9HdEg5NCPITO0iowsbBvzW5sPu
0dqBjwDIVHVcwG3cG9hkaOTrf6h5RRTgp25sGevA9lzWq0tSWRqpqhUbwg3Fr7KMBBdZmQkthGEm
LpTNg/KMdDdcDILxYj4Nmr4sfhzPQ2wSLTp7vmgqFvILUx6bc3cMq/TSxlTna/+/hgZsI7r2saOX
1qCZyte6Kg8Q6fA7APtOC++TDcZ7hG4JemamvMeMsC1hy3AWvwsZyO/S9cK/rBF4bdkdZ1MsM8Ba
KHo9qpWO7PDKiRa61k8Rv1/RilH0f8OmoSLNIZGeu7nvsSeMULQtDhE2QEjbqqgH1zNwf2i4SNcH
Ong8WC2ob9gGqB6JUCXDFJU/BaSda/UOnDdHNV9GpXiKa7nR81WdOFM81g68v6PFPj9Mr4LU6CY9
agwj8RpEFAK/b2kyshMf+hrlVTYIs1qE2fV56Qc9GiQa9pJeu85hQD7Vfo4RKOotQn4hsTQTOWTD
mqU+iOzmr1oeHnl8pRZwl+jqMs2xR23Tr1TCQYSKcgiH/6d6LNeeUCZ/5ia5w0aNi1xpUHVtfsv/
/+i8lXTE1ku+wq02D83P14M19piWuf7um5SfQGAW98L6rkIfxLDuTpu49VdKC63nyt3bhuLUecR7
h64Sx2q3BRNV9wPwdost9k9C1Q5ND+lZOHPIGyrBqOYJ4QSx95fi8UsqBm3K/3sCT26zH3dEdUnK
Coxxte82qrLqrwXpnxJy9NBxbeYGnwwrTV8sn/1AlLRggwwX8qM6CrA/1ydLY+/Ca8UyxaKOoEcw
xlVDcn25AiwMc9fNK1xz6RuqpcfDq2PZu7y4zAJ2WNw7Tiqk3EYF+mqC+PNerYbVj2sLhYHPIOh4
b8oSsmFssETUIhQcfq5YNtbHQmdye1Kmophma/tXkof2TKnY2I1PdAZQHX/8wnDJTS5tRk8ZrgNn
ux2jfM7IStdfXNoYFQDK6wYXJSxvMMGlOCWdRLRRo6BrPcho9FnhtwRQuvjWfk4YTPGwAydwINAr
32e/mh8dS8wRvCssJUSQdJkBnZv/jEo76Kisq38EWrbjHuctJK4QyP1MOQq3AtQcUO/a2JhY6jJC
Puc/gw/k7Jjy1E7FROsBea1ZCZ/C7fIoxfKi4QZKRNTlRwl5XM4dZkGw7octrUf4IssdbxkaAcvc
py3Sqkn4LjMP/MUgHwZ44XFaS0UQbVG8wsUYJUuvxesrgTCCQrGbZ8uwjndf3F0NDAS0gHTHwkfr
Xo83ydxIvS2sStGxEYVgLxpm0/S+D6ABRDix3AG9zpY4GuRotv5wkqMjLnKW3rBmxQCJbedJyJus
DiAqXleH1hZddda9qDBZ39MGe0uYhLY7Z1f3uzbYv4xbwdvHlFw7Bc4HZqT5KsMDxw26NYjvFbVC
V1uPDuRddFOBMVoRGPpNOdOBhSS+Boa3Beke93lWLXZLs2o+Tjs4IhSYz3/N8lZdVBgf37AobIMr
P1f1dPR4UC8ZxPe4rs2WzPy6evhjMiLp3OulAJsAihS7K9iEp8J1rH8eHxwKQNz5Q8Q3+BpqX495
2rSR+mXlNeK3bJYdz3DH8zbrlGAfodVzfI/fRP8WXrjppCnXN7QgNhOtfO2tQJgO42BegB/yDeud
jn+mIcSespqp1F5ge6sJuvnfTR8hV2EsWUDLSCB2mqEfiBisf0lrGNDYp6Tr5ehxmkX4Lavcas3b
DPafNrr7G8xQOM/pFFaIoM4e48r0wgLvS7ILsHLtml/asl7wkjKYc8kCZ7i1gi9D2v6sq5w54ZyS
lUF0RITBsU5cceZa8Aabta2DrebOynB26bVesunA5ddIcXYqMDCnFe9C5l+PYR7ujV7tj15hsvGH
bSQafsE185jjgSLCyxSVQzNUeGm8hSUXH59+daUtDrQ1DcM65cPh8uQ8DMLO2X5BbuJvxziVRW+P
RUtbwDIKWt+91t7QdXjP84lWMAZkUO0/kH4Zu0UfQhvXCmpf4vlsMj0h6JwkPzSmuyJeK0U1SoK4
AQ1XN6esvFFtLWjgXIfwBOhk9eoUdiFibQFURq17+JHLTdIcrDvCGboOQ/ZIYkrvtkZkK8ZZDiDm
Cv4ec5hALQ3QXZcjk8qMmc8r+ldbtclenW2PUTH8LJnFtfR1wkDYjwDv1WCdWYiKg2CDUUUoD0Yi
K2VAjRJfKIC9cKHjut/zFKHufGdPuUHcyaKxKAh2H2cugNfrhoxjhLkjQzZD/7sJbLIGvLkhBWXL
HIz/3HbNepAVbdwWCxUIvZks7/wFm7usEXAikPLuDcUwotDP8RSfe62GbHk/4AJt4P7OZ881/SAb
TBe1BwzS4RE0Kgj4e0Qo1X66vGcudmqn+hABn/iGyV5RdZOu2fZakKCNrF3kT132qkocoyMHaBi8
IQWPY7djggSB0NN+y4CsH3NwySnwxZgXji4gr9xNNjvSwkL5wSPHFgkg8RVNvPCNGAwN6xXgiUjM
owJnHpeRCkzaZzHW5SaWWuMKJ8yok6wKzrg8rAR1ALQiMKS+RP0u8gYWSiyNGfJP0GOsaTalfPoR
G4dGK1lExlO8qejAqToEWCcKaz7ReYMUnJsc3TD16tIJP5QPBKcSUrywOLy9oH2jIJQWQR6Fq7m0
c7kkdPjiqRGJ3XTjh24V2FTyAoouZXml7Y+DsC6I9hguYUmc7Jh3q25JoPSffS5MMHMFOfReraiQ
90Fr6QVE1rOR4ORCYMHw0Hu4PNJPTCBrADOeAjh6e/rpy+iVGDz25iGykz3b6isvgKbmLKQfCBEd
L+tQFChpO2UDhF9+VbHy2ddLAb2xCg+35wIpu5sLnmoBpVytpy2ClquAaV968IglG/047oEfo3Yw
DCy2OAHQ1SD2NeKKCW10Yo2IObYcIqBb5o14F8ViAZgHSvhKVdHRPv3+b8XqQFuGcS+5xA+8TCRs
H7LUDH3N5az/p5EwJzaYzSDRy1ULOPcjJsbI14VmRcOK4D+YekjAB9MCDP7o6zq9JpY9btmjbOdD
fSU3HF9Prj97MfSPSRqkjrEkq18QrpdqBArm+1u13EyMneYH2fyxsM2RmVT1v2z+3SWVJ29NEVdT
TlX84m8EQRWggpkJBP5p4vL6T3zkn1fa63DS4sXBjKDxTugiBjwesDGMxjkqKDfHYn2tpPtfGVj6
YyRbtBrK7AOmOciaTlXYtDTEIIRsxgwMbEsg9MVtDFmrd+uB24W0MC8PoeUCS4cCTs+jFjho2fBF
1n8hR2KqiddE5wjRpGJmhDFrnbMQpKM5M1IGcb1mYlggGIA1IALiR28FaxyCopfTIXyOK4JK+5qk
7QQ7sNtDdVaDGX/JYFi5Izoujt32nwBMrnaFwIrRq+QmZhMyTrFrnoOOcHmWfY1CKfW2tAiE/9OG
CzIzpOv8jas/lc+J5Z3ZIR8U9mRPaizKL+DQtpyN/qWfYRv6ReTafJkA9xiuvHU3f/+ed6cbIJS6
ekv4DRGAth/Uc9BwZmDYXVKg8nADZuNvNsGovpVswvF+gNi+sCIHeMPXYbDkIasnRQmS8s6EaoA3
SLesZ2cRbm+RXn9SCpDcOlL/UMBaCiqwL0CXN48YPYgv0KwboM88/s8hn4kJUG2704YN9jMxUJFv
cqi3STLmR63Jp35uo07s4dXE+qyaAtNlpf1eeqXtLLx42bVJY0F8K1oagQoRfGK6efGxpKtlyFUB
oKlGeLGedhATPo77jOlfCYKGO+rboh/+RxdJRyovP3FpYTm/G+p/krfMQr/JJ3XmlIX6Cug0Sa1r
HiwTVrP1aByTUT3Ama/Oeu3kBjLCSKYVuNoKozxUTzhTRStfY9uo+bhY5STa+go8tf97pDltKjtN
tzX8Po7KwfTozY6uUEk0DURyfGLyrNzSjP0Aeqf/71FW5LU6k8CXvaGyulg4aLi5vbQmbeWcX995
HTAEsyAdp3eITHeCgX9i7TQopbWIx/7DQe6kLG/e8b0oyFu/CuJ1v7EDwYEgQZrl7JMPr6flevQl
Ui2nG4SuHp1qMwajrXmqz9WP3lmx4xlZ85/oJufL3MJT26XfG16X3MDcdUzxSERl3Y68Bnz+Vuuj
R1rDncabjLqH5JION38HAR3Z/X/sNq4K7fI/gKsTXcSj2Z+j3i4AWqy9WFtV5XT+WUExJSCsvc+D
yh4KT1xSH0/qjNzEhiL+UK1l4O4Htxfcwmco5F5os2VmAgY0avcZSMNju9oAzpj64J6mgw3PPnLe
pBSJak3+ZulhSvmqUyVLhBo1fk813yYPBtMcVe5QU71hyy4753rIhPTNSlDPmD1IMHB68U6lm2Ao
SJaA2oqN2sXraQbCvE1H8fS72xUeHXYzhJhY9FQv+FkBYbdRCDa3XV76beThFOtqqn9Q29iaLjog
0piwA5MQ1caemTvZiCxI9BO0t99TKRFn4fwi8lsEk3IZQLE0YWJnYv7jNKh/5s1JgpeyO6KKhPoN
oA5ieUR6fMOC3Vm+F50uMI7hGLz7g5kbWbPBAVWrEnGTijbTNqeRjtzr0nAcPtCVg4wgoFTol2sX
hY4xrjfmRKBh1Pf9Ryig8o5kQw4Fa5knf7zsJMYYyUADGahYeiPpW8V92x086CQmqI4Pw4p2dWvK
A7Xi0JPEZL3FLHS+SsdrykNeH//N/+L5h89X0zMFXYJ/pNYsMe+SRb31WBO/zRRrBUTZWk0sZSRG
AXznUyZJ8BkOvMNJ8f5FQxQnkpCcbiBd4s25FbjTilYTE4OIotBHajVJ5+0VOqYbCEmaAID8pztD
v8p+UJqrTIXfxsHWRU0Kb/ZT7MvYyfb0KJ50ew83MYu4t1x54U4arKBkk8yE9yBJb1BDcZTgzATY
+iSV393//g4cnlwWpvx6Qng4opcCQwFikiVjF4Fx5qMdW9QQNkqGAs80JBPyTu7K52Vrhn+WFMSv
GxWEoMo8azbs7afCXvSRegMngg853TcoomzjrP4XR/hzRy8kQ0cFqjvM66YGvFJ/WeeLNOLcxlks
VVdArCzjb3AJRMN315MLPjuk3phVZ8ml5ZFIF/o3yBMYNuo6X8rtby9P0faMsJK8Q0ONzx0Vmt23
zSKvLmKVnzyPpdkRbVSu2X9k3wjnv/B6JtXVRabxyJJggfF1Vq06tvGrz8wkQio0WDyzZlsmLcG0
HkQqT8w1la39OzGJyOpIkzhSC3IoqSgw5ZmX7ecC7scBkVZroSmoNF8NBQoYCq9FwoAKMfcjSp5N
6C2j5k8aovnfJovD0Fx1aHokDo9ldNB01OqaizedvDqVZuGqK1gHr8Tb8uEnk/J9WeQpkToXuQke
1/gPn74uZujakD+6sxwV4cRuZfEMvkvcfVzDVcLnEdmW9SvQ2RYTOKvlbC1HlMkZgapbAgtlx8Q5
vjQGUsD5CFmsbXA74ELVcZJ+SFT2axnpwmu/4QY4g6gj+TNNDi+wywr337pp5oTxlldlLYXaYujg
TeeB+aHXuqSWqcLVYszw4NiiSdoz5DINEe9tVqIM4VrVPbtGEMxA4dWDgEkIHWloFEHaJSlbXMlv
cC6fbcEphaBL4yOdSpSxTUQRhbCgQ6oofXyCmNXqPalr2xxTr1/mYXsbxt+kWYQ3hzUg/QTtm/Gw
PyM5Yun2hPCoKcI1BA/3y0zxeRuFv9rOpo1wIqmLOaqE3bBb5TcUdcEb5xI+fskMbP7EyAQKwGWs
a5SFFscayII8+NDCuJCwH1fcusFA5EJ+N7nklKvwjsmlAj1K7Cmtndg1awfyNGncdjkdaf4mmydv
Dz8JG21mJCG8iDmQA9oN9f0QMtN5tkwUkxl5H9qbvzqCJeRHl+s/Z9kM+8aNjnPZI0oS0KCC/4/e
7ivwdvlhjyCQv06ErOgFFUP9u8333rL1pVTcqRU97+EoRd8mq13Ds2sOM47Ms+bNtfAh/AI9usQF
6oJuz0p/seuBG3bo8bMRPtIGFRh+H0troY/Y4TWU5bimAu/9KHgQV46eq8Q81Wpbkjh9+q4axlre
fbVhHSyWIwoIIOQyhgP5S8S8IZeyELlM98672qZ7TOEA+NCRaS7zisXDUiamHqBNIfN3KeVjLA1X
xh5gYb76cAYFHtBFOSKAdC4/Z35AmOzl0cmAggDzHrwkE+QJmohppzwhVrnaRfo6gjdin6A3/kbD
RWwvbv8FwOQXiGf63CP4ABi++8omoE+FzM840dLpGb4gIaOms2UUD+X/hUedrQp9snDo2jimzh2e
57wzi9HzEZ18EyWTy6gZ+z0foRtd5TIiayNiYmtfBR6nBVfX2Sr97U+ARrFimBcnVVZmMrnvR0Ve
/A9uMwZi9Ct/0wewpkA0zDnZkE9xUzdg55dlcn5uRElI/tLDjWlaJhyRndR0mnNktwCWpvbTkNvx
RUeq2sdHYC41Lv7+3VQFxQLPi8u2fIIVedfj7ZVR2JFrHrDCLGOGuu07R82YgUJIcONtzxULtvsi
eGHHr5OONn5ESD/jNx6RCxpdNntEWEzmf9SxceuH0GaUpcrR324AM0GmJYrt+cv+b+uXQ7hTcbkN
cPSSE7Sw3k6I7b/YNaRpeez+Fxu1NwlisxeG50tHCBwAI5PXjU1qbKLvJEiv/zHUia7icZcB7YXh
2cqp2zgsCGcatxF32HL7zzCU2EB/EKw29rJaohS7gRIprDZUWDtf+M59/nUsc+lWQN8xJrHR5elx
zL87W2jV32yIqKaKwynhT9dObGB1bJW3Oew3OHjkRduX7imEGG77vEFn8lKel8EeAJ5DX0jnf8rU
VMB9UwgscqijRggmh3FPOyQNrtaPDw6dDSDIKIpAD1qWgipNdplG+zuXiq1Gn5L5VrGoPoweS2aU
9kBhzInhz4MvFLhv+G/Yz/mYSimiTaRGYm/2e1GcIMxR4VWpN37Ktx6GM/gEgoubcIAhxJ8EyZrk
ktYg+GLs/65GQ0kgM8qppQ4a4W65ChMvnZoGKGMdqymCMWaMhk7EWJVn7pjacgmGSJxkeenPdMNl
mbIBlxr3K28lydZOra+JYaNoMTM3ArCYrNpVLh/FPTnma5/zOufdpnLSQq7WWPBRYsiJW3L8xmPm
OFI3ptpCUbLtVZ0OURcv8vdbRvXsKoaNFIBDUMfP9BLFzmhY5aqtvYwXvBOZgwLW1pFLMSFRITdl
f/X1oOBR8PjH2aGORYf9ou5cIU/Xigl82n659nt0shtCR4pl/E5HrQfz8xDSypvvhrSsMDfJAwd0
QUNqfGfa2vZF/O/kL3TcNJePHi2gSrgC+sV878Bcv21vD6Dk3lriYIzV/rn4QWFM5ndmX9IH1WeL
ly8I1DC8/aBHCfSPQJCpM4ExX6srh2T6DtlWPdnYlG8/emujDApVbojNUkx/r1W5yYCLWyqR64BF
v3Z7YS7aHepP1Ls1oJVMAm3i7HsD7n+NGdpEL7GC2s1Ogj/kBKhZ7eg9kQ04ic8tqfHU0jIQFQbp
+7PxYxnPqcVqVxHPo3CrSgBr+NEI626sYwE2EwbsBVenD9x9jtpZQ2cnpwMtpTfkZfkx8lz+UQkO
fQJPNaWQDRQoCiXaPX+FKWEyksZpmRhk87bGkztbMM9+eDIAla2QYczXeSi2IiPe7u3ZiFuOqapt
KGj4zZzyKwxnUwL4j3902G1e5tmhLRCJQkqqm5kgbXb4C/YNvLeuX2NyQrAxwMQeII8eLjw1et6E
QEVayHyMtFuSRwjWAt/M20raO3iU47/yFurT0ZhLY3Y47mQTDat+CZIEo5ZTDAcJL9dfca1i8z1E
Aw0MNQWLIK1/84bC8npye9jMrnLdQztlh4M81sDKi+jb4GOfn65+5Tg4OmOHiDnIB6x8VBXPV8Mf
AS1Mbs7q99kQ+hZ3E0U68WkTx6vv+V5yep3jrxr2LUS/QS3MjUXVefgEpDFjH9FnOx/c4Lhl5EgA
ABYp2nYc9d54LmhOP9m489p/YhNFvGux9qfWLKFKqKevPFTAip7G5EdzMC8ILuAWzJcRstLLgdJw
jjg0Abces+lKal64WyE6nO7bKpTJXIHjBgHdP6V6kgQ7rTwIYIAOW67Nbw4Mz6wOtJ3s2aj973ED
YyWS5Os9aB0fSC/l8Mx85Yohn95HhZTpzB5hXLK5YGbjcjYE9o56oCbre/cyzNmv4cC8bo7aKJM9
S6RnMNjs228d9pS8YRupWMM425Yt3v8PGtkfEp1fs3WlT83G7sb1bKl1GxwAJ9hpKVPxDXVvoQIF
T+Gbuir79wDa3wxKsh5SxQ0tsFiuQLPOCVjqBlYs2yizDAQC77qufLulN6XqsUku9wouZftejBIu
zViZKZlLyEsA7n7ELTXca7GLKImpvKcRidcc4VTJuNMUyvF8OFr8z8q8P3g89EwtBQCdpG0USFSu
AtJJ4ABRmRpesk5jLZlzdE1pdnfusNZG8gucEK808Thy3SK+WDOe9CwdIjPEaRhoF72p0OoXPISE
mVOTys77xTO4x2x3x/xWH07ZLgZb5y/Ch5wulACz00VQmGsTFerzTx4NhyNHrO5KDZ1FqLwAjoxg
qSPMp4pHlhF2dZ0CxOV1rCGZkOjNFFOdLwdEQ9inbpK9RbY7TmU4yuEypafxtAqVok+STqfjlS10
hL8Qq00+G3/K0NW52vHGmMUP7JhhAtgH/0omLmSHxD1XHeKarzy8fMOuPE5xyaw4e2Qq9jPreBBz
FQ+FlemE9RlmR2LFp8jzlifMbvaX6DR8DNCDU1oluJG+ofDofA+L2kdBmrLFsa8gERzwQ2fQjZ3D
hQE8lDJct3hG4jaDt4JPPY9RjIOPaWWv/3scdOe436DeDTUU9PAqgMBoUL9uh5vVHHyJDqgeo6zM
DArlX3d6n5pANlsuMlrvtaz0qZFQabUGBewqSc0v+xuBuVRxjaOx2SVvfJDRqU2EBnZBsREBwxcG
mfTROqIltHr4MUnuFspSvT/JIUpsZ3Eaie1ri8gqd4BICXeGTD86Fxcurtd0E43gWybBQ/J73Db0
r9ZlNyld3bP3i+vg6DFJm9OM7+VqGfIcBTlME5WouI6IQyy8KIGhzDoNgTYHoOQtb7qrKkqn6l7E
uqKucolFErZMZ0PWsnR4QiN5yFBrkDaXopo11cvou7JDtJZRqA9L/vhGKqlMyEl5a25xOKTXF5QC
NlcqVN3IHRq7zg0XH5sq5nC5wD41q889NtRMeHohW4zKZpAeNo2kSTFiKp5ZfypBtsfYcTNKisye
decrHwjdt6l24KHR3fcZPqA5/8iXPHZaozI2ZHNjYoVT/VqviSf3NPmjhmOYyicPQCwiY1FxYkSB
CVVQ8t3Af6nLRKFHZLxuMLFssBX9cdrY8Q9vMbG+Zj37ZlL57FBK7P0n5T7ZtEWjw4gCcWE6smSs
PLKlKJ1WF/ChrJ+1oQfiatbTbSXHO0CDnXkJo7l9FoRbG6x7EQDaTrINQk54SgTk12oYJNHMNoCH
a6nosCPSO7YuXM7H6ITeApcfXBzHeCc8IZ3U656kZfHsqx/CF5opy9N2pyKz6Uhp1w9Mhka/PDew
WIhW/SXbP3x9fbcQ0VxjtlGFeGS33yImx88wJlT27unMSo3Hq9EEcXH0JFhP9zkjR+xDmXFa46Ou
7gwWwFRrvj8CeSqI34YbRXD6j2bmslMs8zoC5950QeMjOFSOhm6YX9aQPLaWwzHfRDxo8tBbVggm
zJjj28g07fpECUejTqQwtUNjyrHuCLwlS68zb8J64/Mu2lGDM5Msqbrkp6TagHhlrjmYpSsVENMu
BbaO2kaFZQTJuAtuKSN0DIbQwrHT4SJUvObGY+n87kcjAfV2WFcucaHAvS/YUrNOeRK65nLLqIAe
/VE7W1XCsCyBRbhakcpU5HID072Z7qaxrDiPqmxz281Ug0q/3il2Pp/Km68FRPaEbC+8WFlkTuMn
JDlqrQZO8ETJRcLn1juzJPp9PKC1VMyGAIia2ibQkyA3O420rNpQTU1QWNmYT4F7Xen3rgkltWFh
rbNG//ukGMExhPIIZ2+LsvzZCckUKKMCPbA5VVrYHGuWD41kfd/w1eptRXH5qFMVx73lvMTsN31w
2qa66dgaQ+3uIDttJEGWlOL/LF06NKExIlkHUiyMcKE64kNzgSlqkGmD21w3WXjI2dDM26CL+7H5
KyQW905QnkF7LkWVXLPyarjWyOfi4/qlXqztsA0Gl3m5ogxYWhj7p9hAOTqrvy70ps6dzD+yUDHE
4/HM9UTst0vuYxsiai043F/mdd16A6gXghP0ox6SsW+8+7ORRZt9x5kzgEqC40PyZyKC8TMn9Fnq
7i8VjX6vYlWbFZ+kSi515jI1x8Ln8KEx+2C7JxoN/015or5nRlgn/bzzRuER37oVf1NDvgNK62wu
0U5nEGRT8p7KJs3GznAi170jOdjtQaxPhl1Xw6AbLd2tpF98XVhaGm6An6LVx94xLZBq8SrSZ0F1
binptAsCaVUNrby3JrUvk+w0PPj+wlYG8LfGRky14AZcwff5DHWXHyeR0+9HLPqOuaeQYVCcEM/g
923nUkk+hww+yNEZc64oZVnI9DmNJLH49Sda+ybAFEGGWEWKRMN2tFZxo03CN2AxAZKLd+be1diZ
HXw5OyUIx1to6Ep5LE3vhoNWWI/6keLLoquzbU+LjUjhWGRHhMfiv9OddYBHq8c4TM8RY+F2YlHE
mVKRze/eKNNG5Q/evZg+6lsUDayykmgJhqpb5vPXXR44pTj1c2wdqTm9PR6bMmx5Au1h4aC47Dvn
P1l1UOpFtU939/rYORb08TCHtONDUrH+EQegWTEMD2dbRo7eLtrHxAd/2zLa73l8EHiq8LElLvle
ZdyqkfF3eb3cgNChR15ULp9KTOjJYzWLVkbziix1eHArCEkKY5zFilR7Dx0YCOD7ruD90dRiQ61a
V9IrVua3ZimgajqdqKHRpQuyR0JkUUzyibl6K5n191IFSbIIt1VfYAIw2W3cziMqf5J6Z9d7kLE1
djMeVRGESLzhNvm1Ytb7suP2QGO+URTaYLnX30cJ0SohridAP4fbLflk2RK7YfhUZMW3DPGHDMEM
r/iNai22VwsMr4AN1zUSh0K+Ib69mDbIGhD2i9Oglsai30ilRsR2wpcPpeIpoo2FQNEJdUwGdCvv
bo1XxjjY9KX9aYdMhpTN3wK173ZWRPAtbCmbG/xT4ZTVlkXtNNQgp3e5PQMqu/TUvprT3+fImdZe
uq1B7/VwgT/RHIUjSg2KP/40QO9cUPwV/eKCmgoGY2eOm1PwycHd23ziTwht00HXoPoInn3TNDly
uDKFYTLAgRxBs8kHwEL3SwgaR3lq7d90i2mvMEU6RThT0PKUbonVkPkr8Csa1T1bS20+p9BYEfyF
r+cdVaJVeELskwum8M9Pc3d9NDngKUPM3R/BYC65btwbrHYw6IYU1SLyx84eLPe17KWJ33swODK9
eF0FanNR0ZZDpeTkbeGe2hk5NzzLf4ZuTG1txWPAQV2JBovFyrnpjeTOvfn8KMsWFy9qn9/pFAaU
cap1VwVN4222ufVIdCRUgjP1/p2KdUCd27G6UpXafvJ1oGkMcS4VD9SpzxcW7FQcOOTiKxpnbu6A
J8epes6qJ6Mvdl1yXtezLQpiCrX/JhNGRGt+wE5jC5vQVfof9JDm10yjvyM84EZStMuXgTALr97I
i9R8ohkBSsqPcKXOeeFnAbV5P/xXXwsskOZXaHs1E4+1xnB7FwLfF3r63zCgALeXiURAzqwBp9xu
nAj2IgnUJZbwvtRv4R0ntwK9CXm50tO4SxAjxO5KvHVWFNlWVL8qnw65aRAFewRdJBKInlTC56yl
S4+lwt24TEHmVmRgXs9/5RK0ft9FuajMNlTA97q6Ctghhuv04FgKyy/E580z0MXKvwwlPDiCwn8r
hDOXkNZPyKAkIt9EMLfgxjyTrErp+ndYvd9O4NXsaXGssoB6VSoAyCn1VHw6my1rdtfPzU2jJxJD
XKtCHb4ALZDc+b9H/Y56udHT/wJKNAtrHer7+zlcMQdbVogpILk7Hwly+NVpaHJZYtSxjkBAC7Cx
Sgp8JNcPC23bGb6aYbppuRI4+ol4T8lxhZA6OlB/EVBNa77vG4Ku7TWh+ZagcFf+3uFEeAwwq3Q1
H/GASGwVcuhILCuk+GWkL/l8/iDQCLeU4MAwQ6bQLGXZKA1WRuxdrdrE2C0okQqgWo0mIOa5fSXC
UgXyYqGyL64SQ4Qmq02VJcQpZpjZmItiF5HN1jrqcPDcblLOP38SaR5/opoRyJe7kqr+sUVIkTtS
eZCotFPLCYMtQIEuWI4zdDUfoGzx4obCVJtqZJOiNcOOQdH8/EyNIDlezbWNPqLGSf7pt1g46w4O
SVPtq6mNYyD9FZaAyFBPjhWAi+Gokd7E4ts+OABc+9Y6bZsWhoNhi7JKyF6dotXtv3Mz0l77vZmi
8Xd96LoEn6Q4FnNpNB2yDxla20OC9RHCFxRohPAtZ0zPOVhjagX5JoNMIlgXlY+jBvzAyc2HOMEa
p56d2O8sE0Zdnfz0U9x+o/gNLPW8d5KJC/7Xf127yMuXf5aF2fRth2ALTO+VZkQ1WFKeFPSXgByU
V+N8g1r7p/Uy4W7H3TgT51S95iVfpo19CQiAZVRT10/4eFAzxmI8WxSuIWmzJq7Vvg3D70NwGaz1
exWAuOAhQ9DgztMlG87bD1Jtu+iAmw+VYm4xT2rpOa30luMGD7Fpx5iPVUNbJgqsIwQeuAL8TQFG
exqtJyPzEcnfEYIGbgpqjzdm1qAy9/4CwcZVofm7T+k99zXlNuRf4eiSC103wBo2DJYQfaublJfg
ROfsqfy2btoUFRhpZmdmLLPfAhJls9Uuzi7OshhjRrjONO1hLr5+Hx3Nomj85UBFVI8iDmTLqWD3
cYyh1W8t6QZAeYxtV0gYgLvBm9jAYVNmCnf7lGHtpO+9tQw2PfDVhNLgoPvmtRyHzKGOdMxw/MvU
+LwuLwa+18Z2mq/5thVIkSVRZfBhSZSo5pCXf39WkN/0CYEpu1UQn2ZtKwdqHvTMj/w15MNdCJUl
olUA4JTHGHolXWmh9FM4VYyuQGM+AQOXqbI1mZKyEAeKQBdJeicR8REGRnIINImhvEilTL6Dlcwm
TRMmfj06GR6iDzLEEBasEoGpcZpDVX1ozTx75TIugia1miWkLE/1QzJvgH5tnQ+UtVL31zQjPNu9
p+i2lb3/rL270ixGpRKW1+1x0fXm2dP7E7Mx0UdkwBVmnyklNVW6bf38ReLbjRclLp35NC1ogxHQ
rVtOxfS09PWfjtMCw0Txxr+flS+u1GDrCmqf2GAjCTQl8iVVxp5jyGLq9ObHg7i74mjijfUeHKoJ
evMskzR3n2qooi9nnKhTO4Ojfkg7hb4DDq30P3OqzkjvDX4PMFNWf9qG7r7837zNx5gC0n8A0pEB
Sf0rvueUvmyn4tx61uvbYx4gSkrJyF9sCZxNYjbyazlbnXfyHdimxPjmme3Oh/H6qdO12lTVWZjc
ThHz7mvxBauUlOTZavPrhn+sFAdVB4zJmciUKpi+jBMHETCVQxuyetcHyTHCF4r9UOgVNutEkJ4/
DJCiCSZWsXL4NsZKo367GYcoxcLHvhTZcvvK8qKCufDA/p9zoN9EEQrSXwrfMF85GFEW1Nm5Ioiz
1qod8Fl7c2EVC2DR6gGupWz4WDwvKHH7TLenpaI80c50pKFqQDl6ojWw9P3Py/PwisOeYX9b7qnu
aFs9wnABBwRYTlKeIgvHgNXw12qzP7YhaqmKReuSR1i3o3vJqgkMnAm0xElKybFO1WZw+jII1N+g
Lcm1lzPJdXFCUtOyILCuo6cmSvVkioLH4IdILy0zgkOslUeYd0+rAMdwa8G9I8HL8/lyWEaKEpoz
LwVrPuIs0dsAQJ2jo5wiSft23iAPCL3DzOLXbGKx9mX32HzWvL0bQFWwd6SFWmRmocFZyDVnZZzg
6AVOtqPaxj0Bwh/8ztpoji/5LiBOfd3jS0/gacr//BBM6hdTMa2kyRkOsYkvz8Q/P4vNE/T6zu74
vzKFS+hBMxzIcKkV1AIHRZGK/8DmVWsZGmSEujWLLrmTsWUzWLFq1qih5cuz72PSVEG3DIq1PUt3
JFEDAD/iFgddZ3q0AuiF3ymCRPM6IDP+SOlcB4sv1buvz9fvmM55BqV96+JhpzVzWyjlUDustupi
5Ile+aj2QffI7idnVH/ihhwDF944NnCYjQKShTFFgvq0uY78SuqBhV2DxNKeY2bkPEf6AhqernBp
zyFtag1u9XiHcHSDAaW41vKdz7bRlREhjvdsrJIC3NrfVugvskdEi1nqwhcZA7V6+fIB+D3U2Lrn
ZK6/pJfXYKAY6YPw5BsCjFdOy7vmwcii2h5Bi74Cp2Q0R3bIdQjLbEWwjXpWvBSCkV32ilO4m0pv
Tvm5Gpt2SglmZ3AT1VceeRlVMzQeDis3ESQ4hsfDMqMUGOWgW2DsLjL/DDnFqF12CkjlaS7O6B4x
hDUQEREjOYNiFp5zllMbZTSn/Ze5zFJTmrwfTDz0m1k3QTIGcKyQD49lDtcn1nXNVDB8j83nh9g8
o0lWusxc6MSnKS9S22no54ONzWJXt4WG5cn6fP3LdlLcduF3IhDjoNcls2qNXd1dfVfZgwHAcZ3W
ZKNAvwizHJooJ65MeCrlfxPjQk3csoCYT6fag3J9DdvU0Q2Q60rOgv0FKvzA2etr7OCYnwCMUDKb
DzQj4ijzhfsoCn8KZDuGQ4ESo4j4IQ3toMORIdD02pM3OsMRROJi35Ty/z6hbqROI9K8/o6zusBt
PkBOyuTSIUPXMqeK4ZNsT0cFssqa/ZR7N0jA4hjSKQIp3FIMo2hN6WWS0k3sl/GSHJt2I0IpnIKx
JVBKcau17Tr9T9Z5sqEGJG27YxnNs3PDEiC1tBkveo5Ogx9uxWmIo7GOK+6dTvNXpFH6/lZ/Usr8
aunycu8er/9nfiB8dhRJ+L6cCdnPs1L1ytR4GG8vythRXTLgXfuHN1y4/eJJC+I/SWx+5USp4wHB
/c4oQC4tYT7UUvOvjNL0c8d7EmMbq0B+s1+7fexUAxTZ7c86Jrpx8tntIgeyRjvmpW9aGRXrr4vN
sXLyjCPNvNLnootxGn1Ybr9/i09f0T1IhHBXbpBQWdbZKKzBDykoElD9Cv9AaIco8u61b3Oe6rOt
d7CAOq+4aFc1QzQ8f9KxB3G6itSzxOB5OR08EEbxjoJtgF/+mPoeVs+VKHvHoCl3lxk8jW3uMmVY
WrJBGrwXUDPw++hHm7akbbsFXhcQKkaqYi05/6mLbclpfWdTo2kMdql4omkHm1gq9uegCyQIEIhJ
Ldvx2dibJE5N7014v08G1YjTOzWB2qr3XzpcLLBFtFJK7fXWuziDbJT0fgJDKKi1a/3LImMk4ZEO
oopqWSWA7NqpCE2Xu4dhDbwKgEPZiIYlKtr5p096Y+R98vuENxo8Wx3HksYLg7ecHR/lV/+0v/9g
gnuY+eJ8dfuVOQ5KyOt9kX6a9xcPG3g4P7WtsQWXIYJN072vyefv+11NJq2BPOr+jpoYvj3XVYSw
iuNOHnSwgUQI1Svf+mvB8uFPhu/IOzPm1aPQteSqoGf4+meOjt4FhjbFssmxxgky0DrQ8gtWpVH9
hY0dDIIpeGXCxUbjnllWPtEoayJatI4/5Vio4yRDjQhlZLpFJ34TYeYP743aF6ct92W76tywfdID
O0BydXPXbn4EtOEf/JXVzR3wcBqbrETEUwNRc9CGnczE5CiPgg/Bo1E7Ci8WhZSWnKLUt/B3Otes
5+2rWahdVFIswg804la2Ty917TiMMA5Giz1qDwTVHYERQdX8KQCOJOb4Yg5I0CVEn2csgUWsQb/k
UmriOtAedRQqnIc/6jAKtyYfpqP3iFSQjRqcuRPneT74ZfEgPO8phVhJd7gWTopYzEnIT4sM+LOJ
IHm7sQ3veg+9vDf2YqyCeoWSK1CzHEc2enTEwkgFyeK8Mu0Q5OmixuFZEHA06xOmBwMD5ToKqBXg
u08iDeKnQLkhJF6q8l5+6BuJklOzcCpg4I71U3Uz1qLahrZxcxcxUHEWE3jxQAtHemN8tfqjC2Pc
OeNovDJ7z4rxu6lgUkVI/5Tm2tBgeSQM9LbHxINqKwzWh9634C3pF/T0F6ar9TZ8mPoBE6tjAqcU
zKOPb/YV8f3BTsHWpzBq/z5616OTjH71Ii5inn4nEXEodMrtDNSe/Ox+gVacP909ya3w9hElO57F
keeoHaAS3K47iHnXScrlZTxFGosH1xaqcYc+NSaoeyMMFZPhL1YKld64AQfEhdmpNrymp9dWMWSf
0AEwHjHOuwdwAMDiO7+eYP2OqeUqX8DUacqS2wwAIjnh6zIOVwTJuJBuaSNIdegRJ5DtumHZv1wb
Jp4Kqnt1TAQHA4G2ipiClm+fUBuktR/7xBEmr0lIwAEekxrpJWvT19ZH0yXTjT5FveuUH/sRIPo0
BoNY8+kOYUW5sdq/UPuXKs5UQylQoHKoIiavAvHr5EsaYO3EC/36EHSCc0hXH+6ys3kDxrrePJ6j
xgLFxoDYKZndE4b3dDHDlAQph5tbsE8DZyRiGcoqYkPIHWIT8xLi9OJyl7I3+y0Pl76JLkYCIoXI
Fl6AjPpz8PbZF6GEoX3UNRRdOpx2u8VZ0etxsNSK01t8f599Ca6ODg3xylw6RKzXxYlOQe8WMxR1
wyfMCR600/LD9EemX0di/XeS9e2Vy8/xN1lthBFEdpiwiZL2+1lFJTXWnqZvKBwSZxGm+g3SnDyQ
1akkKSSAaVX01gzOXuIj1minFKPrqlLpPJ5IBZ4z/JGDb8850EPVvn1Rty79dZNDcjNqF3+rV+ee
sybJjSQW0dvNWYpQy5qhbvnPWqjTJl7onMuZhT3wFrSsVXopQeClMDQ3NNXEDWGHtFicMxya8J7+
pi9h1YDdnQJEVRLHGyp2LT8hJ2aJC5VnL1XtXBm+ErkcWj+GpAe5xquoIKOejdle39PCcKBuUsQD
zoeOcVb9WWzc9X20DFWfiooNl/NRNqlerrCsJkfGRM/ikWmcaYP6GPXi6k4UO74ogJqSI12eYz1f
6qArgh7qxOS7ThjQ+Q2TRn6E/B2N4HhYwmi8xAwjmeHHUqZ8P7HsJzxoS0kofay2rAJuDJDTDshz
IZkoE3ybkC9n8eERuHa2Bv22htsTExVuUtFusS87n7IIjV6sEkmMufQsGdcfuPojzQSLhVPv5SEP
6LudmU6OFLjUraV550y6DQJjmXCzJJmU3ECk7Gi4S5Qsie3ZgqkT88UtuxE9Im8wmmmHvwBJ/xmN
fuR2ImtQjj3dhWvJuw23YFmVAP6n4DB8q2KcdkCDAwQlPYfn4Yc+cNVYhs+CAcud7DoebR0Pk+G2
7J6gdkx74frZZrbGwdxwZm4ziYxj7R95nNQLrGVF7wIv5sIFjkcB4JIa9BL9ee4KcUm7ixONsw7i
DR9/L7owDGbIHBhiqaii2qqcznzeQSun6wlMClUzKGY5tSOeVCB3cOjk33awUxFqzH5227j2r3Yw
oRiR+4qC6vupq+orqj+bwv6o3mbGX1TZ4KUAPkv/YSws7ejXDSG6h9CPSnIQONrFzqQ+rnHraYS4
zfsa3pqJjTZSHMhaXNzNes3DlQBiaGesc9cEZOLXv88otSRFGQEoHU6Y7qQx7++fdhWg3GkODyeQ
aletvuGvq+nwNpUpnh2VuxhDExmHrVCfOR1flmQTn4uuvL7fbzoEOMW5nw8dzFDh3hYcmfT6NyPX
el++beDsU0yjiD1CBfazOaCwxbS+rQ+Mrs6QScpXMlkZRP4jl9QBEnwyT2NlaiUJWkdDlG0PT/t2
RMGA0X+e1hBXgvIDHYPH/l8uDPOjsHZztT8ZfXqLA/AQTMFAMOUFKigiUuyw+yNZBeNtdOsC5wcG
akMBG00Jp/uDkBhrYGoHYZsEyLLHaA1IeQJA6OFGxmfdztfxyMjuYcoAD8N0ds9mO2xD30RY2K4X
vJan8r2SQG+NVHonmhXT4BombUenOBtpDsVQ8ALH+c2Hu1N1c16aA8kzhNv2o9+NKj7RZE5+1+ac
giyfzYsj+yQ+NVfLu9SVbWzlhzRUPsTFs3TafwPcYhmRawKKpD/bPfQEMx7O7zVBuj0uv2iLKtIi
1agmLa3g6GTStIeRyT4ynfcnC/qda3le8PLzHz2zq6V+T8eD4KL5E2O6JLRVt83XzYdg8ZK9NH86
HsmAqwSSA4mJGRYxB2GFzFcH4rzdUC9ppq4FOUibytBfBsmn5WfuXwFF3lBXN0WLyE1E/l0KRb8Q
FSzM08aL1cfyFmR5+jhi/OyY9QalsrhLXcwJyIDSN+OSWEioItun5DDX2IsL6Hq7wa6EgrR2h8O4
MqdOom0pzLZr2/1+sFqL9QMg+e0Px1S9djWudMEbIhDsOo0tLYst+1//ggVZ3CoXQmFexwQSkzL6
0t4kx0L8XZAiL5yQ8kCNKdlSKz5SCjXx3SiePws9Iv9bJiv/Evt0hUgYaiQs1Tihimx0Xc+F+GP0
3ChZPQYJ7inN9hm3eDHzkHtQEy/V1hUxxBkEeskO0fJkcB2n2q8cXC8frLD7xJYdJ94de5hF2yMC
ZOgseIj3Y+t8Nmhd6fh1TLPpe/iftXB0qrCe7nRiRrWkFc0zlnoW1rgG/HFbuyJD+VY+Ua6uiSs4
/W/PVbS0MPCh5WCyh8xw6oY3ULLuJBQTgKHjM/XO+paX0MuKtOcgZJN09fAWfuIIp8kWmEL6xdCI
P4wOQOu5bKOhELz6W9zOyEVA7K5Oe02DdKYHdtavoX8IrTG+goiohAMOiRarAw8s41vmL3BiToDp
WoG8UffuKJ4TTvWhl9V2axDUPPsEAReB7smfign/zK2jKqHtL2VXwVCJTp1P8FY8J6xgT3AC4a4X
lgAHd4prNQowIPUTzb/NziIUaNF/YcLmC+OFA8jjX3avyZP/IMsFMfSUSOuvBCCMZGTX8IVhBWaL
9wpvbWtuK3yiD5JQAoGjnsTGi5CJSrcDSDoM40QJSxKMzpQJUzXudnjbbbZXPY+wk6TNG/Uw0ODA
ABeUZW9n7dd3gPXe/YrQwtcTDRy6Be31aiZtAnuUHFQmr7MmDrdhQImuxEYHrzAT7Iac8ja68Coe
8FZEZLJMhMO9crCZSp/q4MUdPly4iNoqWGphFj3q3CQq2CTr3rFDv4766nmYB7isEcDMWB4u/Nrs
+l2pSR9IyTPcteCZr6miedW/htv1ZwS7MSunIg1HmCFU+o9QSRuuexYiIXRbRsqX7r6JmOcm2JlG
DNMjKcP+cw0GjQ5J4TJqKRjXDA42saZAsBgckJ0N+eVL7Ku+aYfTaia1a51BgsdGwPMp2WOOwcTQ
AmzmmC0EtgXhhZglnlCq+1koXMXZypGz7AZD7fhHxcX6VcuP8ETn6HmOcPnXetULZqxzN2Kb8TNf
AW+HHz8S4hDl/5Ap9N/34/lt5vwWUdAQED1IYVh+TXYnsnkDrFrtzJ1xD8EN5xqqS2RzLFNBeDzs
EUKrGu+GRL2G9i076rB7Nd32b5VnzbVSkEyF+aF+5Eno5hZpc8HQsg6goO8illvh55xi6r/0eAX/
2Np5AjcQq2JIu70qaKEqWLFDFM4aYJb0FsdEtWbgMqF0sjF0KSGQnJitqfAIv47uML1tkHoAp6wL
TEf+YisrqOqhli/rJdKwQJgYVQJJxOPmoG8KlgC8E97Pl8b9krj3WrzuH6QA67jd5lrSZjd/coin
+Zwr3l7KD+Dkqj0zV0L6g/gydS6nQdjKOywWOy0scAlqd+7PbrRTXKwe2pmn8tL2/KUYpvouWl6u
zTNUqI6Z5r9fL7D2NyYYA73jnAFuUuwo6zC0JBjnFsVDSEEZoKofRRUfowKNOGomalb3fNBeRLWo
Z6vKg/bIXrVUOtVARneiAWpput+iZx0AEaF1PAKAWClcbLb5MRJV0YTmd0OiUyPELivYEhIwrb+5
iO34ojDlJVwQnjE59RPfxmpLAOTfL9mpWhz5n9KuD+hRWI/gxHhYkP4izg0x8zQNkMt9YwMl7nFX
RrQFbN4ulRcNScnJnegFaMG6NLx3EW4uCO4HWmPPllGZpn06r96F9mJFqiFo+kZ1CX+9gIemaES7
t/ViXhajWmDT+qoe2wpA5rjuNMUyyOJdroPVnFfkRCT6UvYdFIF+HN+pYj3lNb1rLJ+BLNQRGR6p
3Jlw9gJRoKMheht4Xtrsply3HySIEej+VsGhfEfYaPotR+I5a88LyK2SN5oQENJSGhU+fzBJPxAn
CWTWKwhr+5v9Xr9M/N1ljGENqxmr1lR27Qgdnr74ms/vNQ+n/yJfVw/slx47esW/UAvYcM87Eb1J
9Fcx8YFK0y2P2vRpJMZmYhy33i3taVSu1koFn4SLbpzSvyTQJbpZX578O06RHOuj1bKOYhQyLORS
3wPz1KkjGfcqUIGBIM9SIsMGbRlgshXl2hZF/6QCH4ZbOawvqh0eUTeAnLXXlUaG0+RwSI6IkAXl
VwZAdt19FbiXpP1g6OFuOK2z59p/lxZtlLvfTD3bOobmW5x5Fo9drINR9+P9oeUOyLx9joVrjyof
AC3ZV6cYIMp8WKA1FcO65Oyg+VkUx3yHTDrowpYhNTLZ8hQmql3FOLpeEN4rnnrRI0ZkalOXz1hu
AYjP4R9K27mdA5GHJ7GC+Q2ATpmIkVAvKs6dr2iv+WiP/ItBK+kpwpy1Sy/28yhYq27MpCsx5zxk
Pxyynpwae8GcfD6VdQCOYYg1HMPZ1GzRSDmEP1mTxdOZ/0F5bHn7xSYGzYIE42/NYgzOGois1F5x
NwsE24EQG++48yAK9HZniHeRosDDCZgLNhbu9/qcAGHZBfLh83IznKt/iOrIsT3D92URTbiAW2Z7
i/BhRWHW/KB+yJd7QQ+hudlVc2VPYXvmUlBQSoYQIqylgQrZVwLR9TyDUUW57h97jqiBr1fXTXUt
iB4rTBXfpjpLq+wshC/lEv3xnm0LlmOZ+9ubO4MmvtmiB3wrMBLybadtl8W0duAcXhSRin5ByuWX
6CxcaTR7I0cC8ALN4HkabE3fZDyTtcaMw3mhDvoYK74nGiZ/Kwyjw0ePm100ru5hJ5IVGxw4YLU6
TkBN1qpGUazAQeddLsdLW3nLW/dCkMnonkREnPg4aIuWmPqIn55irJpyN2bKgJeJictHLxqkFWRP
thwdPadTV0z0dKzpSTWF3f0EPsPS59eVkcBwL/rBXS/Y47cdV84ZrhT97NN6Q6wSi8j7CZpLT6rF
j6WXYe8EgY4/XUDsi0N5b/9X7M+q0P1jO7IBiMMRp/UXhbyFb9IAr8AxGBcuplEcuFzIoRpmxcGX
pqCkYV/2VJk4253cTwYhV4c35TvjoI1u/YFwBK1cZfLafldJ5Uw7tIftvgk5HeppKwjftO+57YWG
B8KmocrP0UrDdVofRmYEZ4OBfc/pUb77BPdiLdREiULL3EIoMhpoHP6hNTDjSXyChikZ1gM2IIMp
dv2LrOj+ciogCBesI3QPLhTUv4dOlv6ZJNNdkDbKRuoXySinS5EUlhgiQwu1a/PM0k4bxfJEiVz0
2lyqKQjPj1cWU4FqEnXumZ2jc1kKox4ee0UJolCEfyZLurTr9g3Aw9SIiWa+YM67tu0brd8tfQBJ
QKBOELJwWf2DUYF4tngzg/lNSYifFT8l3yXIyYscj43o58QslPBNtHq4kZB33ZTt/4EqrossDWLh
XdCoGZ2tCpJJTmTdOEc5vYbrN+a2P3w2c6eJUAeD+vZeYAbXT7//hrF0hfcjD9SacAri5Y9/p/RJ
afh4/Y33mUZtB/VAcc+JEwWIRfKOdvwwijb1dGe7lCzniCsc0r499dfVgfSa7LkkVg13JlLn39dV
biq41NIcQBrpn/d0wYgp7/d8ODDQWmORf6JvI0zPllrVh6RxAuPHdO9TrTlHaIY3iDZZOaqYkaxa
er2sZC5iMFTasLLlKrbnoYvo3KwShQih/KEjzYDacmdDLpz2XPOqMFtduySkByyqFPv2iWC/wxws
5RFSzUQDp4EkKuxgTbryf4wbdNj3Rti3Ys9a1vJof2cGWHv/of44yZWxkBcLHs3wfjghswvaWhNc
jhO7WdbN1/EKGwM/px/2EFIkyZHSgsvRTvAmSv/IV5+EOypfzbDwpoDKQzBWcHkY8Li1IyEF66B4
JvB29fcU6mrObyQXj44AA6nYmvdX2LIaTM6SOoqXh3BJXDpiEV+Cl0rEEtE/Iv2Ht/zBDTVafOmB
dbGadipzU/GHF92Ix8EcWoUv7+fkJnj4Lm17ELj/8D2y3w8aA/2UXwYArTXI9KH+oeevNcibifcO
uIqbIi4BwfgX9Ho6VoR6ekQiQFbRHQIHBza/YqLCNytKwSpVXFYBsaB/ilbsltiwrow2Xb/AGc23
8jrWQXBQ9TQRGc/gNR8OzbQ6qliNygmHgTFX08qL3EudFExvSfcxeAuzfW9eaMjKlh5JO+gfrUPd
ZMazBppQAJuZBeEdKvpfwDIqnZwwl4syTBXx6rlJUCq3VzzBlAgQupCFj9/u6sC/lk7OQm7pBFgv
6HezrWaTAhD8Ra5WcfwcddbtwyId7TycATYPaW/Xir+zqrJsViQrYj3saSrR1eseKUoud7bAyHuu
MConfKDP/h0Hidn1u/3hu+VoeHG+XYVnnsckYXCrLVinh6EvGV78B1H6BKONy3zTLRaSDHoDKxtu
dc3FABfeLB4+AB8yUyVQR28FPte6kxCOfWe/+kAGlnQ3lVPkBNh4hAivkWZ6M/YXb1ISGPsZkrbs
jXylAzqcL9VHFDOt6jaC+iV6On0z2RUwv3MRrdKzudCHaS57tzHeRCE12Yd0EgNJlS/WurTFBppt
KNtDAkM5kxHecTrFwS39vJvXkUCh0hKHfeio6uZABgIn8QiW3/Adcga8Dg8VffhximApCpBNdVbd
1hueI4vj8gJ4LWxJWwWGQc9dUDZw+xa+2kpM7SH5Af6+exFXbr/uc+8L0XVW03COq3rg8LxBh7S2
cIkK3f67k4DNEfJiGkaboQQBEiU8yGHxod1kk/DNEOzpi9OgLyzOPtwWnNGttOT985qirm8Vw5nX
4PWLRzifvroqUf+FcZcYnhLW5cgPWcvf2xkXTUQlWXchQObPbzXlAp67Jvp7dITCVuq+TCuMDflm
iQCrFWt8ps5caJmg4fcqFX7XJsJzZ4pICj/DHWNZHrjgAcaWtlHQQFesVY0jKNlNURrqB/sIJR8J
u1c7af4f7fS8bcwR5fC987RYKYY6ma/z6uwc0MQeHoRQylM2EdNpW5oxG400xA5NaQ1hatAdLrEM
HHCh7fvtV50dCcV0Ha+jT6RBditm83SwvYPs055xGIxOJRHf70mm97M8swNXswooGUsBFLwf2+SG
LjDUmwI7DQiYMyALCwABHofHKdQSoHxcFGb7pIwThamCX6cJSLUKnrXaGSGK4KrSzvS5U/PQLQDX
0qwDRX9pufQkEPDDa+8gESoeOTyNEhV9Je+eRI9bDOIn7WIz1rPX199zhN5cnE7NohJSkRA3gc79
jB+9WfwHjgrIDNDJE4/aNp+mlElRxdTd8OYirqyQgNUSZ2Mh1Pzpu6W6qNNNTmxYJmFem/5vtd2B
rBAX13dox015jDuhxQbbS7qAY1IKuODmy5tWJtAuMoVghM1LexVzybO3eLhQTY15sRIg+f9UaZIe
uG532Vo7LqOc1fLkGdNfnvVW98NaXPzTKZIpwU0VT7bz/zK4IuhEczVIx1nemnMqSZumaG3wzOdD
IJnfnlDb/0OHtaLKs/KDiUL9nnfBy2KL/P7Gtmu3y9nleu+bRle1DaM1DX5QtD0Yyzl6ulSlwgLH
TJgqckAAc6xcwzNm/dKEWlxIu4N5SFblwP5JnigS/ZGM3kc/XTt7MiBu6c5PdfCQc7/K8jaw/XHx
5yszUwNVWo1IENYU7QuyWWLUuTfXHOpK5g/Do4s3YwI70yQourYnZ/FZnAJMyysDtO5s5cVMkOVU
k8dfF6Ls1je9GzEkAZO0to4QcPUMnae3N0txF5w6l6ZvD6eSgHWewVEdhRMZwH4OVu/ZbtVueXv1
TE4Nceige6ton1ZNH63RL1RQhLdquN37d6xMDH6e63KHlDW0LT0QGLrXWpcGNgBDy/AkKV2ym8mR
Te0ikWlO5M+e3p7aXVLZuEXfVkWIwEsm4EVlBjMGtmAJecKTSHG4Haki92TR4ZBh2izOwXesr2Kc
glsqhP1L1AYHzpkbwNu88yPJmD82WVnq0sPddcrKIFDc5tYtASNSysNnJPOJjEFtmBvv1IDwyONq
fLLkyxu9UFpBo7JzMMDFePsZ3LIzOCvyG+oYjySUX57hcWDJb6vAPaMXX3zk5SWHs7rHynUSoQkT
FF1EzOHDgBoFwVgYHdLdvx7gFHs/wNX2uNJu7YoZrY3b7d9MGZKSjxiubnj/W0SUj69f+bvKghGM
vZMWt7ceVU5dgBRLY1HDCdA73gA/mIn0FS13KO+kXtaEiJAWf+aeVY50bpROKgRIhAXr26A9a+A0
aJ10ezibJFuEawWyiCBQLrBOQUGhvGRvYcCq8d3CpoO2XE2/Bujp//AEzgeLLqTRkQLhlFVtzeId
P5JFnrUiTUo7Z8CBjGPu2vKv5VZmzgA7z9TSrPB7Tw0CKL9o0yKBp4VutgQiPExffP5RsGJXFNu1
yZi+tfKeyF1AdFxDt12LsGhKflyKqF3CFL7ZJHUJwxb3en9ebcdjT6eqXC9Nuxyd8+kMwJNHUwid
0IelELAAVUmCDHoUON2XaZESRhM+IEchbDajwD6fgVcAppVzM5phYs8wwcbLH085jttzWLjOQGW6
g8yp3vIGqjzKYgs2yjWVwhpEOKwWYsUEWV1BP1GmriXp2+TeBSPyyoJxPk9px3p2O/wNadgYWCDW
audilm19nIMOtGggWAdGb6K0alTlp14P3gK59Lk916jYnFQGBzwKKuH2ox95teSthbG9KqNXNNW2
7rdYklWdel1fwsOYxsu+Z8SjmbzBTGyzrJ3RiTzLQJGOj1jpYxFa8vTKg0x35/Es8J90DyKs75hj
Q5zwv4BniowmusgpnDg//gU2cnXQL47FozsmzkK6ox9/LRJt5zLFYV185O0ssDFdAF5jA3hR/VYv
OVSzFlFmDXUC7FaEelrDqcXWKnKcILTQ8XZowqQ1eKPx9uPO/7TxXc0B4EI+vBCs0+DKbTIdfA0Z
h8srgR0XAIqbf2ahQPvei5LEl7gMcqJjB4+qPV+vJOV1rySxuC3/1KmA6jt2htY3TAU8HG+GLPkq
lUBvYQRMRtv4pqufbUZo6jWAKBXRTgQF6VpP6WQLnRol34BnCrNecoe30iX2+fUvoMXpBscxd97P
Y0btxjsJZqFAydJAJ38Nu/1bRJvtJzf7ofu7bNAnhtt+OoXEjtuw1nYwkBf0ksBgwANnn05DrOND
yadUmpVkLeWytu8ukKhSN0yFljW9ERK3TXlTHKBKOxssYZfm+WJKAeGNcgfJLEvlc3oOGxRF8AUY
vIpTTxqQdqoQcWMOxoSqJOuoAHQZX/hN0VXitSBS0dBdOOaT/EZQdCju4G461LCPOchTgN0eue02
DnLCYhqoaP97G3aKsYvtwdWldub9HdzAiH7bAFuaH7oh4ilN+gIDTMuLDBaBqHG3FfEdaqv10P1q
5P6EQulaD29WQJ0Z0PiJ++jk0rrcT+WUFRKf3sdV9p4VgX0DxlqunJchNXQhsC6O2P0xLZ6gtR/l
oNIx93kC+9lpWkirQnnxV0KhVudQeQ2EGwxKWCNRP36FFxOJYWLei+Ut2+iaaFaVRjH/JuIMLi6J
9BKn3Vk1/uVZO/NwGvuKAZzOBpwfITHU1wOJjdY0/Sioc+MNtachO9u/4gIZ/ktu5gq85eJSSrSm
CqODXgIZN/YRAEiK0J7CiY1ya1j10wXMTmpYTBA0j68lqmj2L1yMjenliBE9w3o1nCDrx4FO3Sd8
+5+wtt16861ScNTwZjShmyXfPsdj/w+fZUOuokqwC5w6o2pOLZBsIGQJkziEc2cMriVdz2fKKyFH
5dA4UPJbyBNqsLpIjLqQ9CS/Phbra1KlGzl9Lcete3JZsyVleprYi/0G4Wa1T/Bhd6JxQNirjVo5
Iu2LRTvozRVS1oWMZnbX3BP91elZTpgzOINxW3hKvxGoYm5GxSoW8tzEwdsDOk58iOxxLgBvqrl2
GWLn1kqKTm76PbkqCd/YtkaKSWil2YIxSXAiuwvxdpk+9tju9mAq9gZmQ28uwacP07XdU2irlHr/
RKBSBiiFSc0as2h7MjYugVeyera9WCKWTg8A7Whbbjs1UKOhJ6o633wNiZzG4Zs97VJb8uVJTNiD
nozoPd934vMAp2LCYYRlQ5Up6ZXoLyVVsu1gDF3pF1Q1l8FbQ0ZqsULOOcQtderC72fyl+kbzA6L
eFHYPC/YoigE8m+6x1XPsS+oiSpl/lsHSAB6WzbCOeK7kaituwL+beoK1hpMyX+yuhJ4An7V4D81
QnkJsE+3yrwTiW4KL+QF3/3DilXEntDxzut1aM6NVA7Ub/ez8kl8qeWbLP1c9glFkqFWpSSm8yRh
OTyv5JzqHDwYrtPBWbr/bC5wU505TzlH8kMV+2u/twPhJdXWa9J+YuTasFQaBy/05bcITPqtkl2v
8Vq3XH78zhVqpdtysgD6ilyysWnKLxoapjaWupSfsWivs81zXC9Hyd+gOb16W4LjvTkK0GnGqPyz
/MqxPeuYqcgNcE1UhGSt1GE1e14Hn/Rg+De/vsunsAiT/ZLf1Vw4oCqohH86x6j6yX65RLFd9zij
7Y7Qos/aOnHHZx8zXaJ7JCFezgiAh2J4gYVBFdrp+ZTETPX0ayVEJVeMpyb5Urgu3cdY7XuBpc2k
TWtOxspxE/vyXK881BQvsyb2ZTkb5201kg2tdsguEccbiAsoYaPoRLdka09i3tB4f+3E1kA2x88w
MUxY3gjHHnwnIwxSKt9w/3Uvwi7HUwZNmlJmqx84z7oYg5K/rEHhVd1J9+QUrqdemIy4EA37e8Wj
6t3B3OeezV6DqEDio/Eg5Ysp8LnDJ8AE7j1H18YMzcKk4fNXNgzN364yRoRbl3WMRYInHux71L4J
ixD5FfjplzYeJtMRj4KOPT0cp5JRf0Y5H9Z4Ip1fmkMc6GS61+gDkRixz9imrnuc7P3GjMur2F5R
52+NN96npdv5oJnVnDAbpea6kXpEcnuWTdRfadrpcCj2I/okBpPKxWO9siPkpRGftE6T+bJu6/Qo
tcMWRu3psIpaCh2eRxTUrHncj+G5pl3nBkTh+1lx1JNefIuyzFGVSCbGC9wudbKjwfj0MAkRhVv/
OuJoVWGJQ3EetCC9XD9HeMf8PGLMBOS1jaTAj6nAURXTGV75DOUHz7aPmPudZH5khw3gizSqkP/t
qItaUSprqWtM5y5VDLPgy4vRDo9mKm+x8dNCnDpCN1uCre1UTxOFyEV7nLY+TpJU3XEfdEW/M6rh
sJ4atsSk0drkYYl3rGSD/A6MdWXJiS+XkCRtdPJMV0OYaC5D56A+OaUK/HZ4wcXkBan/KytOOYCD
usMrieS9MMpicSLOvdx7n/l20Clztk9G5FxGXpH6aJhkvu3DXpvT+W67vvTgK5KUuEiDsArpOME4
VKa62b3sDv3qaY62SxWzFbs1kaYO08cL8cjvKOZ6S3p69uo3rO4QS5fN6ABlYBO9mHFDM7ryX3Lo
0YEgsc4YM8y8T+H6HRzE17FmgirN+okmzj0LhJFUteDUNmh9EcZzuPk4d235+lG5TXSMfnT+5ZA9
Fl6FkEycvIkB9St4Y19Lm/2IiAmLgkkLf0JcnB45lQlg7WTTgY3qQn9rnL8652t0pPBdxO26rysJ
4TgtfVpUiTQJaDDH5sIawJtZshuMqAeUCGf3n9S4AKQttn+7RvmDIZDUFPHPKyIHExyNWjM8HEzJ
q80IMD6dBmg+0NrtdvAdMA7KRqsNu8VX57iz8EbvT4cjulVkqjnHOP+NmBEAodRk9VzOUdAvVcr0
huIcm9gDyOOJPCUrYAuXBF3c92mJowJcVaj7X4wyeXEQyRIoUmTDdw0IYcjiR2oHk0i/b+7kGKRX
uuRnXtybIVcE7BvSHpt9sbRIebK/1h/nfOX5JpS3ceQgA4aGkRu7iGnmTdm7oXKjLFm8PiRxitjt
0qQshM7qPhmD5YqROVox8bE0NHVs02y7aDexsuOw+BbgX72yG0dZUwCL5VRtarGxZJmqGl/OsQpp
ofmwwbrvih2FiUry6iO1yAnd3oJq7ngXphWKl4xjXLNjp0j8frC60KKebqc+w3FxpsxBOwZxC/9u
guz+1yTHZcMUge80STW9xpz0dLqckVLtyJmrpU7HgqkSOLzYpb/x7+UhL0ygJcOCm16uJ1zjSStW
EhBuwe9LjzOXdSeYw+c0pXqiH1DaGOGGDMHABxvo5DkqnqzsjBKEJGp+wPH8qF5naK/ghjg0I7rd
c+0a9QwJsavYRmCSdq5eNZzTUzt0LG2SUBs37t6y+10/6maslXnJiNfKxs5T8EqQC2k+Jn8ZFrDO
X0ok4GqsyyzzM79XD0coUo0kKfhaa5PkhcqCXv3tS2/AkeQ4JFOMiD1ZcH9BY98mfb/Ewp/ShfN9
cqgzlTgrIEWO2kopzTInnMwIqJP5EfKN1FXmKbZiT/ilmWhnOJae1o0XmBBssvy3VassDCzhpAQh
vqFiNqgjo1r4FjmNMnVQynT17nnfGy1koJQkWBN1xdxYzR78Lda3FXEvYorMNSNTjo/5Bin+JftQ
Jhzt+uanmNDxfbLeYurOHD/0A1VHLG+uKbA69WfYVqeKF6SQjyFKimH25nsM6INx2qwAyDWkpEgk
dXa+lU51baGypICpcwypwxsNDCCeJD/oDp3L14vcB85aUsFkLS0tTxwM/towcPpaSOZvJEZUjgv4
GYbuOCqliwosYB/0TauPu9K+c91X9EYmo7TQBj6BBNTlsmhuWT9l6HGQyzWk/aVR9ws9I4G/19NE
TXF7lvDPopBZkv5wSxTFtHpNT8uqVVSoxuGTfxfpyCN/raBPooWfUVV5+BQ+i4ZhS0JZFvtCFc1r
jGdRLEtZ6WBgNELfG5RNn0EyX06BAO9A5zz+o6M0TwTBHGe1ZmEYycMDQB+58TdsajVBQ2/qBQDC
ZpInmbiE343ZC/5Z0owkVudyEyfg0WHfxmGUcy08wNloCAowEbu4svVX6hivBO5xKtSG8GUFoZiS
LAVugM6iLarDVWvUT0Z55oBtSYvUtDYjC4iQpiKfEpS4jDLc7smiu1T3Cgnd9Jda2QSED2tiP3rw
dqaryLF5uQUdZbA9sVBz+nyw7PEYSlbq7R4Ndr5YfBUNX9dwP+u+kBtJvN4FW3Ne2ea3pb7rg/BK
nDF+uxRBo1Q1AeTdslvPwfAaFtXSmdIeTY5IBl95CrDMd1G2dR5yUMJj5FCOEX0Emq5rji6BHYf/
LYC+85B2AznkXAHh9ucAHTm2jPs6+RKotTjs4XLeezFb5+tl02HuYeW2WVdka42F3vaJoqnnPGEr
AClCTbMLWuW9nMDzxfb24c/0eTTSeG/KCX+1iKB9+eViGGc0ftN7vFJySCBrEfZgEWVWqunzLBSl
ySQKY0vUwuJUfJ/LeMJKNL7I6CP9klFuVYhOgp3ZY3jLUfC3FGO3g4LwMIoVM/io1IuQFjnNJ/8n
g0MSuA08CzxR+egjrgsg0UlpLf5iwLvtwUd1hZnEWNgrpxh5d1K2yTqB2qXgEst2y04h7LLOtN1Q
qZWoaleCm4YcEsSe+2enaqy8pDDr0TcNbyy0h1reo83Df8YC3HM+faBciGMDpxMh4wlYXLRNNe/i
OQzfdhwZ0C06oYLoq9JF7gB20EkDGvb6QFNSpanz++AgU861jivtgjEK6N7/QZKwmxCjOAxNyqk8
KyABQBvc2+U6xJY7EAgQJ9NGizHZmP72kpEHwAeOjrVoFEMw3U20ns5nEDZSeF0MvnCkWLZtAaTS
gx16NcNN7FDgsjELOjRlAmrtNsoSwDImaVu5uEhIoQnxyqoHfF2gqOwFny40ysE62ceBQAbUhslz
E15/6kj6GZfWAjmBwp4CGGQUkYXAwipJLN4IDQVhcGR9NsfBiNpQ0A2Ph8QkMrtUv4ejoIfdVYEM
PlgcxvULNbBZqpOpgtWJ87CzWDxp4wsrHYdBhPesa81AXRw3v3IzAhnWQB568TIbp16KzzbkALSv
hZV7UwxDBdOZmD6TkDSc0uvJWb+6NEV3N8m+zYwUc+dox+6qs32w0MHFqRpZeUm0LZtkKIjnjg9Y
5of4439juIPSuZCdABCoTlx7J0vvHM6FVBWRfbUT8LeK5eaU1htgA9wf1kup+nPOATkSARb41VRK
PVXw4/TCK66tVJZtar/qMic40oCll2hWFJOZ2x35NSYGCudIO/zxXPpIwGTMEzoStFKrnYmZ2KQX
X1PgKFXPSupyoCOIH6B3NIg8V6MgITnpnA5gqgIntM3G6eHxRMQe9gcL5pS00YSNKkYzPmROmDBq
a1iKEDOUIPSwLqIJkfFpunRn33Nose4IGmGTZDBIcfFYX3kzXu3IW8iEs4/XQr+FcX7WBLioAAMz
goiVIJzaTIxRwjEDQAEZidOJ7/MikqJ9Rul2Cd9lLHKeyMbO+uLJ08FRSkoVUgwuv1ORTUe+/whN
cfF74xErd8vWHHnI49XlbBbg0igaIl0aFjdhdUHXnwxNsHjjtf8xPzCDj3PHnNFostje2TXSV4wf
RELDw4GMcEG9hGM7DqySoy/pMGMh8VC9Nz8hB+B/rBAaMe2DaeeFH3U3KDAU/IASdwv0j3uWCZVp
Z5V0lhjaCdPUWbSsn70UbyoFcde7drQo6QdmU3KpVXVnbbGKIyjYZ5LO9hnM5+lPtGLJDUbIr0YC
Bz+moJOm2OkCH9AKiC5V9pwPtqFy1cLp+idpQf0ohQHAC1pzZY718SnkxXbbQVnH9iggMMhPCJqO
zsMXzJYT8yFeQtpHtBwGtgD8jhGZSjJwaCReCmPyj0tvuDFxM0bITTodH0XGjOwZ8ssh1ciVmEiD
bcRCtiiyTRjcDqPUqJl47CKJXvwhUbQ4Vf07Kvl7aY9Uf3bPxWD7G9y1rAOnY5UHJSjCvlvcnF9t
y6LdaXvhkRb3pfeBtJdxbF2zOdJMuaSvehomyZZtSw22acI91LPzmTpmYg/WnZ/FWU4Hw9U1sgHn
QhMenNowblicH9VGMpmSdU6wGkRQHJhi0CF/yi5t931sdy4SL3jn8LhGgM6B20kqsyjiWbdsxi7B
4/KTvaP4KY/H0dyZd3b8gAjwbB7p5P5KrzZrjZU5OQ+zhsmWQvLmIVqonJCS6eBQdLtaAQsWcqZo
fJILSoQUPTQTSW8WRLD6H66oHXXBxVBLQWRK0kHzjOAwL02rDoTQE50OnxIetbUg/qKh62AOE16Q
b17OdN3Bzr75E1Q52nZ1yUInuYwpamoziYuzvXjnLNJMOi0fZ5+/Gfl8RpUqVrPig8ex1BJelD4h
EK6XBa4DVkzVkbsVS3z8SLgjZwv3PNU0AYn7aMFvfAJ64V4+uZfu8Pl7T4q+2zZn8W3jOrPg1C1g
BFXVBltn9NTjGW7Q7QB65JoB7jzxnyHqKWPxfOXkqrG4Z4oCBynYvp6gsHBuSwZzzrIMC2ENGmD2
++oPOtYVDAfsSG0hVGqNOxzaq+5ivJIUSPYLcGVZtIFeCfhcFLGmhjKfptM5z/JF2Qjx8GDN6mJA
4rmGR9GU5b3NtnDj+32nANjllMQR+yAqvMGpYWCSIHIgGEgOUKDmjBh0tmBwCd+ZOWd0U+ulbt2b
lUbVLv7D8U2ocZlR6gkXTul6z2tvE+mk0pVCmueITrHJxeVrxbyLZaGB3sW8SLUggI45hjU48TbY
BKQVGxcvU2HfJXjLibCg5Yjjn0FjhM6aiuGxIjjB7MgNnpWcVerOoCPSbZplaF0RzeNHk6lbuMRD
DqZRFCHjnOq4XdA2ZjcdqffBbNPvXGj+XgOruIpsaAeDkQuezLOj32iMzuYGqYUaYPWuOS7+N/mv
6QyKiqv3AioBfHRoxlmAp2Uh9NPgrkv8v/L1KVIb7ixYQV4E+nPrxXns7JY2G5H9t+CWZn/MYssh
kyGA6anb+/ijuKDvhA14IM6IAil9/gQiIH8+fpDIYAQDt5BWaW40VLTsCI+6ZOqIQE5bqGz3VcLh
XEppAPQVayBoT5xmf4jEJruoJJmGUt52ClvmtFLV0Zbsw/ilbxPYyS+MUcfo+DK4YTClfdDrFBmL
QHFL/r4J0iQlJpVjZgVUNGc23tkCbuG3G9EnQga1M7f5VJsv9RNMsrSxINWN9QyZvTHc1gHSV8ZA
/uZQfNMuwlcrwAT0eF9IYHyK4AdRCtQvGMSmXQPras32QMacMtjxMce0dDieaEj1vWVqT+izF+aq
bQBJPg3HJau1ALbD06IStFFWfl1C2S2CcsXpK9pK9hpdylrBUNg56nNSNejitMiTinpBZpntaKvQ
JZAltPCh3xZJ7CikynV+xcol3tLJqp2lAGyBZmWPRteiMitulmvrhvz9H/ohwxse5/MrLRHhRhSB
/wDZcBleQAUqS8deU0qRgFfbb5Ek2scH7Mepj712UULEcD+D4U6co0MuE3OmlttrX2UAdPZj6T5U
tEmi/+eVbJnvo2+8g1m2DSOZfgUaxahFkNp6juWy4bSeLBu1LycH6yPtQi9aE4D8TZhXN1X8EhxO
bgukPI/iim0PYnqIKIpc/D6vaUT907zQvSuVyTzxQpkrT5eDO2rvARfovA+Atk1KFAfrgXTHn9dt
P53xerD0cyBHqaUrsBQr378T+vdAU6LrZy8GYpmDsYxXJJN+kd3VHkfVZNtONjni97EWPzUHbgnx
NjGGlKEI/ODV1MfvhKIJJRteqbGeVpZA7wIzeJPSCJ4ZsjYo0qe5I7nMDfcEstz2aIwQB2Tbdd8Y
Qn39HcsZvGYbfrcSuay7KJrO04YBJ15b77yUJ/UuZc2EUIsh5c6papJYxqGUOvhPm21QdJLfVV51
xAEK2ksOjxz2QmouZONVDizC8Pup31RT6zJbzgw01yOAaba44A5snEklWg+DXI1mp82y2WnILuaS
I+vhoZ9FwcbAl0JC6TYG/zCy1SiNxczuhuYmjofWSKAaFket3gI6Kiq02QB8X8JuKq16t4f1U8+e
F143CJX1o0yPJWMO9LxviNJo18TvYOctHEYXHA4cYjw+W4Ng3iIWlwMdyYWXw62TlKOre82u9/sv
mTzjRXMkv64qb8yoh1B/k535/EbphiQohmh4bddvZENRRzSv2ddUZTNg04+Cl0Et82z2MYbvBjLK
DHQL4vdYf2kQMDFpZFkZFaiLLWPwLjNaC3WmFiLCzlRiHq7ywky3T8/3Zos9mbNH/z3dLVIBDLTC
JrQBCZE1LNlRWORFmCtLQxkT300YdY6M+xf4blyewQTsXUGRDoAvAZ8Fvj0jgD0CsES/EW3FuAyl
iwBpGdGGuNsbhYkw5rtifiVgj/cTdxeDpPS6DBmQoiaYPCnGO9fqMXWjSjs/BXQPryeTuCuS8NzL
B9i3IQJ0W1JJLe1j7LWHOCcINpUjVAnok4hXdEu7AzIAhCsCQsvBN+ij9flRYsi/0xzll/JaqT4Z
1pRyEtbPMa8khbdGeiCgjm/A8RiifNehtL/F/9xEj2I2vB+sz5FcVeU4JVwXhSYZx+BGS0TzPd8G
5YgLAEDyO4VWmB2EQeuILAx+wtDnXJou8ZRKfV5bW50XPgcoeSQy1jWtxcJWfGJAxyOM9UdnZOPQ
FHdqa1KMD/Fle/r0/pmpS7mRwphAYZMT994+P6pYgC2HCAAJpl/qP/FXbiIC80L/YjHJnIFxoZLB
nFzHhnh1rDyPzSLiBi5iDdyZoClbPiYdObceFZnUGI0aXhX2mI0GptCKHpTILrVkeYKYE6cWTsZl
41hyE6VlMqYbxSu3lFxpShpB9AdEsMkE5dl3KNoDbWdqbkCxGGJ3ivOt6OW+xNXdJCUNxIyeDKQ+
c/duwbuesiQmGUWmHiiRabUho9V9JY2x++WRljfqDAlPwfBII6ZzhEsdfngS2mBqFIj86OKkByiV
Yk/YjiuJACnb1yXR5IUsY4WlvGouB/yJ1r4fB8qrcoiuGGoYqjn7t4qei/A1K1BtOa8dY8eSteRA
2yBipGjRSEpE183WC1H98KU6Z7PigLXJV1IHbQ/faPokR4kWGP+iW4neY/pfBFSa7VfiG1HNUBrW
1GpkBjBHFLz16V+Q84CIS38QcLgGAxP3uHShxeTDAk2UobTJrXtbtTXnYa6XmtGYLu/fqpouYAvi
4f7IsvvDmXnGJVJEXNQg6VstZjCSpxVIK5ow8qSwfC1NJff6tPIizzytjYLHMJWtF0h3EWtgyd6K
a0D9HqT1hfLdPwtuWxfkVeGAcG2lm/S8srFEpe68ScS/R46OdKlj0cvCkPnasjo9qk4WM0f8wOf/
nVrwZG3chCmaLUeMkEyHrHNfGhFckteJmSLVmAlpIJoraOGD/80/qPHac+Bm7wOFO1wHOSif1HzE
wdfhuoH0yYcb9kNSQ/Dwkf1ckIcG8ibNLLHUIznOR7aD+EnG2mOCHqDFHMou1pFmN7W9F/lVI9ml
Wv/qGJfACAagr3ahVo6bFzOb1qXNB+F0lHxvxAqDXgSAnB5BNDLtb+gERevDf56U1gJzs097EmtC
swcm+Qq+NtzWo4Jdlj1w1z1JaZQAl7/aPJosy4gloQy9LSqaAQIxaeCqqVxsFrQ9Y494jqQ1MBUq
Ftw9dNEwI3kCs1eFVtuGT9duqb60gSKg2IO8MAJpqy6zsAKBSi4azoeA0jGHJngFjGwh7DS/0pRP
G7b8fRcZ6ZR75AUH77m+G3fXSHfBkwqIpE52GJGfB3N3b8jSwIPCeZsP8trvNafDhkHV9RclIXXD
KmzS1aPZnKvGF137YOXHkZ08bLza2SUqGZePdcaL8yDSK5KPGEYDSbGpFDbYn9D06eob2p4qqnXo
rjkvnxzbADPZyS4Lw7Gv7FSCn3XRT8muF5kX3lXcsISUzxNsjUqz26ST+OYMi1mU1EM7DhtnZMNS
2H8EFWN/s2zvsXP8BSSnSMbDrDBtnO/1iaetkBmkJfD1SHrcCngvpmS3+3pP1fMnJfEw2We+jllj
mmmoV/0oNhMGAYRlriolUAszdPin0OtE4GZ8b7fttdS+XIwgRBmCBz4DkiDg6C2zEWrN68PsklV0
YC9a9hoUa4SfWTAF8cF8/gZF6o7AzSIZvI8s3Z5kypDQMo6UGuO/4Ttn9Gr0nCVDsMbuaWLBn/Lx
GiuF/Qei1BahLWSnl2DmTPonOGhr8JaTn8wDBx2LJvcLE2vxGqntykFB4y8CX2SSnrDRABbqq68g
nGgRdnLejFMoq4CErxdwekqkFuRAsuqVKrwofUllM6EV0eIKyMmYhdsTnBVUzenQ7gfdAYlOlne4
Ki2+6f5gXfOJSGz6/SGS+lkVCa7S0iaqc+Fcih5dQJqmKYxj+NEESZ/JucRqyv6CsE1cm2Q+VkHz
ljwAHm0xUop5Wts6IG6/rXFO98YrsGPMKEzcLtwtsDgLJoD9KSAEOTkOPDYmEqWTFAU7cbp/sElU
Jn2YzK+5xL8k0ktXmbwOfG4xfq4FcqPcvNp7475vik5mtbAAtbdB2+jQVJ4A0psXOumr0CtHYuXY
rP5X1EGXocm20GnYpFhSZ9TmANzuOuykghab7TKcoJpM78JRYO/ZbD555RIUgy/8e9fEnnAK6aQE
MMzftd+khOtES+W0jpYHEbQ2EeXUa85Y7mR9UhxH4aiqD/ejA3STNj2WA2i3SvC+h19GBvRqfzaK
DrP3QdMhTyZUyOI96jQLn7CE5v3izwuhIwDVpyRm5RWQUoJyQQWp1mQ/g2SPC26wB6pmdh0zTUVL
WYqqbnMCZE3LryBWUWqhHlpsFFvZgEZLSx2H414oCio+flTOe5OM5EqnwSf7E5E2IL0qolqIrrhO
t55U1YU5vMwaD0rkQud4bgJSDm6dWLy3+e7BzquPlMtAwYWfE9PVlwvQIZnSMUBwWI2DkitPsN8t
NrJu+2SkJpIal1kbBqVYhnKSj3G3XOL1Sn4LpLFBEF3W1MTZoUTvTa16WDXS6yD1J2RKKeaUNTGT
fp99WrcF3q3+mdBK9jaNc8nmKSswujTNGxP5NFU05g0V9ERuifZJWFXUpk4N5zW7ZX7MH/lvuO/n
NoSvu5pjVNKUsunppMKz5bRvYr6MTEiX00zg3KtFJ0Ha6mJQlaBURBRx/kRexUhYHm8QoGwYIzFB
SxWK4LQ3T6gKjOOwuzpvOFxTpvZ18bcbBHjwI1n5ewKPqSI+3oMRgpzAzYuSxPk3cugsuANCF+xQ
xeKnUL9sc40mlGog2zG31ipVyJrYhnr4FVYQyVtAvU253iftZARQTs6iXyh33+SjaC0MHY7rjzmK
GR3+PaMgtxQ2rBNdQMpjBcC7tr9oIMtvJwJyf37RLlp+mPaHEfVVxOiacI5N2ER8JijzqMAv3Q1x
BWx1YYprRrDC+CZWIICWB3psOwt+yojlVIww4BuT7D3PIFUN7YfdyKUPKf7Pn4nvu71Hv1035bCx
qmuKZsx6feGzSj8RDAqAUfaLBn+mw1ZaoWU3TSzkb7W5pIVDxvoixMGqtFqAax3CAg1KaD8cbfAr
R5fWE8ylgwGcF7r9lAbwMsCyu5mIdFpDF5j4feav2OuIBazP09Y9Z9xlymsWfGOLXci3Os8/fitV
vAcu58SIKdMwzvR7DMmbiaEJwGbbECdd5kR684aCG9EWoSuc0cKH5vP06NN2Au3T7hllmDq08NKE
IOj0fMAl06gvFjPalh7wYRWGyU1Ud+HFGzixtYqLDGwGoRZqJcFr8a/VJ4V+4iZzOiGMC8GRQRhE
Nf3AlpF5e4691Sb/kXhFlq6q25WJd6AtAc2qk/aztWHpHA9NGXD/iKssVTy27xdX6D+tLNy6Ul0Q
veRWXKGKPSAGi2mHsTctytMhdaEQS+BHBvuqsxLHiF4I5h7eu4ZhSk+yx1XsZNerZZR8UlrTGLCN
x2XI+2sIXjXr55zdtbefnsfgLQk17UGgcwpnGDROQq/WpXt+gzlgOabeZ89qNN5NHOAv1W4FwhfK
7EsOmOxBxomFzrtfwQHlRQFmiskfFkINgpsnnua/Bx65N/ctKkoWG9u/oAMg3cmFnRFe92sSuW9B
QyVYWWdY9ysAFz+FAOOS26ZazidPhwLxtMqJEzbiR2SwZeHHGSuVcsZMOcshSDm+c58X4cjpO6P9
nP3nQT2m+nTvNon8CVE9kCJgi23yyyb+Uhui7eRGUgtg8wBKYYEaVSlBHK3Pt6nVxL+uBTVzNyoE
CcYyAp+Kt2Cl/TzOZ11c8vuc6+H8+MEqi3R+SSJ5PLH6/EwNsdCwGiBRCuqGKSGMg/UIHgFE+rpt
nrZ7FEyt8/wjiBx1vuMw23SleKoLJvfGYx1zYGzHvMJMRk4bi7x/S/6EKueU3Q5zt1sC/b7SNScg
BmKIQ8WUALhqUOWLxvCBFZPEIF6TQIZlQoOEFhHGYeWsbesnPwI7Ll+MBhSOAAXGYYgv+eASqGZy
jtwh5bdAaOgIyRrJG9t/KbolX19tLIi35fKZiCu4Vhs1RVrE1xfF0I2Su2ZUGYzjJSIrIc3+LOnp
Gb7Ot9a8z+0inC8rHAsnHEXwKBclOMwEWvn9CnLxZNu2gMgwK2KyaVYrGWhoq6la1Hg1op4rr3n2
1lsTjMyrQMSUmReyAP9uXXO88zTCtpVC1R1YIlcUZMkNrSgG3ntO5F04bUycjb9j9ZkeFXMAcSxi
ENs8jPHw80owhJV4ttDM23UBVs3XbwtukKkVuJEFRhRxVJzPCK9/pTWP3vxY+yv/HeQVpvC1UMnS
dU5vaAZn0EXs0/tzhyVO3Ih7wDlLpu1d4VW0b3dyOAQJmDLX0796qHBkylnopIyYCu0wQPCGPDyV
1EMUKlgYzE2KMmbMdCwEivVYO7Mfm6YV2jLzbfFpP7NKYwsolqu2w8ikwbfYGEypf/U1k00nYyRt
8cY7n42u3VT96d3aJ/wqfOlxEwNOItmTAr6CfB+zgAgKst1EMNP8AaV/Xot4mNpvm37wOoL8mtNv
EE0PlLpNz0ne8NIQ2RBcMwA2L2y7y9voKhNqPs6vq9nicJeLFJIbZDTzJ55k3P/kUmkcaCMtjHOM
u+9VkalGPVtekwhGu0XHVwpbn0as8zS5H0Vr4pVa5SjnrzxUeGAyfXl4NZLBTnRbII9aBmi6qhes
4YierM1Sn9cFPnY8m57ZAeHhQDyYQkCoc+RUCZJxs7WWBAPc2/7rFqTNGzDhNu5gbkbcC6TCy5zR
/4JFil/76/xpFGEwTCLyrDGCIqrd4JkKSv11sEr9S8y3HPo6q3pO+XZyD8BEz+B65zDbOQphJG/K
Rw0T+anQmhpkcg9FNDf/xrXlOEuTegDg+0VtHNlmmQM9iRDUPfiEFeG0sS/+usBkHHaFPwkg6wZE
8fXLwN76H9xJdtugBw5IYIUYsQnn2NfPp2FflYK2+V2xVaSMS1b1sOsHKY9dvhKeAit8xPwWeyOv
hqslW/BYFiAcxmG9VkO9OHtvs+BbUiYJpDWddYjkw8KJeYHhfxrk2XSR00E/BhKFdE2oCMhaeBTf
XDRpnOV3+oYmMaPn2JgvSO/w7epntHT7pqy6wFVpqgML/G16+sbUjlvyhRksma6QuE8236vCHaoD
R0o/XGFfzvN7RMYXI3Xo61z7kdBHMQKXjjLneotSltmUQE1+kzZN71A7GWGnjKs7mlNNVwYALcPc
sg4uknncBx1AwANnvur+hCABY9JLVVOFok59tCz47YDQdCAilyNB4KMZlyIcvD32brvs0sr8MWk5
wuh8SmiPfX9ML+rNyq4ZM0JPXpuX0CWIW3YGz9Dq+2hKZ2JxkizDfjQp/qgj2mYUHORH2MwzAP6p
mivRkihiqapMDFPTuoa5EQX1baVjdmZImpge5BAQoMz0E6mIsDH5ggEnpcwkfOuVgZZu+XcvoXJo
T6hGi5hu2biF3CUFPt/OnvyeicVQvLkuY0btd3tqzfmbjHGVUOwXn2DNKOGrJyZky15vO0KKsW5D
v3426N+6pEP5eKZbK7O/KmQ4pg3qYkZYSxXSHY0nh0WtVzfyFK+kYTbR8wbNeTYsyn9lrRumpohD
ANsYAPVzkuC8MiHdRL0TEHtRthSWVCoVZOw35OqRE+DekvIb0RHrgXuu54ZmU+ItzQTZ/jiFulhT
zE7bEIQjH0O9g/aEGd7xNoL8pe41Kk1VtLWerui/Vc/u4hoBYC6QV0fVuWsnJSp/JDZSouEkMDx6
r5qho5bW0+ddN9cSLIoggKP+R+4MgkJ1qicG9inGlw0J9KTsO0vRpYljfbbLrNEyLqEUal033VRL
3JbugpNBRbPg6X/7Zb6GSP02WNQWEiErJHJ6gzEsk0luoZtRvhxYQ6hlY/VY2JbohyiB1PqjzKF9
0jbCgD7qkwtJB9yT5JolpwMAjrgUdXju8QuDJPrewFvZrtfpKLUk+9Mod4fV1eZ4Tdo828t/HWEZ
LlFlIqdj90ePqC8WC02XggcsWKdw7nQtHS1fPsXRVO83idJiFRQUV0LxFFx1IGlmSdNFKs5B+KeZ
FH9K5BgXhjBfZ+JAx5hj9Q6HvSL1mjW+IUhnid5kyOkIx3S2StrhPlYygVoT8mgSpr7OptDryvvm
Qrdh8himlWpcriwogNEi7CDVyFTy5KRnmqGt/hqHu+tvsxQwz/2/Q9Vj56AkUADFIs2Ejwv451fH
EDwSEuiDxpiTBIeKg/b7ZSu5OfQ3hLG1JLBZFuewtwa/nIhRYFneXVYGRCA40sp++d9q8GIDUXVO
CqQs8Dpk0CFRNSNGpqusiNHX0+E4dOJ3dN8E1IYoX/w8ySae3xSvChe9knhbvbBz3JavsIfoggFQ
sI4D2xWTjFS9oxMWST5xUHeYEtnXDJqbMMI4KBJF/RNDkZraT89F8iJLSoLZ2V1DOCtcx1S9I5WT
RI66FTqAhI4R9sNffeEJiASGFNw9gLoesxegR8TpgBRhHmizBReg5L2003B3ilXMY8yCoT4YMUMa
vhnw1+G3t8rr1SIzawqzHqYVZVE+9gv7bWrFo42cE56al/uHKu3DXS2iqp8bfU834e59v1/5W69K
qSqiWR+juE0R3tnx/coyQtYKhsxYqM1y3isHj130hnnPkDqePSC/XzYgH7Lazk9lO+YfwWQOyTxN
P5S/4Msr8CXUGy06elum6Y9ljK50j7N8+2d+0HiDUOVZRqko758cNsHDt3pGQk2S/IiMNzpDvU5F
ULfvglb7ck5uEjhzlarFv9cin7P6EMiMMdmDhFFzDgZ/WueDNKiWNprXEsL7FCKPB0oQ2/TnYGif
E8BrAPttAfffH6qNU/Uv4wWVZLj7aEmYlUiyXtOyzZIHRjcYeVfq1xJde/Wo9/2d8AXeCI9MNPom
bb9FMKSLNG6PnPmFkjJnHcZsdNeYxaDZhjO/9+4v4jtkH1R+frZnQMnQuZhuKwp0M1YptMuhuqJd
WJNrh5G7byDP1Rp84qi/fhtpfzjQe8ogjhfWqqGHQLFA7zJVOWE8MA2tOV0sDGYXGFrAt4Pw+Eau
FyykBgJTjJt+UwjNUEibe/D8zBZhKzOwZV+7Vc3n7q6qcGoFGVuaAf95kzxsZ6Cs5JFIl+6vTr94
exXhgAP8myOmMSQjVateLrB01u8+UIBIZB+XysK7LiEZMe9EhMj7M2ibI0bv9AYv9VJXMIwyoXqs
FKAddnRulcC4OHOdrIOUL7BHlamA1Mk/iU1ynEpQljxyRi5mc0Bzsv6a2MppBWhKlLBm3einKwDQ
qdK1sNnALgV4cplR+E5Qkz7yYBnLhM63k3mAorNrefkKw4Ruxnxj7pPn3fVx5C1ffBPhJ2oGZSI2
5KsRkStsyMeGS53/RBwjVM3K5QSzCDensGCVdCkeuTIf3/CDeToLxGwsvGSrDIZxYELCYlfpx+W4
Hysrj6ciT/Bezz9NWEZSLxzFhqh9MXpHtKOFap59GjSBazd5p7d7My81O1DMTegG4cZk64uKMRTC
VbNQTDLapCiiRE/jJxAtUATozIWxYbny3SBZ2YabbJRIQkFXbU/N2oJY3Sa68AsvtUQEAcAL35hj
JVj9v+NfW/jDHpmwm2F1u4BwNHJpsV2T5DfaU5gGaBduf0YGXgNDzNd69dJeV75gWfmYmJGnq+/D
ESSxPCAkrbaJjxoaj0H8ZBErHL0iqmiEsgz7EDwZwkzBKwp1BFqkpS6j66OAg+Q8tWyq2Vx6e38a
c9eKb4xoXD62yKoH5rqFVlsURtTMJVz/1EgYKTyoS2pxeF41dLk4Pr4T4YRAHNOZccCxnUfEuOtT
p/fQt17MJkLzOLjSqL8yZy6PJwiKGMR8d8SxxgtnFVKkj2TOD13V9cl3OmNn83gzlpvk/cBcFWMg
k8Zz9EiUg9+D6SQBiAMi9qE0ajmmURLSvb55ekHo86fWxlb7YfCOls83yeHMk++mlF344TuCXm67
FwTzGH2SH83B2vORek2xJqDv76uClV1ktiPfFQFP+11TajqA9B5vmDvHGWkARLK4fM7+d5XB40r9
4j2gDIjepUQHDEZTR+CyDmpzT7Cej//C2niuzRGOaE0oWUm6bHKntoaF6iR6YdcbyeBQ3SPu83zA
pnbSWnc00AvU5tn/4QCzjGXhSxuCyUq2yl3Hcv2TeCXFrSZGr9b9sZ6ZLPX8CKH4L4N0yNFgNd5w
jhz445WmwxMT4YqKWT6KI7GewdtW1PHuwOgitLcKf0+T+E6LIvrSW6+yn1JXt6hMLAfsI6hAvWf4
W+T0OdyzrGNG2VKCZHDG/tnMFHajN2bwaXicUOLDdo7fjOZnG7U/3+qX+Vx0CQ7gMsq048glfLx4
t4UPYZtvR41pahrxayC4EK/3uuPU1UzBpwuCgFumidOjg7RmPug9FRusCymVxk45xt+gpk+0K5cs
4PDpGdQ7kSXnizmxxhbWkPLggm6ac84Rr2K0Z3kgAtl5F2Y6MN7XTyiwiuKHoVb5XE/QkI6QBhix
1ybcoU+vxUIXKgi7caKAa9VtS7pOYh+gBsW/9os15Oa1NymScPFQzCo2U+tKgry9qPPWDBJgl2Y1
TIPMl1LZfq071kAOQ6VdIjT/a+L0Px83KAuWecoXTMixch0mhtU64BRvrv0W5jNNEwlcBdGXbG2X
DA8EHwG0jT/ar+c9C7XRW1BOrNrm1X3HN+rJ7EZZAQrG+OR2WSRRc/PiR7hQ/uO8s6fEjvL3Huhz
KtsHORdjebK8tl5lJo8yh6rip/EcMpIiZs7GC+5PRdhzkWG8XfjGbI0H2O7T+HW1RtiM68icX5ME
YNWOg/26qq7PgAxhGLjqirmT/tEWGB/exCtTVY48XttLfCMV0eKpzfbnsCFI/xnF++CspMBNIb8a
VPUae+6GoSVRLRFQQg09gfFJ+6QF2P39UjsbUe3hkeiSD8LF2OVe4CJBw3UZ/R1xynTRtxV4irZ7
lBpUpgz0Cn3IM7tYMefgP72WINDfsNRCjsZvbOc2PVJc/oij1gAbGzzmJ4Ajgm4I3NgGnLASpPuI
jhHpy46O2Y6FzIWjtqblpJ6MxwczN3A2KHBmbLDd9fjBzPUdQq78EgsSzQkUwJYntWDXVqX0aKgs
dA0Qy8ifwVAay8VmACT+1WMy+30yxH1Y3kPnsiPmbmPYIcrrrIwDwyVABuCDkwX72yDtlqbf4d4R
o9JJTT+JJARw2EPrkaXqFpjhE5YD363Q7+NLcLNqa5Mz7orhrj5TIGDw22qoLWeJKtE+V2LKNA2q
GebqMw25Zhcj41T+TZzu5JsLSs8rjxu6XR/uSxUXpFlSSk3qFPszN8UPFMdiaqrJXwGt1BjckaMx
LzHGHlJeAw7vfaJD1lFzvHyoyUHVTsHQ6La3yLdeAilK2fZwb757oKQDKXm3P3M434kOp+jXmYjm
+GxpMi3FS6l9e92eYJqYBxpEUzm6Zwq9FSAgoplFp1DwPBHJaNHULvZ0sUqBEjs+jMTo9Uv2bxI+
V9wCeyuq1N1YtZ6tbG20rk8TEP4IFieF4blOzc3bYmPPV9YatD84jT/s2CXN0+jBT7g+BdihSY66
6mKMEr9FUUY8uTHxLqFI54u+TqQDX8wkt5CjA6cQyc2ybNW3HA6g/sgajHsxXeTS69uE0/8FEMDx
VBKLoWOZ3sRqWmts2DzkZhJQCl2izMgEyPAp9UE+gBsddsP/e0r6CMKvZVAof+tFTLxcWlcJZ0BL
iJWKOKLqxwdVspZJ4i8/DWXp0MOsgFzdbC+Zx9+skzr3LVsAqMNS8IdAUxxYHL1X1mQq2NbQMRVa
b9Iw4SuPtY1u+u+SaDbFeMJMr0cg8aJ1KCVdGclw05A2ZhX6DPnQ00Q2hO7HDY9tE1X96Gc/l4JY
Bj0bC/Mrot3JRuKViUs/rqP1mVIFDkdeiwInnxX+le64g7SjkOWTCwjYwOEo1MQDnbkoKe7XcAmv
d5POgbluIwFU1cCRuB7Aats+t3HDNYACxqW6wRRhS176A+7B9rHkqsKwdCNrJOCoR8ge/pj6fYBS
bHeWDTYCNW/NIIBPpgAPUCyduOOvJ4r0bc3C0Ka5xxa/VsOAvuLvsnt3rjnKVCi8zt4OdphLF27N
KIl6Q+82IesBN/AbnFInkneb7Z/faX80Ym8kQ2x5iDAcj5KImye/6tVD9CIpyDpkpGKE7YuFoMJd
h7dPFVpvP68WUnNJPh0hh0A3vIV5IVDfje7HFr8VEyn8JQ7/vBgHJSOlzG1Eb6UcZhGFZSlN2XT3
V26iIyhlNN07khMOXfF2IcTXY3qy5UUASlP6ADihPx1U06XJfsp/axgtbi0rfpMtX+Pb26PaF2fQ
5ouLs8EBBBG9ykumoRzo8+Kz5dBye1lH1eAsaeziqdVNbbA0FCt8JIdyTbMYBUIpL6xwBvdakaTk
r6Qh+D+jroKw/ltjTaZpdCJ66+k0wutoLpS0vynadJI4GethrCSOmGuOd3SRPYrDIVRxyYUIle8m
M8KZLEMIrInRu8q4LXvm3z067QRvPQ6JALbaCoJw/qsKrDtfv9uYhv6XcNIDghsFNxFR7MhIrbd+
0k0bSJ7X02ZOkXHRJY0+94DwifvJxg5YxOPXhGW+PRp20LRYYvhUcxcx91iHRXBEYtGIlIF35YC3
VgJdnKBolLEcqEykEGo85/Lpm2xkTTwYoBPn8/WJD7OksfdxjQfoNVe5uojOGAwh3EVVcYfP0pd3
SZKhzGAoiiVQHXAba6hRjyzB1a1Kya6GdK0kQpmbhLBZYP73zAel4vRJBIWXTfHdbOlj5iMUlcnV
nbOARkmYSnUSVBKYDFIihXEbC1rU3a/o+mLNoMSEAlYXG8v/ngBxeT/4m5N2gHnOT1c2X5MAkafk
VlveVaNP5aDFz17Ft/me8t0nbOBEaRXoumbXjpCCnWj/JPE8wvI17QE+T5NTuoQddYx0mTcnt3++
+A4mf0mH2kWf9Xz3YaifVzF2tTm2Jja46TNSoqLn355PmjoaX2gIIko4dy9v/rSG/WFfZu4D2UqQ
YE2PeTAhGRpZsLHfaJ65hXw0GQCnqynqS/cwKuN3wmd9Ilw9maewWLULaKXWg7YF1vYWzXONZRDI
gn38r3cZaltprwhoqFGZoFLLSiVmVlCDGWGs+0FGULPGaZb6TKa4xCj9buLARAOOXHOLw0naoAk8
PN16kX05iG2gcP6NXUBjRxomsWAiG4hj2Tz6Fv2o6U3hwQSL/WrKaF+uqeAP7HT2j06IEiR/HuOU
1iIF6kuDJU5sUdUYKenubrxuBRlRfQzOKnp1Yvx00IBKToDtYmz6B293tSSo6sTl+cBd9y5m7ab2
lUG1+aiUhZPpj/+EhJ8zNKDCpoGv7gsGNUYguGtosv0nhBxFQEyFXyUNh93lXt9dhzt4L/qQpNw7
7np3luTfFM2ImtmUw/HdMJAbfi+Zar38pBRtIRUlc3GY+Do0fY6chPrOdBNyk3EXSgC/P9lr+mJN
7rA5ipcHvqJsOQgsiVlP6/U48V6rtZRdTHgt2rVpulCqmCcQKRH0F0da7u34128ypBd+c7T9ECF+
UBdSXDgbx3epLUCCV4nsG+Q4qD7wGZBmdV5teALGN3g04ZlBasVMvLUlBap0AZsdDOQS1/wxqA20
bYHEyKeAG4307zaXhagR4xDGY+0i2Sba0GSHEGpw7QIwpEUMd3se7GG62fDZO+HVs8Q44fppVWRi
ZfGiVZS2LORkZVhZ+2gxxJq1qMgte7/LjDdJSziPMroWoTHx148d59fDQ8AIqhh3UoFbsLA3R3uK
SyEthmCp4hLRfloY+Hfi22L6YkyrXPqBV4nQeo7CMwXG5AJs6URl8gXoaOSjWi9WbrPke4EgMQI0
KZEfpASgYbB0VnQ/A6c9kMj+ndKBJzmpbWkE2rIrhf0xRgnk2NMaa1yIV1aOLmRbhx+MsdF2sW+J
WG5VO8rEmtsGp3XebAQDEIodE/IYz1oa/XwUt/2gjztwt850pE9LQWsSrA5eAMtk65HugbzYAUw6
pSUo4upaqK2+pAPf5PMTp49z5owkxPW1c2EI3+yAzqu1zHSiRVko7Zirlw7obY57Skl82DRJx0EW
hCOOIcK2z0gEx4GtqrNy1j8+EkfF0NK+mVvu3dbIwOirqSCsEW+WPoYWtiHEVg1yM+K14DpNPeWF
VoinvwnWxcInA9sAdWXMif529MNAEytrSEmFiiK3w5t36X9XlaCcCclY4oC4EuvV/VnqjcUlJCpD
rK4vXyMBnHqOdHiZS6IB1Lv31uQONM+urzjrmj04H9PKE2DQzIw2yhnBX/FmTNCdM0WvyajaTa67
XNPRXb4WNFUHFcdGhJyYAwoyqb2c4La+3woVtTLw+KNti/doWuPSD7EOTmFbmQJghBXD2eN8EHbC
VpAaLspLhxZhc1yyNXIA0D400UmNLrIcBomHASakeSm+f6Lk/ppkRSiWGtV0mIY1Ht5G2w50VVNQ
AmkxXDYYf49OtoxqgLCT+VHlhpyXpSfyLXZlZ1Cr3Iv8urchD7gsLAYTAXivNduSUbToIH1j4gdj
47A1ur+yB+7nbXr3JE+jof30jA81XCvFXpA8gVWHV3iCzyauNX5LIvhGifvm1qz79FqxXBT6RAj2
dDraTubuu3VWJnIR+U8IRKPR/VuWGNcNBMyETejreTmtgLqfqT5/Al+hoKdKbOAM4Fvyq5i5Hyt+
yWjmthHfOiQvW8VqVpL5nzyS+lQr9LLw5rOHzjL0xExMtp2Xm7E3FXCPUSp1/mMek5gZitJNmA38
RmrwpSGIhb3XopGFyzgquwzz3+91lhlSIAYkhqc6nm+jN3d30mpg6weMfJNukkDoEhmT3PNmK5QD
T1cC6VFhriao+tenAREnRfgpzlOC+aGHsIirTDWId8+AOSrEXH03+bwrcy+N+wwWBdG8w01ej7n2
MXsqpUXTHUjqHSyCZHC1FNGL8dvzHYngeSVwq2z2oOjFGuCLAWmQ8oLw8eIXCr6DuaRF7h3n0mIb
RMn6i18HodlYkzOWZeY+kguYc0U64cUnTO/ObRo7jAe49tarMpQNYzdONdxPDUnqf21sg6OcDWa0
pmj7HSSKXCOI/zZp+taVr1R95LDDeAop4NHpH+0bThTB6/zBTMAncEQyPOS1GPeKCFJIhDyezZ5a
IqOzD1vQGkFb5DMu5N/q1bIG759V4O1E6gtb2iQ9PMxkanp3yRfUTvzGpx4Sl99MS8rjcSvr7y9t
0QigmVW7iNXXpcGaNF7Noy81JSyZP/hv4WgLfJ5zTtxAJRoZ0Fy7gs/gumHh4RheyKjyQ5i+qWzj
JQ8CO53OueG1+NDSUG48z2wS08CfinkoVyiOm9CmClwQdLci2i3ULYXzhpv4LSgnWycaS2r3is/x
6ruuWTaRe1bJKY5K9avknPH6BxNKG2pjRvU1kDI9EZRtPubKv3UYeGYPWS2sjZCLR8tBh+qbkLXa
XHtbjNQ6pB34Rew9YYEDkhAqlj+hCu/IqTdfT/1U5NPDqc2ysQzZnmLF+JuiB4dGBJxkmcqzeP+G
Dr1kIspmNKaa2XlShx0/o3EW9qwlHcQ6utgrBtXwzgNDNScgpvJHPER6X7MtPE5Z8uM/+GnzfObE
YmGNLzRe57yw7m3XKQ9poJuDFvQXf/vNMbYiBHrfMZmTQaYH3XugjTzfA7Bsnjf1SeY97sCPuOcI
iouzxaBEdHWB4NmPTvzHHE2r9Zu0v+NcM1OKRW69Oek0l4TRiEgwooQahBYb6nrDDAiAlpy6tnKC
+AJQgDaTsAaIbmQFubwSZVorDlULno+SbkJlHHFwsD/QafBytFZsiYawSitcCVhTdyxIDCoP+WZJ
Dnxd7yYdLYCkp/DaplRC/HZS2OTezJDPqFtF5dbaN93abu3WHrmMQDLP2UExvHYJnTnPGTxyXBwu
+KoH8iEeALeEhdsy7ZdIq6+yfksTjnpgxzTKfOJhjUV15qxLtYsnEFdg444Gqlqulp0WYpISeD+i
+XAbR0wHNt0mxT5CrAhsq9SIK21fMozSpAAfc2MawUZdMA4njJF8Pa7v/wuCCYF1fu6qkjcBo//Y
VQDmEGIUsaBzAO9SA1UilQzzZLfngSTz8UTYPNawDd/ogwx4KrYRwju013eOQT1T0+uWO63jAYCm
H3jHGKq8rZqhV3S2LcvaWQlwJ9ZAlELTj4NoY5s9cRK43JH8+JSHn9yfwU8eswTJIb2d45cHbeBT
FrmBpL7FQPqAmyKcwjxdQdIkD5YgJYXM+nZOi8GNz+dckbsUkoNEBuZFSInHTTEtBMMb6okTFjfl
Axwlj/CvOTods1uW57KDtzVI9Q5HwbH3zEOvYkhdLHUH4pCVIAP6icWFp8x4YxK5+dWOmHcMkqyn
yTNa7DPaNcUk0fM2kWEIUmNR5inIBlleeCSotiUSA09kwuDmBt/OtFaKIKMF36lwfEvNJtmU/45D
5e14W8CvK7Bn/xK9sUp0rld0IzYnRyCPOIWSnstTg0A3wQIrveR87kUyECc+27Hzkz8FjUnBhufA
ZnLE6eNANDIgkEBo66lad2GqSCbLyAIENWkgETQ8CndJEkwMDDIRsw4uEeeVCFzlS5j2PPIZL5Cx
admrc3BbksxsuHZFJKdxp4R3Sm7PWrPY0F4GNdKpyTcWCMoD8fDGNvYp6pdmeMimP00sDDD5JqCh
VQ3++jKade/KwWROukoC8t2c5//yTflRMetqL//qxt095P9zRJZMtPm4s/YUWT6RQNk49YiT3WnC
jH/nUgxwjp4hvSdRhboY0AYhsOCuJtqAvfdWdmQe/BWUYexkBx+2gakQ3O2lpvV6zj6DL4Ck5n9L
2SLNO3mEByafsJ/vcA8fN53iO/7ISjbFM5fswL0xJ/YqNEkuk5LOifwIO7GTYbD/YhtNl1x59n3E
PCXXkfmORk9i8trUuR9c0OvG0RNMz1cZ71aUuegoulsd8Y6eeEbTFsoTGIoksxC4zc1X68yeZls8
TC/sT5ZeO0Cc9b26b5YsVUheLG4R75zESC0VJM7kBloteD13+b6Qx3Hz49gG3948+PwoRnRU2/xe
36BEgPGO+ubW+8n2L6SYUfn3goKLqwsOkJJANebyDzFPpZlFwBDEt7ADnYz1KSE8TEQW2kdEGfjJ
UvN2+f0g3f6h2IfQ5H/OCMSrDF4aAYEpTSDiCIUXePbSy4XK2Vs4Eu3JTANx3f/TPmn7QTb+BoBe
MOHeKPDbS+06rL8F2aez9jorIl6pjFCRc1zBXHdikzY2v83nnswKB+1gub/tpVFRcIoBmUG4S2SF
M+tdNaluxpUVWgsbfLsTazbWmVgt481643SO9rBL8toJEmfgZf3dF5TXgE9pqWFa2vDJj3Dlnl6k
T72Sfzo3MkBOK8V6BbaE58HYDgGk+QpiYLBGCV2jaZrgnf93N15WpmrAiQISVcFA+Eg94YxnNbC8
X4XK9EBI4t7GZeRx2m5o0AVCkHzusm8AbyGD04pozO9dw6+Tgm6QIjRZsFcJw/FRIUxwGlDLhrjV
PV5RLLqa82Z9hOwIEbe+9cqmT0YKJ1qmNnZZeybrwuR8KaYGVlVmLxE/2YwHd8FcHEyiJ1vcdEDe
H7Ty+2dgquWvl/Lz7SWsej2gSDs3MV6jZMNyklFdzXtB8tga9l3fgn6beU6vZGbTVFmKAewvYGAo
p45TAGYwOGF8dUF1Y5wISmIKaLSJ1/PSUdin0UZYU+cSjUkJtCtIwYPS6VMCkQ+cAvs6tEXcncdo
XLo+cD4fl8XgJ1setMX+eL/7OF0e0oRYrt9snARuHuGuCSFqb5AOHoF9+BLFIshX1JeZGA/Dwgik
dnWIL6lwY1f5upZrOOVJalgaEwr5Yl0Hj7XX9fC7oyfAYCLydQ9WB2/O/a0xjrRfxpvkY64F6Itg
tz9SGrWWeRf3vDw7mLiQU3NPOJTpQJniWFTvphehELHRRDFdXiuy032xilrqS3dfR8kDhH8iJmrp
s2pQzt1jjTj0/YvAYdDs6BOYD8GFPI0AO5h7kMYvWJjMtXGHCY4gI7syDDVQmSjNon5stc2mXNx7
h9U2teJ7U3YZ01sMG0/Ma2xohGWv1k8PFhoWPII5pZ4a2Jc3OB/UnECYy+iajQrtUd7HIzWwo731
MvBc5Bh3ZS8cxecQpvqrDJitoTlTqPiqDdlEVwPsFIVXXd0fD4G6zrbtM6UX+OOVLA1ktfuKfizY
8EDV4PSluv98Dmxo6hyzNXJGup7WSKRhAyPUgD5EAFo4bM/EaxVD7TJsdGmk+Pd6T7hiKvIsq4kt
9pm9N2HhThFH8wioaIyyLkOwvq3UlwgUidGdMhRJc9hlRgqe/U+mpYAI3ige/LZacGG/eNql3qul
UHepNDkhHZQtYkhi8Ud/poIjawTuPg0KhaUAlDvz4oXJnnM5wngCWStOKBbDqDPxlBtXeJmSdiEW
M38YhprM2DMnJvXpJ3dZncQgtEzuZhHA8v+HB32Nwc+tqB+DvlKrn2PswQURnA0p/ildkNREFnzW
69sSpLZbHK1UtKDL49+WMsxd0shmLmh1vgCalKGvhD7velEacXfRejGqt6xjoHygwTXkM+auWbJC
b8mWZQN+zQLWNdtmxTZcG25uqX0f8g/98c7QivvhuvcEFCkxGhd71dyZI0BYORBO3DbfxCYSJsnH
Q2nzOizxKQxuVFfjbbhKvz2FI9m/o7L7Jbmg0NVf9L1eQPDA7PB3Jvoi/RnIvm6lPEbQAcXA+rb9
p2AbWfiCR5nY8ER/4E76mOP3fQ2DdIPwVB9So2Vw+yC5kXo3CzaGe6BjMXtgXPxO1w3I+1ScyH1V
DvKU/h288Od3k7ngLR7VTahLhc3xzRbbPPzKmveVLLaVGO8bQ6oYwbUWOhHN+bsEjQBXseqE7d4w
b6bJYbJRIyVHOUY8MOzX6NK92dMH1erbR25nQhxWgsjc6vmi3fz4mhHC6MP2nTNiNI2NbVQmV+/l
8rDVSI4qz0v9niZEVw/dSz0K5AYankP1E39i7aoyxo+14Qb9NowVwt0G73Bpw+KC6OdbgLYm2qSX
Pba07slq7xELAjyD4Nbja7t1PJLAi2UnnI/rdgOQnDqbTNbfSDCpdvThSNOMJdvHoJzZ4QSNec+W
ikXbX7mecxL9/7kkENWiiE7YECfPLcqOLGhq9nRVrWve5bkO/2r7UNdYiyof/7HG3q3fv9AEqZhf
oJ0idfbE1kxRBxihL3Yp8vnclJRR1l7JKoEQ1umfFk2puzwcUo80wmL4af3Dr4wPDCpOR9JCfTlg
4MXyBLVaDtYCdmO5+HKmXpCENnvbjOZDMSbw60UFkJAw74wTXd2m88IdU+RqnwA7BOrj1f6IuhIt
EoMNfl0LfK/OeCunx9Pjxtpi7Rd6HL074R63JB7ykp7qVcz27RwcpY6g5CbsteOtMvjhA5GN1ZaU
yV3FfVHX7+UqjaaCK/oQu43OyCfUa3Haz6Chc3unHCtOtmvnO2wBnK+oIYlt+1CklA/v4wfIu9fY
J+mLDmYrkMRm8qJ64I6gn6RtKI83ac4k2KJsrWHE4uoK11PdYqVZZObIrKOF6lwnMG1HJvyBn1OQ
dwHMC4d4k9SiksrOa2Lk50PlTUv323Ri+nRGV+tnH6wbmsNKxd8n/p6pxgqsUzYkJg2ToWwI9CsL
IjeWnLUvuGq4BaNASi3XNl5A1XYMuMhK1VN0rFYuOohAFhBY5LJX/v75rFPSUztyfU7fDirky40U
5mwGsocGKM7+cwuiYRCfNlSXKRaTCv+bbkg/zrX8W2rlZ4WPk7IiKCQICqQP9H/uVAzXGbxa6Rcw
GPuYkOTLux/RxjY+XuH6Q+nD5K7sXcvTdHZYmVUDGT4J/Cq5BSAFxojiWDUARHk2Chz3QKqvLVfg
d1dMpa74c9cnJcHxazvb82Lwa4Df7FdjqYxBEqaCAm5A1dRMON2L48ZxHnEjbLZWPajicbBzh3ZC
veaH+JjqtyZC9kVh3ZvBYZYH0ETD89F0N8fYSzATzCY1uFIs9U9Ytu6qeOwSUUhBimNaLM9cD+UN
jRubEeM2pAKUtG413EYqv9w9rmY21iuTcGt4spHkO+Fwtxx2XhyKh+iWEssI1IOErnPhUw6ns17o
INcTX0yTGFoubmE4h+5SFHNa+pEskb6XQ5JY/0fxTC6T5p4GhKu4pp5qvGTTgpvsf0pukXeRnwCr
V/f16KnmeFRiUb5Ou9CXGbyTMu+5oJEsvDkjUxwk9bllEMVwoDWvHLAtFJGo31zgPzOrYndtl+03
FEKzsMh+Ezxzfs+EJESSFEV7rQzD3fNwnJxfsB134dZFpRUSh/lMKHmRQAe1fzXcq5n8ol26MEBt
++B4gWocaI8P4lk77DGHd+U/LhOFm0wIRuaj9NeAr/0Kbq1j2PV2rm6xhcCSc+2OsNBA/wxxupxT
lK21gC3ok781r8gKLp/3A1mRsWs/knCGHrA0zsPK4R/e/6oZK57tU5V2Es7uIj0BW1c7JJxywI0T
Q6Nf7fepxwR6bErxRbYmCvHQQadpOCNWQXjdHAyqR5LS4BQZE/SvcOwYNQ9f1B3JSMyel8ufZt5+
kEOwJRu7orDlu87sUyz9sR0aP1Zt+hAYcrNHeqiFjGHWVnGCIbXuso6M7SkZUphQ7tdFtdhXaOHj
8p1BrolW7KNPK2+bloi8SEbeAnA2h3STe5fEYO743dkoROJNuvKudzb9j2RzYDXsLEzC1GAB7ZPc
FFMUEKbs6r3ybMqTXZebmNcjXr30yaY0ItbCzpnHEZMXHx4RpSBez16teIfY3PFdXSEyHeSKJ7Kv
bUn4zIWwf4x2DIogY72b+c/rYbceoVCAa6BpXc851K/Dy7+STtCDzC8nXAKXUTHTalJXLq4hdpnq
OpvD5vdxaz2C4YwsoDNpGMPADeDN7GgSNGIuMKOKs2DrySuwDU4qKqnczM5FA5bMcmdslt4P3FG2
/Hycy5iknkIcituJYxn5m/mkVH+PyAMUkQIx7RNGTJvKXYx2stGX5hbWsvJZlqzJf2uNStrVlATO
7udPbv27Um/PCjQjd2DkS8CSHTQGLEOvWyunloNVgKKxPEmSKqtpsW4tryKR9TFdjZ9N9usCscQV
+5KOP+bw/4la2ExVOHNhVYeEo1a2j6BSq6p12pfpsBLZuA0asNvTu9l2Pw32bVmgjkMFzEnwCELc
egpsDGmIHxto+6zX/4uwJzXIMsX10viaJcUhsg8PGakznsIMuGVtdGyTNkTXEZLrVIQp0dELmY3d
qAFI9UD2N5sWb2vkma7+M/5th/3fP+ZtxZ5xsqtmazpDSgCjYMISDTuyfn751fD0EvU4uEJ3v7Pj
RN0ALjgvD0Ascg8z0A93qOiwpDxpwYAPSCjM6PGDZJBVbHfPDedQwVoMvTYttEhc9KL/FDZ9bsBn
wEfKTdNijNcOVWz25qumrRSnvzmOv3LBw9cL+1vSSbwWZlZJQQ2k+2FwH5UkDsk1s6iGcXcEjRJY
X8eM6k1Pj07Ob/ySSny4c/lr4DzIgQOkZeeyJn8NzAPQH4Ws4aulUWNHcQxSedK9oWhjWhedbJNY
xLkgJ3pPnsdzptoUObAMHOPaCYtvbqLcRbbRQIkpHhyWeXNpxhN/x1fL1BpCaHmqelJxrGSznSQc
ZjpNG/VBZ7EIiIdurMXK7HKguDYxXzhQPF7Q5PUf63NssahuQAf+VPp7twKj9qd+R+kvg8jPxgsL
ZcCrEZuzvyn6oKO5DwrFNVQeGe/o7q/bBvMTMyGdYgeo4wKU6duUbLuI1mN1Dn9kV8IQYIPjCHxN
BwcMEC/KAMGF9ynEnprUeup9sVwfJOXXhFR4EZLWmwyc7LU6e2WfE334KskUfPsvycwRpNwoTOcm
KEtduGAiSlaQ8JyiAKuwq0dD52IRiwW8AsFeDOXhfIM/4RyB0AUCfvdFVj6uGSCbM9zgt53iWJx8
+pW5qFs/2qe5e39MuCEGkcEp1GCOEuxxO9l7rYpgE+fscfrIpBJe1yyo5BUgbIcgGICVG+g5SgvV
niKHH4L8mu8CKpneqd8s9DGeTysWAxHt1P6vgZWH5ZYkt0EBPv2PKP6FnNQF9M45Dy076ofR3ACl
k+vz5xNV7XrrtzsgmCZ9aVJvu30JmMt/vKdI7qJKpD8gdW4UlMdBLXJ4+yR8vO5AVe0IlFLLLFQY
Ojpr1O25WO6yEFUmt0I45GeHJMWeRYhjVNpFghLQhHi9DVtvth9TSe7rMiIo2loxh1wNI0+qOhpW
kVgUL8kyxT1CXoNjtnJp9lA+Rk2UG8V8SVCJ9awpnI1WssxW6iTpmV6WQfxEXHGKoyNAhv1r7db1
zM17wCHUTxPInms9B/z6eTRfLrWQBcr5lefTJEAmrSRf1p9Ap0rLClaPf1+TA8FijoKWTskkcy6s
V9QIUifsyD82Eyte1gJ6UpElHhuFZSPBOgyCE5xUAOFd1XusCGVoiATGpVxjglqUO6R7+mal05Sz
C/peuROpRZ1QKibRme63as5igkvLRasaguPtlTcqXMDObBgEmNqsqrj+AkhPWSMA4/EYVV9XPhhg
2fBomSIl4r/fxYddjewVbmtspfsEe81EaFR3zEBY3hG8omZe9w7XBZy9hPDGNhxgJsmkzjCQX3iH
3cjJwvHdZyIcb4pjHZyk08nr1STwOcR/LYSEwYsSz4D8ZUHfqvuJhqx1Z9pQ+8NEQqQqNrMTRDA4
IWdt8koSyTZ/OGc9/YlqJSGlX+fCh2qPv0yHHQCSSjbqI78o7tDOX4Vhy1GDmPLoH35kGU8HzjCu
yPQOIqih/5yFW710IjSBTEopR6zLU8BF2Nfhuri4hdN+ANPJRVnComfprs8zy9bB1mi5wKtvfOHA
nDZL5wYQnajdyfRMaU+d5sUKxv+4pavA01AyykY9F6RkWU5WDWPNAAYobLvpYGQE/fHSsDiJjkZn
ba4/IIFkkRmZ2wYgTxHKUwXVOc2bJDnZWryW/X6Wzk8YDBxc2ETuvp2jLK2rmRnDdphgWXDDvYow
DKPbLMpfxvTWGiz3jRVDZRQSSS+nIaJDJxhAkHruCmfPf5riWUf+eaDqTWFU1i5wpqQT79YdKXT9
2CCb2sKw4m2WPQcaYGu9hY57gWup1vrR/L/zGAhL0hO6vlfqYgNN6ECd71B84b3kscrlVptiZbD/
ycKcOiuQtgV7m/h+lqTMrH/BFabsDEzJa4QdULGBdMnTpIc0zh9BcxEn9R8SDgIINEQeAaL4nIIo
EkGzv8uPWrL3HSYW+adMwKLFfRACN1UKpLfWxj85o0opuRZDhPk7ZEuTNOvBCo6Ufl0rdTvzxrnF
LuIQg4/fxlcnmVItvFItGFMSxdbhkTejhUWXJ/Qk+RBtDEyqSmH01qRhhFznllIVt0aLrGNEXJMf
081+biyioHUnlD7OdrJqfRAk+CFAhU3c5iGDM9XGuarrONmyu9xFv5+Z0485FcJdpw04nHB18zli
7V1/trTAE/Thu1rl32c/b1WNx+x9TKFsOHdVlw/wked6OJlrkWE6vw3ocyVQNmWWrh92E+f0g057
H559ixrBvPzfP23khh3Td5VKJ5pHaapWExEcUTbZxPwB1OSwhOWeSvhXHipO2unndLzxYqxquGC5
7EQqF8GXjAcncK2Zy0UWkxIegIHzTHEXFcLHwY2u2f3olitzPCINTlnjhHqHp6Lrm1hhfwTpigCA
EtdIP4X4TJOfq86BaQGXkwR1FC3HmgWo+HRewu/KiPODeb9O/bnbcuWLZ0QRR+aoeeGVDE4R0DWe
gxry4oUt9rrVm2Lq81Cdtwiq/Xn73CP0A+gv7UikCrl7h6Kx7SMmKT7lnweJYUBzAdIvrgUJrlCa
NVIRB4bnU708VWFOkM6LDtFZF49P4SM2KkLuczINE/aZBZoN60YnzMLBtGJn9tXwGcO7+rgxkstf
pCXb2By94t1NfjGC4hX/ytIUmF5lQPt+Al7xfvQQx6feLi2jaLwardYtiKv6zxQA3CDPDpTsvEv1
fCUAhX33fCdDSk4qKII41yzrwhnrxk/HueS9ML4+P+xhgNPzYoSJ+VFQNTdirgluI3eWjC98FZrw
vVd/cLvKPThNNjhkxb72Iu1XnDQaYSh9Zx7cGDbT/p42JKlg8WXEp1tdGfVEMB4/4mF4IIJ+R7c7
2y4J8744HwNY5c62rpWY5svLCsFsiBJeE3DNKePHWTzfISezsODH+IOIvYxf2qX1KLXzV7fd31JE
02ziMlsl1zOBaVdSmqcII60Fbt0l9rXsoTjoRbBlBdsHnT113t3G7EKxzAjivWarFEBszET+8vlh
dUo9j1R2lWZ2GXuvV5u5+hzvILVHF3U4uPI0O9CApbc+8uceaRoqsVqvOZ38o0slw1Wyh3tY00l4
G18k9h9dr7iiayz8K3Q3KcCFj+5xicU4xenp8KfbA7S7D+UouX2+PNxolOmdmwVTTXBsRm0vgmNo
AdKioJ+xUov0HWqRkzCIzYTTMTKtwgkjsDn3NV4jHJejEQgV2GiVbZCScISnKg+l9g+Akre7tlTY
s7eXXat6MJV46Jz2iUCLjDHJmTNPDkuck/XJE4bbloeyi4GHl0ZSgl1An6NBZbwRv0ROubVBIa8x
g5uppPO+bm5IpXIJ+Qvht72SmtjDPaWmwFH97hblmZolwASXveUfessb0M65Y70rVuGn3ekj8xVH
GuVDcyWurWW9IdmH4U8wLRGLOqBixBsgjGz2/dtC9m1O56V2HjkrE7aIPcWnDjUdw6KtD6ceO02I
WsHdBbDMYtWDC7jiRSy4EQZFZG9hWJ+fscrb1wWAxWX0bS8Mkmiu05KRnSexoj127+CBxjpniBT/
T0Rkopl8kz5pLIiYFaKaJg9VbDsLKvuoP3nxrww2Ek2vBMgje6ZmIBCeqA400fQ6kuvT6zbjiF+m
Qfnmiy0RDHrw8fxlqISYdZMp14kTqbSGmzEeU5yzRTHuBAuVMHP65LFAKktxpAYFuKbXcOgzy7sa
SUHRkvA4FjFLPOBHUt6k5v/6gXVdyAsZkqi5hn3N8lwiK8k9E2w7v3e+7cjse8BkFLxS8nXXCd/+
hJXMbcyi4nP+D/FEN/BMjHbIBWms1YaFXvPlZnJoGzEo6wmmyjB4yhPpvd8kyjS6bBURG/O8kbkN
x45FiLKQ58FSco+rGSuGJ7XvzM69ZmkkY77Df8Hpey5h150abbpVAgn6QSsq4DLyPS7YihTuxe9H
X2lhL/qy6fQGgxfwqsm86r8lQH7bDtJQigPNUwIMQ2Ntp5gaGVDPCUGqlbwe7y11zDatic0ijQtY
wP3rlJ/soKt2WyyjAyQnfrY+wIHTNePb5tVvNP3YlZaooNc3Bmn2Hk8P7UnOHw5gu7PC8ydNeTB5
lFngcf0auX0rQMtTkZ+p2kEkAkEuR1X6r3ytk2PvHcJVlGXGT4nMqvXvlLfC1QwskDS+irmG3LC0
C6RuQqHlpcvX2jSBz7LLy4aAwm6V4bvSXFNXPqOyl5xY6n5e5HR6x/OzYBi2BiMG9wMWjWoeP3qB
b3Z7tYW4Djj/yd9B6vtaSGmu3pdMPWUXaHTbrmR6c2VgK+aHWkRHlEeHTGiCS6IsHvygOH3wRJn6
HBiuuqfz/1H4UAKtSIk88RBK9YjGJ5kE/7sfCTaAGqE6iU/HrMItPiA59D+f7GZ6+21JZVDwoZ32
DDTj9EDYeHBDMUHdU9NqO5cwgT4RL5o7M7ETRzNsn4FHXVcos4hlVl56l8841tbDF6SZyOF6pOUx
UJ1EPe7L2YCoU8KaIHz184f4PDL0sxwLe26rueLhQ+So9I/XFFGJzT4NRb7rK5Zdpge5Xxl7lr2Y
8Cip75upXID/nl7IWzK+SJM1ZLA+xbhHR6oKAaWWyIi/s8oJXRXqNMx78DrSsclvyGrZuloSAYNF
ZrH2HRCDqs7ZveFyw/AUgERoLLwjdU7wbKscMGlQG55CuUW4qdYe1U2YXXlFBnY7ygonnBbZJd/c
6T0yFz7q3/Zpvm9s/57oEq2Aq7+A/f8FaMk7vtFZpH69w8cch/Z8KRR1aky3rHmsNKwooi9oxzXN
eofnqgZUvjjtd17WClpJ1A0sdM3bGRUiItHgIBAGLAW2Yi/wsvYW6ZAdDs0WaVmHCTIAtLPzwrVb
UsksHhGMzpRdh6E02o/CGfwpPkYkxVrSomBp4T7aCQMpTAXqZ0YwZ5u9JzIwlJAYQHJFIic97xIg
ZNnbZf03V5MYUg8ZsE5yAru+0MRj2UWFdALdhKXoOVMBuWR67QOKixf/jy672gj8XfroV0CmnUJy
jmlgvYsvqZFs0BLUG44wo4gcWVSeo0Vf6upNpzA+BK/tcRCZk3fzaEl45MEJKKCRMQvWCVJvlvLF
dN+y3IfOJnRD6+7Ud/+v9ITmdMKNG6EVQ7PxxFWfMRAZJ1UxsWx0ygPne/312xGyVv6N6cBWfoDf
rI8y2M8fvBnhVo4zpW7MMqV5OnxyyM11IbfQulc697llkA23jS/POsYN1I9zw+oviBD0MF39muzw
jELQJioXxTlbmC1nCFbJSEUhk/b+fpYQwn9CG7tSBuz2U2D/0pvVp8fiXxmvLJdroU9Fe8tLeST6
EqnNVe71hnE9yN1jwiHXzQhaS2V5kWHEqvvyVRhCSqbKPUbSZ3ugBo81x/YMTVHR9YGrcwXKDbQY
KkvNRS4aFmnliYV6R9GzFl6yf4aO1egPRnZxXWTdR4+QBToiNMmim4d72TanPTv6Ga5PwlU/r0/r
c1t4Nb3o9Qtq/zr025LEvww48GbWqCQbBAlIu2cOVDdSAv7s6iQJbfyP32XtfEjzuWCItJlAmR/7
epIKsdUjtV0zlGPmK6Ioe80K3HWfWtHJ9gEEtImBqP6L/LRA2J8UU/Ke1KjMl4WL4WgFAC3Q6KmS
TwNJwhq3+mF9L/xxqiRF8dsuPHnTSfi+olDJ6/rlD3xcbWeydc9T1rcK2NUk+Aq8a8LC1kETjad2
xGHdCfL1IV99weJEPTpYlnpAoPi5KanmiCPdhfeeRYiCWTMo9aqYFP0F27vJsfVxPGLfuNfsc7mz
njImPoAdNtGAdqdz7DZvDT1AiRyIcE3bM9o86XpijkYJmWB5qN8lLevJg0+BM6JbC4co4OWPU2UI
ly7Z1HHacuxKjIkPjFV8BaVWjk41bHUOsA0cep7Pw8XHsXN1JyvoCcgjgrPsr79Nn22RPldj9ehM
BekWFzYEuaPfbI8clr7+6HLqBtP28RaQ3jl26Veq9fvtkZf6Y1uR+9TbatZu3RfQMNlSka5CCzFX
B/Z/0MjtmF0WBMAk1pBH3tAS0cg+TZVZIVpK8ok7DuDhvuLb44RRxob16G1OjeY5aQjONB3v1GjL
LRvccBjgVWN/xvPHvw0KiJvAk7ngBSQAlGJhgJFKbDDdoJxHYIABNkAjX8FCDPWF18xJJyJyGRZU
HJ9fJBCirRXYaqpuBHjayc1hwjV6z+cKKeJ4r48SeRYTH5TmoaQ1+VL/5jlqZaLiZxBn5IcftCqQ
R1sGFWJeeX9MVM4j24YCQBx72hLPgFxrT/tywxukW4hYH/pRwXI4S9WEWG3uIi3zbuHXmHF4BZse
B9Kh0swEoSiKueYMfvdrNCa11gVRyi/+/Dh02Gphz3n0UoiHmsTwmiteKFUUQmmyK+IJe+K4FKzW
K+5zBAY1JlVXKzzKCCtfdNPXH0kRQ7Jwhf6jwbc6W6nte6edQEEBIOLq/GktCgCYN1DFXC+TX0Vy
WnK2lGWzeoIaNET7Q/1KPUK1mU0RyOmpFC5ff2QCtLOX7rjfPsEh9Ppr90WjW/86+i3KEtXa9Nyf
GWBhh9CrCf2aLYwWx02MkSbQf64V9bYAl/rZDTjVWDM0gK24iTwq2wJjSzK22pr5d/VwiVFlisT1
wUBfXeQPJhIlaCsrwVgZlNVYLJvSc8k2b/fDVbDhcb7lotIaFReVrxAFgDVaglizHKRKv45/UA5C
PSjS4GmdTi1C9I/VO9SH/yMmLbHTwREak3OLBb0aI3fgVtT6Y+ri38qncnVWCX9iC1up5YRnulTZ
Frr+Y+Y1+Snezi5g1lcdFNOCQXxTFksLXVFKg8Er51OV1W5RyLNQ3h2lZZKBWUefwiXzIWrwHAKX
RhbRmO2o35lm6NPgBWiO/IyPS9BYlT/N3apzmMgQGfqcKf7THtbEYWtV6HYF5BkmyRxsxqHLYy3I
jnUvBa4psebf0RhN5286yRYlg3AwYN0gTsQM3wGGviMeb/BPO4vewsng0jJLbPqXmXP/9LI+Qcx4
NcLEl7aMp39KVB/GTc4NS02uKOERwDAdRDWzK43UNlsjS+stTcWdAR0lSsf2MIeOnj91AEaHC2C4
FnC+jeZ8HECWz/hT4kaISPuIETDr54ISgmswp7j3DcO0aaNkb5k/ic2HAEMLXIiGbJcw+ZQid1cJ
V1GYDRju9cjpyFHyIYOabeIHDp06/5OMRDGbdCAJtyHdYG0j/G0O+ZubE6HGCjeKi+yJ1Ab1mVvG
EhQe1VT+gmCSIKlZIgnBbqtlzfjldC4xP7ZacrhxF9DJRLfI2303VZH0J4sesJTuQXb1zbWRxibR
EHznfGJEuUjapxB00BxYQuNw5RUJiE7OdQtTlZgPlZjQmbRZp5t6FWk2knTGFNiqm3bGuQ6MBWS6
pq1PZM/HGlv40JV1T43p1yxERYOFnLjrYOIb+9aK7OsiS+ISJf393APyFTs1TNvTbTsRB61ZqL86
iorccAbUhc6dmdgQrEzvMKBOzUbFejzPPWPanzepCUf5uWl97Tzp6thyu/UrtcSc7+8yJ0K/OGD5
g/QRFgtL30uE4msF6Tvh3xXlKqZgwIspgUAATUA9v93kh2WZaSG9TeI5A8Xa20GpFHeuwptwFhNR
RjFVx/avfEo0ENnVXIHmjNqXP0CJzm5dez/swMYyoALFhzuqlu+7R9sdaYA1nqhLvs8seLbYFMzB
mYxhP6wT13eRxHz1Q5RAI8gIbf+MtfOiAMHM0NZw7WHBgFUTeMxONlU69CD/h8LVZThNWa5gAO+K
eqCDIzbWyDhGZKFT8W82DXYBnYgqBYKbJFyfoXkHbR9/EXW5VZp23Bh8vB0/tXqL+iVaS4yIosse
pAEKKKi4ydCOt9z2wm3xvULBsp9AaeLOhlr58omU8hyjrYLQQg6U2rfoWnTJT4DllR8kTHxQeCFV
ilLd6acOsFPQu8C8UIDAI6WZHCPHquvGV9Vlmv0o67qQkvH0jZHgTpLRURpDJe2Vf0IHuz7as2q6
8bT9Xlx/jM1SuMknUQJauaNxT3MLKp07A19L0lf88Do1GnsJ3t7n5NTfJUxJoGg3d54Uzh9h1VF/
9ZMILFVv8n2etgxRmdy+jAOM5/s4gZ/xpbrjcDtoihLSB8eEQ/Qs4OLNn8EXJxGURR8KjObF/FeG
+VB409uimJwr7zIZ/5NngqEyIM4w2ZMQ5wo4XZVUj2CIr+RMlRRqoOtc/lgsLZcTxmZtAd8czdFZ
jhD6se34x5PiQqcphRXljcYxntXILqSuR2xNBnMXayDY+U1xqoWqZ6NWyYKc1WgKCHqOD8mrl+M0
3OaLpUIEwZ6vzcVb7Ry7g0uOKY4mJssLoTss6Sbq81niQpltYf5zcb3OX2RYGRIuQI5eBWyKqrZ5
mIS+PfMdW5oZHp/YgUgDqG4KK3YbqbWVOebl/WE5HnODC93kLHlJQqxgoglorS5JugJW9cFVrdCC
EzEv5DlWEuuLurcLRmoIsWD2zpH0hpsMT+JfTCiHm4O5SbtpSYWY+r5ybb1AGVsDWC8GEVDyDkcx
pVf85bwTMjyJnzUYWiR6aOAXMlYTV4i5pIQQ0ju47wgja0EPetY0teUgqFTp/sI5uVWTHmmG8rWK
twSqoxcF5lZr2fHVvZKLViUPfLu9aVOsA/JkAqAi+/4Tp0hWIIW/w8IPRoUwnFkq4XonK/sVn5KD
9cuJi6QNNxeHZEZcQwTwOB8Ew4IxmuZ8Sp2aqGezqDGB7GZFuJfX+1p+1uknmiph922F9LZjweo1
U/XZxhVfEX5yiepkt+1vmiHbBTPOiJYrEjQvmkRn3gP1ClnSx7iwsPf8AdvLEo0WwWCErjQ5VGGg
dCM61AFdk/tuYyUxMnHrtRbD+A4YwILX5Tu8oArRiIG8LJ26jx2AjcsO4pk7/9cSZnkEBBYXmSG0
0I1rF1o30tVjJvVa4r8FA8WMCJFm9CW7wjMjZ6FwSE8aQY+sNcpJs408TJ5mv99c0xFN7Wbvy7+Y
qQDYG0Yoei09chGQvhtCUpZcAUnm8BOKxRBOj3xMtttKSdXYqxjXRkNpuzzXOfmJagAyGPg/kMXj
N45oFrGhzVkJ17kwuDStGC+5AbZ8fUD8LqJq6MreroZXyy7oTUcYqiWiNQoglyF8nqKzHWNcYAVf
Ya7NZ2BIHa4fsL04WtcoV3GokXpE8QUNX7WaZ7+hehVv2hBbLJmIC8mkX2awmyBDMi6vvrP21Tdi
lekU9ce6pdLEiKS+hVNY07J6bWIVx+Dxlj0TzFCZQXHn8D1fTQPpC593DRYelcCN72+tL9AWGnPl
kw+Dz2Q8ORWjBnWt3amm2/76riYVF3xzFMsasi1pn88cOaNJ8W8EVokbmUvjKC5WAXBeeW00oblf
brdqJyb5FV63dO4tsU1Y0S6FEPlJrUc5azpsLnv44stqmTm1KZFb1KCpjxBjwlFqglJ4hsiXgzKk
prpjfUKYOrTFVZrnIj65UVzEXj1yxGYtADdYs3k16E6Y9wDl8xl0WqCEik9zhh4ihHjaRD1wBFHU
lp5CgHxBdvvM+zod8hDToW8KWWrsdqvOgngfSlRaKUvEa/ac3wFd1TXY2VZX+lKchNeQwXz/Ewas
XhesaIkyhoFLi/K8ESiNvIWKJTjkjXMntFGAFu6iFznKxrKey7lHHQ8hOuiwVN6ooHsgDcmhNpme
V08pjQ5Av//e1S8+amharX95W9fc5PSMcsL0dqBTdC3eF0De/AplJUlCpAoWvqq20t25MkaX7OYy
kmFX0d4rZrXd4FymTXyD0oKF1zFq0dxHc+DHIR581XdB9HVcPM4K9VS8To8mvTWAQdHcgpV3KE/q
lh4R0vVvFqDFUPIpENq6RsBkMO5kP2SO3iCvbh/62DB/Ma2yffYexKPk/AMN7kzxP+FjqKJFh5S2
VKmFV4etDjYxFrw+1AgOuZB7mt3TLnMamAzWL7UcIc06lt15v3oyuINM2dHH1du2SsNDbKOAqAjG
p/0cxX51t+T1KtAkYAs4aceorcw0VQsH9uvoyS28w3ajtrdujAAjDVNBmLFtS+YfFm8xDe95KFPB
aycBOat9Y6xDrayuH/1M5gC38vasB87yT04T8Yd4ZSNBjyE+NB9RA06D465GXCZ9DDJeoOno7aXj
skALSXdCTHILnJRKwPFsf9Kp8TdybKK4484yWj61Jq7xWXULFCMNJAp/l1r5dAbhnjr2/Te4Nlvt
+81eOF4JjwUTP4HhqoPjaUYJ2qVxCvwvowRbwTitfsLX7AF5+z3EhCxZlaQch9WngMcWTgPFypIE
cfzD2z0l9m45C8voXUveIyY+UBIjas+Gz3XrwflTHwWmXcq5rOMyGaIk4tVVSes+t9pOS2vEdT4X
XUlf4FM/Bc4DUKgCPLSfD4x9El8/kAnOuyijrxx0sNZ/PN4ghntIU1MQe/zRfl4nINxI8uDGTeRA
rbsUXKXpNyUcpoi2oBagTWqtTnbt8Mk/q89J5fjF7WugT1nO7S5b9nOF1oyVjvl1rW5XqTMDpfEB
PZUIbwqHeUNMMoG/7rqwUcnFDGctufD0XqOkj5e5KfOGdCuAS01f8zvUAjen9YSqKmIIjkrIG2G5
kiIfJ31sf51iMmVYUlILvkTS1MEQ1i3G/xs8KDVzpV8eXxy52MqqKFeDFokj4/uqlc57grBQF0K/
E5GrGKjU9JApaWv8CbGh7hyVvGOYY/2RqGcd4cdpGUpUVkPoAaLiB/q8yLkt8dH1CdA7PuL7k3hY
2YS6DAn0wPVSvebdko5DFnqzfN/gu5D4RQfuQdDMoIsHggqxBAl2p46J5XHdk+NxrY+/S3yI2LHP
N6j0m4yV/F6rVQ1X0Zfm7aZTxfIjyxPVDy34eynwFt+sFDK0mf49rPrDG2dwy5TAQ89areUthsd2
94dM0QOyJzz6wDKFVcuCWUSqnTLR2xi5Q8dXG9nQEjjk4twcTdtIrd4KodgyunEh/5RA+gDeyLpP
4mTCbzjkSmbGYP0hiqoW8yHGaTxDtJh2pi3Pn1Ex3ilhKKt7YvmpE8e8w6GzarkJVktipuujwZRt
6vGhcRmAhYHSmNljeyoQvscIYeEQeb8QsCPVma4bcjjeIAjjgKw37TygHIcjuNC9yHhlabmh2nbS
zas6vdJ3bj6lTkjZ07H3oPQHE4FwByXWM81f/W7wdtQfemmywaSjKtHlhzc/eHXOcKaNf+pHsXIX
ecfGwXD4TswoqI9bH/sNGncNhCOB9rJE2ZkSoFIc5a7Blzp+3qckaeMG/0v1zwr8LNQ+MdiF7GgK
iKrqkCo7fsMVgOblCiiwztEi+7jSghZrWfpJmblmRNDGmx0HgHEjFLvWr7qQnVU+t3SERKCtm8aq
EgihrmqkeJef5TbyjePi4r8qBjabuktZNrReyN5uzOhBHbfDJUMCB6Qam0pE4qhzog/xu4gJ8FhQ
FBXpRoFen7jgSzSSUmrextVVb8YfEJn+I9QAltmzk4KzdVnU3VQGEdP3K6cTld+QuC3Z1xqLG2kq
OUQc/3HQNlFSQMjRq1QI57xsw5QCwgzudCAwY80lRdt/v1rGRvnWoal4cebiwiBgKg2Pp2QqIkaR
nQtK6sfojyyNuUJVsrthdntF8D3/EqtSOvef1sDiTVIdVpwDFlukae3p133VTjUhwrKR5/xX0qZ7
NQ0Ml0Str30Tz9oAXewydtrAq0aLLb6FTCK/VKxRpWIoO0Ygj9HLtSX5diZbOLN+FTSXly87qY1g
KvSsDNPhk4FHcQQQ6inlokXIXeLFRFxTPojzIvxdvxp7ByiWQBpK9fDGdApBPxY4boEhC9D5ZKFu
6SPYaRl1bEdO0EqFwxew60/RhUxN0FjejVSphjWi8eVdK+XaLs3deyH126Kj9HREo+5emfV3sQkQ
SXgxqPOz2PIDRq3c9INhpuIXch1FtRgmSGyS8GTWrKmJ4poYUCHOUs5aYAOcEJZxg/gPrAjIV+8A
7LrTEuAIdO1hNgRSkezBOg/H39FlRAgKCojB3cvHUB2xZp9F7zaUvrpGAh7jGCnlGWLaX+6Wstna
LKg0XTnucGlP5qxluTQfjABQS/8J/oYi6XGVuHMXoEjhN2/5XF2weG+A9x7Btufz90wtpgePvFTw
xBc+qu84zKRtQIwChA3PGgNADE/kCtC6d7ug3GMlfTuesP3jk446Z38eP31qIa6PRf0dEDsn1gL1
9j+h4Xv5iqBpII+wxkkT1XCkkyq+KMQLGZay7u/LiUu/wTzv+aDpHxNuUCnj2DYStHRy9shLoLuI
Pqp+7JMa/tS2VdOa9hkeWQ7fTqV0yLrZZlYUBZVE0kv4caNePgLqj+fZEatGucOutcMMslYioFYC
PKlmZHR4Pl77ygs7+rWFgoWpzdMZLtGfvH4Lwe3NBcweE1pNPY/zKkkit4oXhc7Deo7ZJ9coSSxS
ypAb5kT9A+WujBbq/BQpsrk81fcVj7F7cilSNJjY6ZmIWC0Fc3AXwR1YoR+0bk4aU8twKKAng5xa
41E0Sp8zYThCq20ffYfcfLr9uFrTfvrXtYCk3vGLgmKABB14nRGlW+a2rWEH1v9ooSDEWkVDRhjD
WBqn16uAIQp0TQhpzkLOByqQYN6zeYqP80r2+6y25MjoYnFt5XyqEJCCvomcOfY74kZDawY8p86d
iSAabQUslq/WPpDMGo+u8dUCta82WN+gE4eeXz35oehIN7ef5QOp2T1Mv88ILCPFFICRQi2RvLfs
814CG1zyKSi6elIoXDSXTNObcccWpuSM37VWivCSyAFCGagFqNCM312ogfuZC06ZvcJ00HK98gj6
+k1abZvIn1zdK3ok9KfTOaSO87qiRmYDphbb8HUL6PsCumem1/x7m4tOxxX+n1CICZLkN5h6ciwf
P0w3J11UnUKKGt7PS0RgLMdgkq2ynqhrWNGJZ1yTeUG1WeBzGM3X+P+b8ksaAC0F3+wrevebmWni
Mq6Fv/aa8e/ebDNlej/Jl1fXt9RZrIFG5+4CzYbN0LqGEeaBcNGvvkCqfTN4xOZ1A12hzpoZ0Z4H
IkiSnbQNmL2flw4IU+JQiR8X4yiquluk07ZTdNGmHw7K7H/zIZn28x+fnXee1hCP/utp4ehCzuFL
BAacaJThsQHV6hsHcdUtFbr2kTsVnGKc4J6tepHitAqmkR82VyiqAiPcZT/0IHgaBdBT7uN/scNY
5glJSTyCTuLZvKHRDlnGvbQN/XwaFYDoXYC6BxL5/DHTFNKSwqhOoV4xkg1CW1EcQCkEmsrCZ6cb
EyBobc2FsxA1BMNmkB8EomVspMzU1g9iQfy/rNOV+JVdRiafMF1CKpMISrr+0B5yedbD7EQwP/rf
vvaheehwIqXnGsSox2BTfvMqi03RAEH0/h8fibe7YQvgm46XM9kwcRGzsEk3gCiZ4vFSREfJK7YI
w2F8S6KXVGp5zQw3DiMHQEu7S+K3Pg8PNVaIImHcZbed5pnMI0hDeaelcl4DbNCaFaoHoQ7MSaiO
HfxMptKPgBToOUgDKi716amb4vjoUaInydMzUWPmpGvGsMbRVvQ3myHjci392N5G050TUn3ZTBpY
viGayCDg3QGTRa3mnJNc72EK4b6vG3eNFLSnzsHV23gsFeTcFg12Eq02OWIWpMRDE6d8NrScQg/o
GIwnQYO1znErhrg2mdrM5z1L9H0xwPwSfd1RH6A54R3f6+tQxOZcuBcTVdCszialryXZjOuO++DO
qS7rbfJljFzr2Je9sZnFOFlCKKklBqE6INJ8bWd8OH4PUj1lGUY/UhpsvvHn6WOkeKjHSwYbrepb
U4xYECHtlH0Bhhjcs6lA5uaPX2NuL3kN4ZIthTdZ3P+FoedwI2Ud9rEFFQqZ/nDBxxVwWRmoUYmp
4Lb9e8DFV1yvwc0TSjSDlE4k+YzVXeIHsFllSTqBd5RQKJBCZ5y8Xhe1rftkBgLvZs9iV1nxqj7j
8NwJKhonp/Ux2zDt9ddxKMTRe0JAtT2OdpWopEwePLq/1ZIz2u0h+g/urVafeELGLyeEg7swgwYK
ov7roN1PxK2e5BbdHIavoqCKHIc1OXJCZmVssWv7IU495jQxedPJYCTPH0L/jgf/hdh13+GgAKu4
fMcFLAowdIq+QIXpNENRQVgcI4g9utSBJLAHJdOBlsR1BCiCKotuXFCcElm+jLVLDXQCdegrxEDO
LX38siSRhAwLOYk4hy61fR6GoE8v+V5UUOuzq8qn3TymY/NkW8eYPuyDjO7XMTF8VldzIB8ofuX7
3YV+UIhQ0ncyZIf3Q5oc0BnZRsm19ogPNLyTQCNPqz7hVakeeoabEYIQ66BkVIYOYd7P/Rx9oh2Q
KbS7qNgdkTNT3NRBLIRNh6hIdJgwV7b4C2GCip+LmQG7pahz1cV0QtN5VMQ0XBmHvZP8cQJUJYeZ
aRh5oEue3iOZQBvpMP58DFIQsyvhf2ZXSYJOUm7sSQBzDeEz0e6pkM3elQ7OybjamykpUJiWEZLb
ZEi9uo7nB2v+xwiXZA3Zp+1gtIUH6K7zFbV5AA2PngoBnBvpeeQOaFR1MGK/JhWxJXdceHYzw4IH
W9Eiqal5949no5vtYdxM7JGMvQQCuXKF+/tkLV6zh1T3og+ejaI2rwUt91FP4EqsKglTJ4OhrFrz
DYv5x+TkQ/qYdWwyQGJiSAGiQjuN9wggg08i4GQu49wXK+MLa88k/y/IqmhogTP0hauHDywKRiYt
DQrBBSpBviMoX6fHupVBX4dQkFLeTLrmFgfZ3dMriUc0egddBLAMpK0G9G8eOiW+yKSD+QYHEOz5
Bxg6H+sut+CTesPuq263tb2twmI7XRTiSjhPhN32WLa3qZTaiUv0L0K7d7/aRk0CKBJ3ouOHN78s
/th6hoMdKM73ozcZd++bVX0FoJ0OqoHipkWOHKzVZzpqGV+zKXCteliNMBltEKShxQbAeVyMjJST
uoAvwhC+Y6g401TBB7YUL5RZixvSsQ066jbaZWXFCdQYXADSfPOBuEJOzyHW8kJCNm0zQSSu++ob
RZPUyhTuYWPQ6aKQOGCneeoU3J+dvqfbtYYq04z+wvCJD+UsEnsUP34rwxmYUIYmENx5U8Vch+vZ
IGrjzx0JZmvFDHKAItW4yW+erIoYedwFEm1JrQg2N5IvVn7EuBzG5CF3QL43Jr6medF4VEYONqUK
+kUeOHjieak/ckaAJNmAh2aFh18LYdvjYUa0X0LDNKs5TU4aOulbAUN7YNB3d+Fjk4bWQ2QtlQ7v
SvNQFM+LQbHJdIomQXz5Xo+n/5+sFHUcRLlg+KlyLefLEeJoDXkc/besspSaSd6sQ9RIIupg9vpH
t2tsGPrPDVLVCcKslgpFIGOCmz+WrfLtvKr8rJkWflCMjfLwtEbQo3KmLxcGxV26iE65Yd63KCW2
QWphWn0idMZYecry8DrKknu2ZMdEQmOQrQgg7V2LAboctUtnnCYmMH5kjYpDSPk4r/UCfZZ18ZvD
Wir0UUysRECoGFaKJxtYuC3VqoQrkpg9pzugH4I3KS5TEHkoeiLXsMLTjCcp5A9OPTd1S8ORxvhS
0dnKfP4mwdiIRJGjUKj509Nv9s007TIOCLlznSMj58swlu0GZfgg8jUaWv5dknaIjMH7y/cS6JHH
3ed/nMchu/VkXkt8jr21WFRPR5hDkPVzXfnTGbZViSvlIR1sUcIeZzDJ3sePWGhLJMD1FoyBVWOV
xcOueaF2rHaX5NcohBwrEvzA2qHOhw5v0NI21/QfKkB6Sn9OsdiwPqPLgViER5FLUbTWGiGJC8RF
7FAbr2iTyjNDG6azvbqqBMLeGCccr+8IT7hfD4Pd+3GXwOf1MyzLv4s/WpFQBwrkyyJTxPHOCyj6
HVR/1nmjiCmrlmHlSr5oL83JOjuahMMa97vyOO3OHZfu3YNtpi9SMKtyijvYtl7XrN8tkZ3ML8FB
ybRa3+7lQXOHfzv3AKPV/HZxEezJsIRtE3+kBBii3AGwpv44PZASAhqZdAe3816NpkTIsSoUuXy0
lqiJ6NU5Sdt9dYRyvAmP0XZgagxScX7IaP09WhiPwWDas3d/Hs5ae2NBIS9Cg1acBjulrQPA6u+I
wSsFDOPW6h00EU8JT91fpoGMg1HUT5i0QgS/w6Urg7awIZLh+E8xxalM3lu8Up8sJTZ4LmV8Uxuy
T9YKdb6wRxyAygT+INpzQ+JN7uZuHmmRM5aTfDUVaUnNtK4x3bo+I67+CF/9Jq0SKYwdJ+NbDveG
/hD0lfW6a4DC6SBOEno4C8BJaFiEKd7+QCmaJJorpGTYibmsrUwS4zbFNFVZz/aCrmHWzU3zcZag
+oMc1Rvo5+vC0qXuALEDquDfPApcNdQMqGxqtWLgEdadamg5l0bhyqnHQm2PdVdcmEB/a1u+0yf5
+a9SROoOdxhsy4Gzui55Jq3W6+YK3ZOJIoVaE962tlsCz7oVYod45iG6ldACyQX/5ZZGv60na2OL
+OWVgiFmkgljvZFM5X9fN7P9FkrGkk3bm7LMXYb70GeGyuLmrZCoWm1Blpe0ySeInm0BF6aOblbY
Ww+HpE8X5jNLI9jYk5S6TEMladP8WGAsMtw4FYpIaJMw2KGe/twiB35+pKcfTefMzwiJ4XPHxiWn
mZtUgx2cSSwEHm5vG1C4Wx19PaiWnItQOqqcSeFcCsr3tox+dOTm8PmSQgiY7FomtqG0MIqAWiUi
W84YLSEgT+7IQcLbb0oeqQ18xyLXNkEY1AcYwQcXoeYWgGvcDgsEDnwPAAQuRz86ajvLMBH1hMXA
xz59yeOj3EwixjfsOGBgBIb2yrlC5JQ10C2Rkct/bGKAXeSTpHcGRSh7+J4Rujxcq3/vxas8Nu9o
gVXxNTLVieozAWwfonpO1mAx26x2frtzWoF6hKQtKrjU9flLdlUOtUUczeGEKyZXqVeUSF5qpSuM
CkjOgBStXf85ccuizljMMPLvG2ye9C8a/QlTIpKJSWXmNfmM7molKxRyC8qA7PtgJA5HIPGG84aN
5AP1nFamZ8Z+L0MGCdveoeB3m7HDTOZqa7HKe7FXcUmdVbivhMYFwKg1OaDQR+5sZCsjqqyKR6KA
4qvR6jYbj5vrqOJOjNnSvOp6KGac6xNTUq9NOT2EvQ91SX9g3TZLhmAtULblV6ZDoBQcgmip2qAc
YqjD6MNcoAPJuLYUGVdnzBSiSckvHFyYUDrljPDuMKGkkyAvL3w2XUPO1H7tLRUMIuD43J+CzkyO
1OZsubMHcymnUXGq87vl5qpH0k0bAX+N7+AM/8hwgZBmItnlLiNNulnBl2IBL+0/Ulmv1JQXdEFE
BWd+yhE3dPagLZB/mQ6M27PT4SOpUA/+DGhDWBnKzefJOQR2eXgYR8DidrtLmYLcpok9/NSH0KlV
4Ja5yc8guqMSiMg7IZKI80iluZ7Pyo84qbWSMGCv9WsZPQhrkVVJqko6Nr+S76RDyeVhryvauuDa
wgxFofGgNTZ9Syhs1KELjt2eJ3ajGXAyQJ8pedY7L1wy677RM+8DD+45X5MCWu+uixNJIiQ5Jm+h
6XAHT153KlBuoDPvzzLIWd1iznwjqcjNaXG6eLKnCmE1QK8Ru/YEhoPU/VUPVGwIjzrVC/SyIG1F
ykO8d3P8+yhbqcoHhVO997PG/W2yHWd4R3d7tIAZDTOJtG55uhQJCvKU3Yo9pPQsceSerUNqA2YK
eAQvrtZycxIvfWIwerKhbhpiHbK1VnKoqyzVZzymEwam71mcD5f2DB4jr1VlSB/UHXyPUqYS2RDz
2xkZnbs17cWVrQTLfMnQKol1lbc3mLKTlqF8+MOucnJxAY3RzSFYnU04N1zPIyMkCDQLTPsgZc+q
u9gaLOsArGBsH2N83CI0oRZBQ0Seb49/9tgF3EAAMRiQuThGYLaflTRObGk55Tk02VKODoK8O4kY
SsOaBStgl3tqSISfdgHdJ45uMoXW1rdvorWxJjV5P3wuzr7MbddVaua8uMQL0vcFbLU9yTIJ2OgC
4igIQP731zOw6Scrfp47gKEx61acCTgciBP8yF0KZ9la9qykL2y6x0QgYF285+M2Q5KPrw/inLWJ
Jyd4qJf/skcziPjJZkknJQMGldVNyZt+3aPmGHV8KEe9RMAOzTWg0bOJkkWkDlbmYVN9G6Rty8yA
nzERiuScV1sujP8YfV6MTAXyRzJMZnKnPoZjPYhOf+b6jG0uwrEARtoCtLCM7QqnMm2DQj+qWaeX
Iry+fCcPbkxWIB6rp9zT5NI/urTRifGuTZ2uKb5Q1vQb82wmu8syk7SEE4WPvetPosD3yUlzFMpr
/dek4zhJz2GDoB80SG3w8vHcLcyVebmooL1J0Skp0/9cuRxfJV7gmHX9YLOCq+OeLaRgXoZT7vaj
XjXvnhAwmK7AZuTEW8OhnpzxTWv9zHcg2++E2S+cehmlxlGacdZHIISsRyaiTapqHjmAPzIyYJjM
rh/4KmOh6KpRjCOazSQLtu6InHhf+DxVPE7bhvkLRORNDaIFdehPTtWDFw/tDThcgr5OHlvfuYuO
jqSIZSSCr6rBsSlji0mIhi7tJVVCaS1whBYez+6DVvlYnRKWpU+C28Kqtebnwx3mDeecvpIcUnzI
npqtcFMxkGLc0i7s2bgZ62UI3zWd0dFRUzMIYC8zb+VVv7lv2d531NzQDcs6pYP0nQ+RiglSz8H6
5Ub40YGJrKKR0Z9KwEDrKlNaB4p8SgLmjZHuDqNtJmIHTmXT7jQxyf8FxOoApc9nGPLLBl3W4Pk3
36QOUDN20tS8f+D++R4igLO+fiHsSbZ9/DzuXZ9LzICZRvqfTdGfj0VOOqQse9SZPyw/rSpgSakw
aYOQfk4g0tDgM7tUe91lmSUZKb5ewa2N6CVW1agOUnYeSn/eKYAYZ50at3Mt6bfaKBb3L/yNaYxo
aXpKlgv2KDToTxAA0dsSR1coEpYHV3hENL1QQpdmnvVsjjQBUkedBWAwNMhxGwDT8emL1nT04/pa
KXzRPEqFSJpIOmyM8SpH8AtRxbhTr9H5ajnuOgxTDRQWnct9Qhk1n3Hy8Btr56vZlaqZgPQNhUPv
bIbtl1RULP1MiK7pBwxcmtWTTSUXJzaU6WzTNi315gTAMf/BOBk5i/Xm/C4HzcbfEkhTWU+3KmFq
gadP/o42MNPj2QyV0VAm5r8xcoWbGnAqzYACq8tyV5tqtXaZZduJJDsVrNf+0ouTMWE8Xm0w2wsX
gAz/nSHz8KpW1/2YjPOAaNbBGWUozXPsx+XLk90tFab7Efdnmd8hAvfqlJRKp0Y9JiA3hDOEYhLS
77DTUTbIZeX8lcYugMoFME+2B3329j8GaqmrrvQjsAAHJ2lnMlLvtLcQKTEqMEUFvgaNblAVBaLb
GU4Wfu2aZ+nxbox9p7nDgbjjVI7YuPvbWWUgruTSfxVtMjNGESR2I3aAkALeC+pjTIe/h/WS7f0G
ozLuOs6fR1kozfeiOOJXDQJExez2U5CZXclMSkveY8b9Zt/BMcWXI5jpI/P1GOs6Brcq5sBLql0P
aYtc21N/UDN8HLgMx6K/7M7mIkf7vNN+CxSm7tyCt5TT27qIANwB7otQCy6wvPofx97oZ2HHCUsn
NH9YUrOBjkTIgSHc9eC9z4c11u7LiNXBRF9whNxn2X5XqkvABk0deOI5ZnjfaQLzzF51eltuGy6K
DtyioMZW4kDoGXB3t3o9audynZIZAsNdq7QG5Cz9qbrchZBEYEcQGLthsJRBixLSQtsGGSC9w1XU
VO4xnrSxeP5KyeM8NMCS0tJe4FQhvOFskCPWlirQnCJyEAjc4G1CqjOANt3RgEezyz/H1rdqgfrj
DY9o5Bt1DsDasquNWCxw2zngm8/LFJgU43h/LZbYMDMGyoLa2Lj6VygThz9XhGYrGlLArpoA5LsV
oKuRJXJ1d7DeZp6I4/fnQJINJJx7IDaRxskg8Y/wPi+IZv5hsb9XDHMaqxg+G9LDdqDzGcT1HAlb
6cNte4vUj+4KV2e+tsKDc9ZLfOG0aMlH7wpaKp54dcByqFsdhfYe3ntolTct4KIpOY5XdNX+7G3o
gZnCf4Rb9IoZ98BKVsbjoxgYGIo6Y3RA6moxlp54df+xFAFMJltN8Ai8paVl/at4d/OK+vt4u313
DBBySL7nU4n37vnj4cIad75r7pazfKwaiu2ZEDSRfH7mNqEZBldMgGC6i4SIHrYhB7+RCxBYSq6x
AMGOKiFYhxdopqXo6yMV7Y9SeKH5wDaSiHWO9LBCpRr2fijyaGILEyUTfPlFeV1RS3n0P4UTdiWJ
AJnggTiZj8oyksaiuhGS3Y0tDmZ7Ye7jIF/6mYvStY6OIbp33dSttAuHXP2MWIvj9xF4ZFaoU+/C
Zf5JWgRglF4KuaPuL6esdPNFCX0eeQT9qryjKpY4bB/eWcufkn81M6+aWciO3NlfGDEbG41QFVrX
gRDMyFggjwXlF3b3De61GH3PvvIal2edO37Oj9Pi5QLfCq8jhT9ysvfNXj65bQP20TkNibEPTSmn
KafEMOueqeU6W2JbjuCuiHOmTEkkO0slQ+PUW5nwQsWsmoBWBi3OvKJHeutA19pT99umu5g8a389
/Gh4ABJ+1H4yEuXpEWFLCsToVra3U/TNFl6uVFr1j0uDE0eRQAUB1xpQLMTaNQV/s/qo5j1CGvkQ
KOR7K3hesHWdFctByrTtWicuwVA7+ttQLQhS/nb5+DBqFAbtOjvWVkzqfDYuWuIReeSkvFd3dnWh
LzTTfIupxcntBk9/ZSVxrNFmFQc9vMDRDAyAwMNnc3aIlXRDPWnjHGydkJGocsNrNXgolFX8jdLJ
3A5T+kvhQuk0IqYoLFqClDimNELmhpAIrtB9VO9JV3oesV6b29MTx6PyUzRf8aF1EA4eOkTx6rdO
/fyGNoQCvOXKl+2IWs7SC7n7ljosJiEz67IqSVFANCOMxC9VLvS3z+hK81lyH/4ls/+x1D3LHbCL
DitPkSLI2ba545RjEFipEBdcxmu+NktBbB8vQhzXChXFX99SoDzptps1iulP+vCc2lyU7SN86DDj
RHK/exs4vrOscq/Pz64rHyhZzYm9TwxFELHoyf7d6wBELYVX9nBceZK9VSkAzfXx24luX+l+HWIv
3bKe0pIRQ+Id7AGSzvo60nxmcYD7P5YjDd/MTjB9TiZtIHfhOVy/d0O6uOv2xT1BdIVu0QwKiSS2
e8fn6hKfEuLtYHN2a+5Nf2ZvyYOyZWSm9ShZpGH0pglIo+mXJgp/0TWHHoYMId26mRpXL1jj4lDw
teUk+Acr5gnsdOwA2TShmqAoU7dVlHu848T70BrldeRM88O4cvv0pu8bZLOle4uaGl2QbSudbQc7
A1FNT2lDeFMZz5066PxmfIAKVctXOMZuwW4AzMIogpqSCF3BFN53IRuiUsXrIs8NnHbEC6xAYNjp
2uNdxBYNKgljEPAfzIcYHbGvZ26Z2nIlCkKMKlhX3XskDeB3yRYSvyl/dccHy+3fLX1++a5ROroy
aFVgLMzyw9uPKJIURysAjGic7mNBS+vxy2kVhnUmbTTVtWjFaczNuQ9lrBz6banlubJWY7Y+BxdK
dGuTX7Sw/UVd9FsWpcPH+x8UO13DuBoW9mIFZhqfI01bt5qI7N/ENalv3Ip2CZ6QFdE0s6yU/bQx
AiFTOtslR06W7lIflPZkRPQ+SLqH3GCTVAkm6dlUUg/nZXo9liG2IAawg9To2zaJqdQWej8wJFeT
gDDAn4xp61H4NdgmHUZHMQYsoXGr1TDkkF6J+p3CtW7J4cQ9iCAYa/tJmlKAwu4gd2XWsCviAYef
uKvWhSP5BWkbNLmlC8sU/R7NLqF+2f28FhTId55DbNWCBWgLf5CGIi9mI2jrXHcbeqIPIqC0dyvD
ZbWhWt6S5wDaUSl6n5Jx835pR8OJpcHccjZLM8BxBAw59/NP7xXQqxupojwdtkjxvpbQ56VtheS4
hc4nsgc5DMc1dlDjC1MqGYrElxWzifFpq2iflOgwN+MG2QlniwDoNZs00dnDoNGKke/kKt8sDsMc
IU84lmsZNG+XtVH7BqbJiVOPIOlIRVGP27KXZ2/btXYIO6O6mngdXu1366Y+PWquxZehNjESboEq
pdEPaheSNrVkKQnsHCjtUpU/+Tt75Ttr8CRBhTc58b5SAB26pLImrfmsFj62yoX0PkGsKjHjcsdg
U3O3FeJmmYYzdooDpNZAV2fHLBu6J9K57raoQxI8VdtRENybipwBB0rqP1thWg1M6VC2IjpKM+FN
ltZB6cyIVBtWwXiJz6xvzmvKBpdAXI3j6Kz+vSFzeic3L9ES5QzjgzRtVx8yVudS0QCVjv/pglMp
CrIRzPEXjFhh3oJCusYVBphxb2c35Hiya4qLHW+AM2k555Q7y4I3oaEAXxLcIaa6chcchfKlUsFW
n7eR8b9ant/3xcRFP7uDUOSlhkEzTD4tB2N327W+Uagu+pmBYAskqYqahdrTLun/1Hd0lsPNg7a2
ip8sxLVSI4lZDAyupZRubzjgzCJ9STlk/9qBY5qVYc7NafLD9d+N2wVQ6iy5M/Qu895NnLlxZKsQ
R48nRrx4w/ToXnXTu1XEiE4khZE4TaqREOHB7zYNdXvu06jnLnfEVLP0SHL79hvtTXq051k0Nnf1
FMlXXonDVWRI8ww4K95QqbfUC58cMV96ToJYZ81lTg+gyJldxdjpo+KSVOnVk3pSl8RJOdqxoKbi
eheEr4zo9Q5rwneGKUANSUiGskYdTK2EerXu+Y6fbf1rGDy1gY3+SrPT8ABkJgiALUxaku1BaHZf
oxBk5h23jfGadLfMuyBP48umnU7Xo8wfYgYfIM8cYEEs/LYCiqxaj5fC+c2hzUlHQQOhwrmhNbUZ
ZzPgCAfJ81HZKBqRxFAGmiDz3vR3n3czTO2q1qjqmD6/sqKhmBExr6H7xa6aSIx2pK2SbWQSUra1
sMo16yG3mk7tAyqU8lZeoSOdsfAj8f6fHlIP6Vs6Av1P+mHbMjARmu4oqaRfLJXEtlPmML0rWsZG
j9zC33u8P9NDh6TB3HWCYeIFQ9ADodMjveIqerKy+i4oUgZL7ITecfrFuz1Je6WOf43qLgL0IBi1
677orWpxLsf3rfhbvquHeeNxzZbWqZuB4g7mro0WgIZvzphp7IxtGpY+xRnw9QK+2eL0fUnzzD20
xkWMGzn68Xa3iv5/JkZDYTA4fv8XQqHBTH9kLH4VxUzenO7y3/c5DcbsxK0EoBkx21TNGVx7xUJV
fiEyzviTIOPqou67oqhONGRWaVGpldrq3nqiUNXT3C5dGJOcgFlpJCsPwOZA6RahGPxIg5+g6Rrs
9aE2QWXS0njaQH98hoMjnXJKgOsw9UfoRfLzcGp59LN39Ri5sD3UKsNvp8Vw+Jbl8qUVg6ZTjmoZ
36RJZCbgD5X1Q/DTAUnmrOIvvJvILJy4oOKmKaZnsJdWtCfLKRn7TsacTmwjlQI+9J8SGc7Xnbon
NCvtPCXr+X3wO4gln6l/O50x2ve0iVBb6RziYz9XMUyeNDZOMvx2lXRYHyLL1lDy3WAWJMR6kIT0
ncIgGKynIT52k5DRq5pLAaKmcYOL4hgCSWe3/VO57B+BBDwF+GBzxzM0izK0EemTkgOR8xvhcnRX
2U/WXPeCTZmCtXgJdmnwu5hpEcfY7wPoIsaZhrnx3hk829p5S8p0LcRympiqHyfVK2rw5rz0yO9M
DKm5u013i0YWSIbA2N5n5Qblyium6gbRMwIaF4bhD47uM92VylM5QFWGwAZ9mQ/S2koQ83Vy/9LO
hBc8UegOr1V7wKQWe6oUD55soSKF//68bvEYCIS90j7wdxq6/wkITR8rcnsvMOmXDbpWtrh84ogu
muHzRU5zUNafAvQMqqK6ks8ZqaFAXDyX8qXkpPgDx/4sJyVjI0y2Vw7iHau68hafBNmQv9Hl+Itu
1ljj4/q3pL82FntizrX9wDF7is7ClmMp92RH46miHob19FAPDodCBDQSrdflN8N32Ixr+1WL9q68
MBkYTLEITj0AIVN3qjF6SJoEuN5WBB5+klprPriM4fWuNub5zyNmTcsRzCo2ELeBd2PrrXvKC93h
/ZMKuyh05GT7nZ8Sxb6S54trVKxkOPEy84ByairiVCUPtWwIbI//lJ2lQcpr3F+CqifskO28ihQW
ofQsqJKH5fAu0sAu1O4GYQERiwEJB3PX4QT9d1JvYy6+GR3RBM15WPThQoRBxjwXmry+mBq+JdeI
nzB5KI5xxS54QmAvCDq7l8VDvAb3jJlRBw3wXXVOC8oD6Ts8ZRsL4WEO6poQFKBSP5VvVAu79jGI
UF4SKiet2R/tuX4WGIYAAqy3X137FfJ8wlUzvQ4dgsHqoCaUfZfn6Mx7PX/1DFads5CYSgtXnitG
V2gc5k7kPQHURgCWBf5+YH3Rgcv3+jGdEFnjCZMtl02Rw5zdVolJT2rdmPkPNkzZDcHPoWLVdJxm
oCaWs6QZ14Ln47fMewYRK3kJ0y4M3TCkpGKGXkJruUjH7G3b2C91ETrLLNcYlz3x+e9Nb6rnQn0h
pVy1fBmgCb2MgLOsnqrc51opyo+vLh1qQ7OTMuSToqUUWa2mHyGMpq/puRPP7wBARgedqFoTjd75
h3+fDiNQq35d6TrhIPDB6u6pDUwoATdYqLg+gEVibYRtkg+zuYMeedRECxHnTwdoFfevHra/AlXW
ncRrsWckvtaeLa3UHeSgYncrbSzE2EyTXnasAR3OrR0RisNXub0MsueIGiRb9Gk2/45UsvzGFFvO
m9DieviQTVek+K0Q9G8IODLLIic11a/EBKiWRoDxDePn5ZZ1bIMGc3cY1Ri2NFN98CUlFLURKiiw
aFg9IOzJQGLYzL9upeYfjBCGrVLtSXqiXzirK+OAuMDofmud9s+dsgDbv4V7Z3ZLg2uV7m69XfSF
G9S4WAMddsT7m9Oc8nPI+ImUejubugPV100d+iYwyWxo0qUPISG+bpQFrMBp6KvSEeRoHZV4OOxb
ZYxy5+EWbjg/sTyukMpSCuDhQpy22b4AM188VfxmpYRdNZXACjtJiPNLAOStREVPXJGh6//mpIra
MHRiCEAE/NZunq8mSFQDtoFWWH4L+zbuHCfuYmEv1/eutZfZPvEDh1kdHRyVyfkZr4fqNXRjUGuZ
JhqDlw9loy1zDToQKfsE9a58x9HCmoGyMw9wgsR9B0jCVDHJXGHXp7WMbntiTINGIAXM4fdH2unZ
QJBvS9bhmtzKsHM5H3xpEliADDT/hZpfShoTpaeJTge2fjvh8qlmB+Fi+NAUcXytB7bRWDhym0Bk
Il5111Ll6tCpAQ/9seF8kanWAhK5YH1GlVhI8ciTvJRu5ryHNuTfhILF+QNcbP0Tvl0fwjNJR0lX
SNmeqcDgelA9eQyMRaSgkkVDrZc7XG5tisTEv4wTqxEhZRJZb9JP1OW5fhQZ8vZhOlx5usn4DkJu
1N0il8kxnPHbQ4UirsdAxMsRaKOEVhCr21mIXACIStcoqPNPtuY+VZpuBrzIWNM9tKx+cUl2qU3H
f36eI+9kpQ1ehYzsCXW5R3UoEsIUDKkmi9Enr8bJeHm3h+eCHeX3auQs+j9/SG+nCW7Nze37msXu
AO1UHXjCuZ8DZbdLuPGc1tzkl/RZIt9+b5OtC/qu7kzHTXNYMT0BsZxbbiK5DNtJ9vfD/P2/nDMb
cZL0Fi6VcNVIcXQBCFnBrDf90Wv2gdMCzKf/NYdrhsZxxiYfi51F7kye5iMZrWiEdW7bDS51M8DQ
Ug8Zi1bLxT0NWAeygAMuM9UjZSBa6lAOLvX2Q4So0/OHilAYEs6wDaxYFsmJgtIkrBG/F42W7L40
Z0vW550NT0/0rjx5I2cvRQ2kl36FLtm5ljRh1xZVx2cQjoDFMIXfqJWbK+SN3MBzrz9be0eF4ydl
z0D3+K5kdv0P2LUhMeWihAWVn0oXuoyyiiup4KywbF6+EkX2WlF7q66R6D10Yxpf/O9AWt51CJb/
m1Js8Qg6g51hFu73ls+CpqUh2zgxtjBotR7hIvSjqGM8SkHdTAgYpWtr14W1tcHvZ+C0NCGPQln/
kPpdUVDzg4TruvWFUU8OO6I97gYcTR0P9vHsLJ4Re8Yh8X4clWqs9gyIjPplwxOp1hspPrzyIerX
lOkPjDxwHBhUbV2L5AIba/oTE5FofnixtFH+Bh6iUhwXsEDd+mgb3HnPE9RckxUBqgAUmWG4oHnl
zu47Xb1er9eeHPeayOGd0aIzFBU3gWFKJurM/codZmH8xh2nLD04XqwvbWUxEtcV28zVThYaw2OE
orIdkS+U2S7iz12d1KVuZTw09g6eeLassHC+SGsADSgG5HIEVYh0yp4Cmw/5OkVfvNAOwM2s9tiD
Un52eaNHDDC43/bOkoSOhy4Srah2LWLMZIZbUOI+L61UMzs9HWYtFsidqrWeG3bVh6/NqMQfMlGd
9sOze83y4GT9q4gt7AleouxuwgcjckKojrKdkMRDaBov8el6do90tkVLvuQWJ8fldJqGhxke0wCg
FvusloTSh7bxzMsJ2Va3+gY70yBykJi+23BF2jA2yYDlJYZf5k44abeArvTQOp90IxGz2ERL4xMR
1sjNosWBxSqPUh3BKUsGwQMRSFzUdr4eQP5oSxq5gE8jdlxeKshHY+ISNa17qD6nTpQAN6owjh+A
+wrFX22Itzu0I01rDIx4D2kz1OwmOPIiOHoCcmVuezPqJfOA0CEspxa0T0theBFZrAEP9lXW7Q6g
qFKrhvYD/gCUqOau/rO59m7ioD2qNTsv8o20iamfkfvbyEr77/k31esrIdhd/uQqtwfSN1Eebn/v
vwwMPHqY8gyuWREfk3xcnbdbR3+w+f+A9icJ9TdM2ekyQbsQygBtc/s4yku5pcMDKZrEP7+mUr5E
nqeg1UvWzWa4bkb7wlOX+/XnUy68jYuRRc5FUX1IvgSUNmuGWBGhKSc5K6Z1N95UrE56eFtumoyB
2ffXF8RRr/Bi2y2SBsitFkou7j3vqvE1WWorvxwN/kSFYT3EAcEcfGSboJTFtJHCwtD2hE6jvdaW
qzwob0TjlxPMP/54iPuUp5AxPDiJOnRlGzzTEop0LR4KDpVGwJ+Xo0HvdGBrX36i6S2HmRMI5vGy
FTUxUUusSEdcz+XewhHy0FAjfSG31i2CRCArpv1/Bk0y+zcGJrNiRel1yUwuBHL3pPM3HgEAYAm4
emwox6EVCu5w+OcMKmoVBteYkooJ/0GO+SO+N8lo7J7wpwCXY3/4Qwu60LmqAFJ80eOLqLTy82b/
ebZ9FxP5RvxSJacHzJ4ps6g+4t+veTwuwN6+6bvvMbKh7ykJddPnIMOWMSVAmV3Xdp/fowmRZcTc
vdzfYwfFdfaTgNXEM+txz/DFWcZKrggfHIxWcEclID7PqqjQgMsJQAPLZ8uF8o7of5d9fM8LEomL
4mJsh60GCJYlkdcOZhcXC69EyzOzhV/SdxaW+3qmw1avsWeXNrXJ6uBkq2GqurWzAr9pqCqTz5vG
NmXCTY3qPpAvXBGIU0GX1DGfkpUdtJnUGxKEWJSkTg2AddmpG5Ox5bXHR6v8M1KMQKk9NtOG9zSG
KDqT2CQvSZgxM7dwjcUzhrJgHmd+O4VKNokePTVt+T2scxTavTaLz1oDXQM/r3FGBqhpteRVLpEw
zoJmSbiqi9h005zeKkgp8k2yTMKMvlwXfW5qDWmYSI6iujRmuctvgZeh+p/nDUIe0AJOe8DYMQBp
ogj1NS+FLdBJPILzC8SARUsvgpMjY1m64W1PsWecMw0zaZreaDDaKXWj0f9cZOHPAgQnogazlhZ9
kqGgDu4P13vkZvSC3cir/cAeA0pFZzYqp9pAZpS4MxtKgsXHgJRCYHo4dtZP0mG5Vz0Rg6FTRzXr
q7GZEp01WNqxrRFJwR63sRTnRp40grSPKiZ0KtrM0LF69EINw1fGIrjM6f4Wzd/3du0CC7L1A/hO
4uBnksqySuy4X+d1KzOby7fiECoFMYY6PQBnVmlG1TMX5RRwil2SNuBme0qvwqluNm86MCJuLEIp
OPGdcMcWjaH9kZC4uYWXHQuUc7N1MiYNvGTlrskG+N02f5m8F0TDK93N3reSwixvlN8qDse/ht3j
oyiMCz/+xnPEvy0tIYYzpJzEZDAr/vOBo7yVgCTK5tHkb8dEpiH+iu2iGfrS5Dp5E+/td4yl+/wh
MhhCcG1TN4wNn87Nmj6TyWOZaA82ksPhnLOaKzfr7enEQnLxEtIdUR7o426I6eEfhF1ZVVOsiz/S
iBgZw1pUsYJeAIGrMbsFjsfK8/UQkc1FLzXGF1Wvc7m5Xa1LYZBEj+vpb8vlUlpDa9T9pfNUjeRW
/N0cDZAcV/HQISDtxJZKi3z6kqtGKutbrHq2xo9a0gbfnIZld6wNeGws642nkXJTIL6xYjNMY6r4
pyIoxk4Eo1fySm74/mEuz9ANkrGUreGWB8imT5rnKyUChhO3sHYjT8uq6fbIlgysjkNq19EXE7qt
cFCskMladz6Lmd/oFDsqH8il5L7gyh82HFLXtVt1HH/cbpddDc2dfA+HFQdqWYAPCac4EPvfVrIU
9GdCMKSdoVCipTxk566QTobLCvpSgYQm8YQvLsKpjan6rY98Lhp+dxjcf/ZqlH1BkMegtRXguQyo
q19ra7Lr9czD9DT1uM4s8avyNbySIt6hh9lNWFLQq9+1YK4LBjSQH+JlgmsDJT4HEvH6aKhsdwyJ
2G81QSaPkltFk61TduyOgaUIsI2/DN0dVU63raSMHV23nLBCtX/TZ/rsZC7WhqDBg36HeuMRT8ka
X3hZIaQ6tEO1qPWfSE9uTzLoPEkLjstdPrpQ1AbBfl28pvtJJD4t32PXtQvMWHIi29SlPLzgCAu/
YMjwaqzRCtti4Hy1CUXnZnfMYnkAzBUCVR8IkiCD1PpjofPH3jWxWjFx4LCPfq4hsmKEecSWhYuQ
JBFijsSeBo7saz300APSQ/qXNadPeQxQVeyvdbEvF8OVz1arZdDSQTTm+XUJWsqtz9CVgsDVM0PE
1ZL4HvwoW2sJNviVwOOxHAVuc3iPgEaTIKiYWBi9zm03cOmR19HLPL7CP14g1QcW8B+4JsHv3J8Q
K16i48slm52uOB5hKxbMovwdzNwkC9QQjHHGG3cKt4cs8sAsx17U37oGmiE0w2XCdE2Tl54kIxvq
oFyfgup0MqFqEe634+GxRZZ9N7WevCr7qtLgp4QFTQX8hz7e2tsSoK0XxIyFg82ymwob6uXZ2X3e
XxBX4gaJMwc7h1Xpl2lAeZ83NPbV93Ea2OlZ+/xVwiJKA6upSZrf2SxeRlIlCiz0HG4ydOonuO+a
GTE03CJDoCmVUxBsc+QzDDKJ/KBKA9Uaq26CpFyfhvN5YU/agQt0sJNzX4Knl/Uo7P+UwmLXGoJa
WMn6pHWrDzNMWqd+GXR6tjbKTIR2Y+4PiQQNKU2Jz6tUsUJ/MLJK0uhqy/29a2HYmcaapDwmtVxi
w/zM7ZabaSkNXVtYf8pRWFobzGqrFKTbXU0TikI62nf6gYTVMLmaj1/M2miyfua8FceNtlCinpSE
EPAodESHVMXH0fe/pA4GX+D+oy9tZhtOIrLTthG3+UZIdbN2kzOoaRgWJWjkoWfvz2DA4cCRzgnI
AGnvL+er2naO80VAeEgl70NN3l+ic5EK/UOLZAbCjKTcRtHQ/W+L5djZ9AHhZ60YCsP/wJCFMeiv
793qtgCYoJUptVarlzOdrRsM4HbDzU5PcjvUX7bnCjrLtS/xfDojzE/pHVZqjphehjxoqefC1t6S
i0FkdYGWTu1lOXpsmMvKJt/QLKsYcWGJqGjmP/bFkzJ9kVSqs7T06tRfCDSJupaZkTx6NFRt27zf
gYfk9R4IIiGFG+OpVRn11eEGKHPbHgTjhld8c0+FS2904DmGB++2wa/oyE345qhz3N+30kt7fypf
GXs5GHTWh2E/eGKqhZwDijqbEaxZFT3RQfVYNIrhEtgzVUTSwEbCB9qJ/zFgZV3GO0GwXuUnP5X3
qmy6viFiyO4IWOpnpxKuyLkyiJp9jpHqT3D12r3pVO8ouWbrUR9lNNAqJtj8p6O8UfWOR0E9yqaz
u5cJsxo0pYBjEN7yCPxJyVS3yAMTg2Ihceb5xNyKuyY0ZIWUgxizB8+zLvtt7reFttS6W0rkOH9y
/7AXyNyTUIGDmd8CuCIwxYKSStItSa2iE8OrvZzeixehkoRqN07dbVCChmiMMRSrVMNHxsZXUCEd
p8pqj1IYz/U5VweEzZyyCgZoTTMb0TOjxJ5PjX0foogD/tUvu+iaofEIPdBFBSpGBi5jS6AKjqQ6
ivBPgSkpq9WWIE/4pRIwNGsp1R+XyJ/2TjFznsy2995qznRZuHSi0OPvhi6n8QgT9Z3jiSJ/tc4N
u6uiQh6eZa1lgD62v2VLE2ZJ4DcRzGFJ06jWEBoIQ/+mhJL/ZDSrylVojiqmz+8b/uNrLF+AiPDo
uWy1nIC5qbJG+x74jGmYBBw7Rj/eZmc0hrvOaCKsTWnwaGWCLLC4Ps0tjn4ky3FIZQzyq8PTQck6
HGkPGJjfogxGYvUJALdFjFQOwA5kNHB79Ndzl9/3qr/swAPhrq4EsYm25gTh2HIsWagjaTNwgSca
AiVbcfSta/yNv2p6eRsnXgUj0caU7swp7P4BT8cwc6kNnOMKzzx5MWsNjGNlBHXyQ5vrR4xtU7WS
2GCJ6QuqQySiS15VThi7S1Kh0BcaJ5ydcAiARSA52+19ICjkOn9iwTDzSAxU3Na0HrHttthIe63R
sLJChfYHPBiuau4cOG8jkmJ0xHgS9dgEVXqubO5ZanY428TBwpkMhhn7R9zWySM3EJdn2ZFOnlW5
BLG3rdwj9S9UdXIK7YTtobsfdSMxgO4qonT5D/vyBs8JGt1trorzneMVcri4/jcCVZlC2d60S/AW
mJ30qSE50CE+tvJWreCJI8ySqU+3yAdzYF3mWuycWkRZZSfXTe0CJQQMFrWNHPSpQ2mX0LH0Ta1O
eHehSAT2AZKZBtIeYhJCASdThiOg+U0a3GifZ191Jw00zg/bJmp+GAh3wKjw+ryL7DJ9zZtBFd+0
DRv+u/HZmLP/WBWwsSACG6x0GGu/9GFwiCf52IGWyn9OFVrCPFjdI8Tj3Gxa0u2bLD0uF8xCV9z1
PZ3nmMonMvedAuH/BRALOQhuATEWXzuc00aZbZarVauPGYjMjRGWP+8Tqs2h3jPY+ccpPiyKB/DO
2QvZF8rJHetOIWJ622QFgY0pg0N+IiRfL68wWUQdD1r/hkjUrjC4o0ZL1SExNayWL+FGWYCuC9XK
LErj7mPtVl61a4xWjoTG/AN9O0XtnmrQlzFQraFGtUugjkyoEf6G/Q2sMfeM5dZuIGoByqkbxOgR
KLU1XFCfFEMtzT6foAmI/y2xuR8ytZ0MrDPFxB3iW3/ePt5IZ8Im3AKNwH1LFsri/fBv9CJOtmzn
1M27mUkjMgIJtzzC5MhgxuDALAqFBZr0olN6i8I2wYREqgskw8BF/ahMtxK500lBVNEK6nu7nHeB
3GbKqyQAa+6EG4kXPHliWZ4z5OFqLgOHkYbw05TKywBaujcBVLXTSBUYAAJ/fmLUz0l8fcZ1CL7o
3ZkG/KSv1vRFbo1NTHU8UMAHIvZziSufa+UsQETQxOSJV47r2aaL0ouYlyaFWe5Z0Os1CrOMS8RS
14JW5UGaAoIDf/7fkDgCPweHXCzoNyvEqpBH0spdA3C7m5b132wlnyC9azvTVcZ8rXzZBRBAt+cj
Br1t7pCghJys+/EEi4xW1a1iheqZ8WWBjXd3R5X3o4aazarX6UX+VUrdzKStgItiMmBIzTYZEnqy
Dv1DmWps7P1zZbZ0MkKMsgNwewtOWZ+q0RS3CEPZM99cE/j7+85wrIO0WkF2aIEhEObWwB0jD9AG
w5w4/eSpWbDgoF/ite8HnNXQrL3rb/xeNZraWK4s06CgoIPQ4h+kWNkHAbf2RpJfowi6sY0cogz9
kyOmQhCCIEEPvSZmSZeK5EU2oHlnGXtBy0vNLFjgRdY/htnKswhpSCZTvTW3KqVf5lYDeheJnGW9
DEDSMRtnCvA0fKkP1yjokkod77FUONkQNHMGByUM79/gUFUzQZZwfmNvYbRkQ+XRAK3HKJtfMJbr
PCfLuDSn71uhgseU7CZpAbopePt6FGV8vewxFIqCBnq5Nw9vKHWggX3PToNgZwcjo9VhUU/QGkr+
DXfD6IQDAcrPrYaXp5PdUhlaMXRj3391Pdiyd7vfKw8kRZ15oTt/KYC8f7Mmf8uCdS/i7qB3CoEP
2X2JAw4ac0ZT8Tq0Dx0tw9vonhxe3DFkVmibo7gvXL9WsSa7sBNtaHIvuyCwAMFEOIUyShBnS7d7
sIErADKgyWVopbGhJ/JkHRcbJAfSFqDIojdcMAmNOdXeNtw5//yFN3EYV8xkgmbM2kAfgGIHzR99
GjajJRu8sW62W6oOeW8JSzmEPdMaVrTsYy5IOucOM9STDOCZyvPKhLVV9RtdATEhcvts2U1QbAXT
4vME7rZLZEqEFeGWnUyBSPxp9h6u9NDV9ofDgT/2RAUZKJ3b0YSx0up3xvz0HK73OwZHV0zLM3xH
hfGbzBhg3CZtQ/Q3cXyTledpqB+mpytSboX6abWFaGKWCloqLrdxUkew+j4ZqNpNOKJEkaz0ZjUo
9QJp0wEXqKpEg1FIDeHNoKaVTAqd2nDC+b7WWuOPUKf6eWSSRNqltxLP+b1rdBev8NrkATk5sCxb
9eHhbctvEL+4sKqyBSxgq5edeN6bATdFa0bNF9oSDknvbPpWK58akN4D0WWCLyzMJTSTIygwVo+z
RHlkYZ9qbBJ5RJkttJKxzp1xbIlJX/P0oKKCRx0aucLEED5qxuj4u0Rve6PWd1PtCXGtjjIQGHGv
WC+Fb6OJ4gkiUMHylAvEZ4b8N4nO1z23dq9QD3+fjzWQq7b6McFL21xRZHz70eYvv8nBoIZ1HySe
WnCHQ2ThxjmIweGsknkmNkS9ycAg0ULETx6jaKzJTSqRboJzUAFXKB/iKzL0jghxesKMlktX14Dk
HKZByoK0AjUurTXoHOj1jsDO7rS1QB9lnwhYm3C0jeNC0iFkE6JaKAPL857FnDpFvbaHZq7nl+cV
BEThXi2MWClUwzCbr4WBmJ1HmFUNmP8yL8Ujrhd4k0j4t5xToBxAb+JWNqPgpZ6TmVxyUw050RTG
Zr6PFxdloQ5OBB/zh5LhoZXuueFWErSQrtFUDq0NBiD3Mt/c0FrskovCfRBGCvNoyg9+SuhMEdmO
cDAPwuRYgD/5sCKJWswLbApjSTR4C6FGw4YyXAKedrB0JdCk21HzdSQzW3M7Qh/LrMT0NVjYiDNv
pOsPT3sVWASp2uVn8K1sfKBA9vGFN0GbmQTqMc/KdhRyLSFSSiECxFcHPv/u3XbS2PAv6ZjIXkOD
XhM8I6fn/eD6NL5xyzk0/aeMNUBDchOmHvVIqlD56TA3kjhSnpJOcWU9jyBsa3kDVlenxHJ8zhN9
IL8qayQEuBYDOQPZmbX573hwWzmWibzDQtcUKM83yru3NjpT5DJYdGlzJ0AKGUr90k0gU92zDdO4
kIqdYU/X1XEOfy7tDbvDLFvgTckkDBdRtssnCO/gVuHifKtoXTz/9806v9hgWLilqjSh2BOlegkO
2j0E4V8lDHoKqQjnupdtImRXpr69JiVVLNAbhZHEujKqHLZcn0AySGsbYIBHjAlH+F6b4xQ0BLKA
wm/BQ/jtaowpEqgfIhBDs7w2qOVpc9fjrjfxeX8iHaKqpT+Mj/gFv0/iSTKXKwFEUOhKq5TiAtIQ
AxAkkzcmqsojjqWda9jEY6NkfLOsniFhf0qY14JLFeQNlWj5ZTrctQIuj1iCj+llR8iaLo5NHbDz
S7mHy2lrxPz6Hb+roXCW1sUT97tf/2zVLbOid3tn4iJvO9otcVfrUoI/1R9hkjrpYLmWVcK+q6yc
3F6WEsU08ihrwBJ2WiIV88wud5zwA+btoRDh3ti82xv4M6sxobTnpifzU+0Qszdi2Iu9MgUQZQ4D
xbozl2qAs/X7J440LVFnc3/g0C6wh1kXi9iD024vLRrejJTO5blHq6ooo6tmwsuLZmfajy/73vBc
fPkTaO3q2fSg+jdAOG6/KC8L7GBcAg8ySbROpwiMeznzEK6PUpNJmnDPgcZwOYY/LS8fPJ/mE2FB
gWPHkOj/tggcLM5m2n53mrSqgc6NqeTZH7bdxH3KxHaa6uuroNvfaCU2BSnhQHNuOvkU7GA48N4J
czrW9QGX8iOYlV2gCkU4SFCIwNyzdhTJBd5EDErDWqKyMbHHFe8ldXRbby8ozeIs6uz3WpJ0x496
DzLpYpBTl4OYAcjYvAn3eoZMij7PNw+mWskFhQtXYheFi0zEfpVtx79gtAUl191wzdIECEswxTf4
yQ0tpDc0ri+sl+oyc63gCARwqRn+fTnxCrqpnbn99v/QXHJo5Rz7nAXueR8jslnGT7xRq0RQPkN1
hvnhqz17kUpSUJUVsZr4Xv/q/cf6rJlXvmGGHVeE5WMtjSdQVPiBW8dzj6g24hJe47SG6LGWJGCP
47ZSpOLj2SKMALEtLl9RB2qaK581gD5RcSwYpWRnLWq1RwF7iAvkwROjujp0IkNwHIad1Zq6pEVB
1B/3QGWUwaKp1kBqpKt3kVMGd+wShxBVUAY6jNNDHax15lcbHEO/X1cxktny8nV2IBbev1OY1DDc
VMEkLbqHlfVB7tLFCUSK1aBESgJ6+123ED2nLXeUmsZ/cBmm4ZCv/PJLAs/sHgK0VTSRWspONTRx
lRHiiqH2fmZXpHgx+zO6vzkAc7wMaVqZDYHfI/LRcWbXb2cI4X6Y+GZYJs3pmZYCk5WKTt0krDxQ
tEFA5gXI5KdpA1FN4+YkFtLQ7mIwQ6HcNLEcddo7Ti29iFCKEJncvD5rkJqan8IvqmhCg5DfIUSz
kwRwjGYhA/bNc93G8vfNqP4qfUnKOPrBMHWXbU7/+QZBaQis6aStl8+xh82LVZJ6SfL/CX4YwWD7
UoCCOW/IK2rg18k/Kb2G6zW7zR6UBYPy/rrtvkBJdt2egpFhH+/u94RvNBykQHHSFRu9F+YiswoS
5xve7Cnx+RnMRm1BYR7omT8dEJmtlQ7Y7VsJFsxJ/iD/12oOxA2gzYHSDBqY3QH+9OlosLF413kK
KWak5QAF1Mir3nSG5NHmEZ9aYkOEXGc5ROESmFE70y8Km51h0NsmlH+bZH+VTYbQcPtyMwGpx5Ha
t655g7b9piD+ZP1jHX/lbHbTJCztuM0UTXBvNiq3DgABQv0erQ6/PxhfNtck2E141M+llp3gBVO2
G5GitJFSkWJFf06s8W/vQR7ZRpVH7IhBSgBDgdXjjhesTqJvgnKDpK4fDjEPUMaprONfSYxQ3dAx
WFyS0vKWaOru8qmfr+pEjzHC2WhwRjiII/D7uqxSuknMGQeNULr2vV69dO8kJPMyIw5UrpEm4ygS
MbI3NFJ79Q5XCwiMmpdb+an1DUrtc2uFhNWsg04H/m+SbbfK6YFA2/k/TMIH9MC55EjnaftKhyfr
tKyScx/wU+Lv5KFzIXPFmp7nT2DM/qWI0U0N/m2GEZnBH/HmYopHQAGXyK/fEayPcRZt8ggc2/+y
fK+p1+qpGOZOk3h/ApNpKin5KD5J8l56By6SZsThFjk0IBMImdniF/UIK5p+EPu5iIMUdiymCeFG
E+eo01kI+1G+Y9IcF8p7B6IVfuou7AhDSYdBEoRRb5Ag2Nul/hWdKu3NzRxSkfZH9tsqIdOcKJ+2
8wN8eCNQ9vO2ylsE+hJ1N7N6x1q4+kMdisP1NDXe3ruBXua995hZBy08tvqKwEJ6Bjw9oLf6atNy
5f3peiksJ50bW55lDjVf19RpD6B5OqlD+F7NFT5vGKs/lMD+sMV2qJwKVyL7DDRGpKiOJrYFvK88
Yzv6BjtYxWexMe8Ok3oXIgM/gViilIwgyVuB4Gh/LKWVFoZLYwo/EdpjTXdo9kp49uo45zKpsrzJ
QS8Y2Areu6sm3Y6LHNmqJakNE9HKD1ZESZIUJgPw1EAVYcgE9BDYUsOpOkngk/8iAWcOy0yhmerx
DxlarHMY2okCUN0Ju/AeAKrpGAh27kDmksXxlx4TEfBTaFoyMZFcxQdgMtSvNUTzNvBnUh17Ou2g
gUISfQIFEBGKOG8p7dFDKeKDnIVMZf9vy1n197eC03JCsb3IT1Ve/5UFVi8RzCUIHyBUhbcTdJdh
5vzZbirUMhNrbNKRDf6rg6z9o3+4jI/w6OvZ6Z4V69w/BjvO8cZVfUtHDKgSrueYuMeR+/RKng0I
zy38r8IrvnJthpjWYQGAtD/OQcQ5MLrVj2cStI5tRxSCjnvERHPA9jdrbtsYcZDkJJrprwOyS7eF
GYM3imfIDc7CAzmgCBnL8f+NyAMwA+a4+4Chz8lXfy7w0nGJUI9oKWweznp/dyn45bDBMvpp5zE2
Jyl69MZERnbnuATBspLlI82HCcNSKwieMF0jXOguXINfiWimJh7lqKvSIeMkiuQXRTG7321S2Hwz
g6Qy1IFk+22WH6xdpRkSuZbq7jPPkf3rGoXqnLvM4ckGoU61ZHzPuUBSpy/7Iik2wzxhdFUQ4JNz
GzshsN1keRX0zbVK3IsEcnbU2NCkvLOVuN4WQaSKh8BPFyhSCNHHN4owY9zMVm6nABtfrMcKJy87
mqPPHzkx0XlmV0cMlgnh+mB/TMYJNZcdy77hz1xewq18G7DHAsXZyzMAoqGXMqTfSvtPdcV4OVOY
RtVTQRSx/dmBWYSM2ZoeDfMVI03+dY6w5wjqjWnq2vnLfKy2JO6SeaRZRIptqVDSx+Zdq7GnSyW3
OY0F+2Kf4J+CPNknfVyq1tmJy8kuT6WUNJ8zGgWf5Qb2MPT+XdsBuHbhPpZmyyglu4OxrU6dg+qu
qwV13Zge/CyR4BQjNupPak0MFblht8FTASRLYcnSWNzmhSzRtCZKF0nW6WkA66RV+WM2JTA5Yf6N
8zl/070B4sBAgoRLCiukdkaMw0bDr+tis1q2HQ1NCHlU1uxy6MyUq1bNyLDnxiGqYPsYQFJZwzJh
o+A5A6dK3fKfrS6oGm5BkuW/NPSfXVsHjokcEocqFzU2Q0anGLDAAeNJbvK2gmBbVkvgaheYgOFd
i3H8GAOJCzqiRhU4WCOszbZ65kBM+d9o1W5Cx40I3pL1QfkoeyzjNEPhb3NHMDDXu7Jmlcqoe/+Q
OfuIH2LF3TuGKErti9DR0b7HDesZ9TosAxWNYMRFLXOWlIs38FGFh2kHl0YVQP6W87Zdw9UcRh5Z
f8FYXBkk9WeJoiszvZx/9E6RMu9zSmZu4JlHDz+jFMMmaGp7vtDBwMTfqEbFmgAG+BglHKPo+rtG
idGenF59YtgQzhucapQxIaEjd/x7MvFOsid+fy6fduW0vhIMlpnQex6/QzyVg8BcJ1uxy+kNMhnb
MU4upNwFpyLxc+EYsYEPZUGbTJ6HTtyd7BAGxd8XjDzAmBSm6y1p9cy1EVZWUquYFmrmiywlt0IM
YQz1F/ilXWGitV1d/owXt2gcNUeaInpkSNbFvndw0wQPE+z/OcL/sEo+IwE0L1G+3Iv1+Auek9m4
H4EMx4VYB1uqiaCkkXS1aDuSC2f1xVr2qpk8MHby2LLgdYQ3vufSFTF8A4MQ7nj/JIQcHf2eUVcp
dWyLaXeXC7/EnJjhABuWglCfEVwiSfoHWUrzZWbbiEZDSFG85e2X6WGcNXFpgZMCyssxNVqkuMJc
GnHFLZU2B8+fNmhiE14kfDK69mO+LHhU/lafDeGzw0yZ0myVcU6R8w3oOxztmNLrNjhC5y/yepHM
OU1Kg4baFZv8rKJxT1IqCkk1dXY98STpyK6158eei4Eomor9BTdIMTVhGoT4fR3aqsVFs0/KutGU
E3ZAL7k9Vmuz+uEy9YHg9B48XoBElIO1+CUe0WTRxyk9byY0p74+jzSbOgNAlzoVCPbfc+M/2jYh
qi6MneO+TLDqXiKPBJAfgjpelfdJ69EhuMDV9s/KgF3qG+LxdK/7r8Rd6a7lCETwNfbV4wzshF6r
gG3EbvsVY8esohfBniCb3Y/AVnBOCm7WrjFSagZE1qbwwguBrEZzDRibc4xY0tHP0VBMD8hsxuyg
XOPe0QYfHMcqfQMTuT0rzWU3bE9Dy0YlBRHnen3ClKDUIqPBubNIxyp3VclvKIQj7xQnmCr+iwc4
gxkm/NNa1V8kZ7bogdWiq70sI3tLoPpjWz47x7Gcu3x+zNCRMF1HEdT/GtNBFUTUFRcMTvkr1sMj
nL3IFU1yt0ZtVrBFiZFEDJrUjso6Yx6V40vM5wp0pYNxrrrI2kHDqmhMomyxWHoH6EUcxoh8m9yQ
E+YBdQj6pZUQtOtJHZb1PpmTxbXcPRZfVPBMaW+HN/xj41TkDprvlw+4fTl1c81a0fTWg78P0+ks
29Y/Mffw2t4/qQSJLCotQ1j5IXdQiBLdqPPiVZIdzVaeDxhKO96GkTVkabrjHX+Fcnofv4p5vVoR
xNXAEextzdEd+8SnNGguViD7jmoOdSyzM+cED5gWw03Wn5/wF0uRuVMg9G3FkxiGPXU4GyVlffb6
kh4BY9g19miBsZBx4sLiHvXlUOKL1cuUpKX74YYOYQ15ltOhwGGXonNGB0cgenYvo/3VCJ4s5cSZ
wZn1md/8+K50zv/axCO8LJccvxyXumHDifaHdELABk5UCnk71H7sdGFkIWlbnJLlFwBviiawS0q6
uWHZ8aBtxCJgN2uWlau+kzYKiIxFi6PJXWK6XtFBtkYajM7IGkAjgwDWY7zdouByGKvwaCtIGXWz
tL5mQAxGYvAv4omckRGFHYfYpCmcRVM+os8m6CpbrHrVENSDnpnrdXm2+7MBGHTFOdTiRbBXibDH
0exu6e2ClHPS5nLr925w8LwFDdV1jrixo5rXMgMt1aD/rWdEaiwEJcKok+ViviY3T7TCn6R0Cjtr
ILgboymbFAt4mkdh0HmYO+tlDAg+MAbpBQwisktAv9a5ZXE99qmTgzJk/HFJak7+v05YVanfXW9r
2ELR/2A8zLtzdTJSR+81z5uVhl/JVUclXpHkvxv+YyRcUFl8trm6paC8dwsJFlOFwBPWvRqUMwqI
Sv5tkQEAD2L5TL32rYDgviGUGeM6j6qSJBLWrUxsJF4WmYcLgDUpurfJS8TbHNlvbOS/BMLuZdDO
lp4PyoU+8JU3arAXjCMC607ndPtL5BfFfH8l+urdd4hqqcUmLslCgihgawdKb+Ik+5A0g0EyUVb2
5XGA/jd8mTNS77XTKSynharZ1VqM8FR9VZFdADXggd2FqgKKD3McXBWNsPW/vLuQWj7LlHcXlVjS
6vOs7/uWRMab8BNOGXY6meyTau0MiHSZT2ZX90EGrkImgcSgIGqGEQBGVDfhcQ7H9OBKrCkUxSAR
lLk77AOlyCtuvlSzoY8EJ27PxCz8RdFr5scVOj05qUZjQAO5aDkhTD3FvphnQb4LgbqH4jPG+QeN
LIZnBwctubtjT60ukEvC6hW4onqT1Z8KoisMmTq6GCCJ/gJDS/iHfIcYz4xQl96m7hy4YemapSmA
wj5ivwVeuDheiYLypfe9QhJNUDuvrWQ/xQCgUFP85jSJ5fHLGKGx5oS3wQ4jFnkPWrBtup1iLhSD
2ZwH0q7DImJqI1KlJTX5H7NkJjKsxa+lLAjp42YwmEqJ5WWKcRuiP+gCACZyTS8p3vvYD5Azzb7z
v6iW0bCyIe8gLUhSuU8h4732lnxSGkP9tXVtozf8bXloEuP6Tw8IwuejxtTrUBvxGoz6w+WQeJNz
Kqok4gXVBwN6p8uxz8iY8tSCji5ufJW0s9KwPReLR15v4ELn/XAbZydVNk9dSn1Phnpq1k2Ackk+
C2mxIfRazdbvHhLbatmk7VnKlypGBXeOxuCO6A72rqg7XgowUDvhPle27N+M+BJqbX7YhztulhER
cjSRfqM1JXLgrnOdgb+dNfV35FkhhZe/ZW+987ZqeittDqUCALAksLOTwVc/GgUjoJ28m1I0YEKO
HBALsrnkx7qGoWA67x1s+XURyTDIuu5BZHVet9c0/VOU5W2uuuGYooFzv9OtADwShwR6Yb84L+TQ
mTS91WHS820qYE8IZaXJKrVH2Y3Z3ryMkfGSeB2cOb13JMrSTFdXPEQ3K8NLhAdfw2SaO6Gf7bNq
x9e6g/owntUGQ2eiVSMR5N8pbtU1mQJCFnmJDdlffY7WK74d/p3/QEaeDjXJqEJO0zG6phd4ZiQm
Ylup0e9K+nO8AkohaRJ8zaZpuFE3KTaoou1M5TIRPyVshQvRmBwAVyAODteYGFPFwFiyst6t2ptD
nMlTzOCTdyZRNWpgto7kdSksK9sCc+r8MD4qAfFxE3lJb3oR/dNKnvZSXs6CXauR9qlUX+MHAMQZ
yVsSpGIYOVUxi+NtDsMQfEPMsf1ycgbdSq0ZpRKwDJqNYjxAOA5ciIZ4jSfkGf7hq+wEE+mW4UDo
4Lt9E+GIQeoTApy6VmjAOx7Lngbg87Ot/uQcBWZUMebw3CpcpzKfKumXrfU1Xpss/AFDJUPwuI4a
H3dK2QoJ/X5NIYKm2Midomlvosk/P31rvhfVdW9sMSD/i6kKoxwR/iiVTTK2040gE6Rlp0EuvIMn
Prb3lu34EdDrD5/NSH/sTDL8xvAZbrmauAQ+EGiSNAHOxjUAjKGfntl96fFxDMDXnDUGXvuyQJ/j
Wsh/tpaZhGccCQSFz8cLuBOGiTGnV7iHTE9vNRDQQdEqYkZ8S+GIp4h8nHDdIpfYSGFUYseZJcKS
mPidZ9zDVuk2jAFnLJVlGjFKJ4O672wKsAnBtQ7hCZGX6I3j1lMIrYHDIBwb45zx+tYND17j0NeB
lGKSHumU5CIb+krFOlmoQFAQ+uA8jA2Wx4D4NCVUoZNWFF+ApnbdPl0gRcxZpBaejIaiqkGMm5dO
0fM9MG6AFAolqqc+eiPkzjNCcaZiDy+pYhDqMSB/qS8oKDq17ORD8kdCRCfdSMlpSxyJcNM5yVrf
CJuaGm2ei7KIc9h7yXMs6BkKCyAleozGxpCT50t0uZuO3fJ/FgTwDkcuaLNQsZUT9MW7uon02+CU
mGBndTA/mGl+dekc3SVxE9/h16zEAOEVElHh7LWvEKbuvaTre29GWQBn8ahQPmAkRvUt/f7AC4+H
MuJVSoWWmP59TJPKvkhV40Ygi1qc0EFlH4Zqf9DEmPkG0vOdhtMh9CcUUvvHMscHfNJ3EsT9xCZP
sb7ibqyDenoWfCbP53mVU8aTComGFF/usmcos3TlOIxVgqeYlmpwCvT37g4aenEMaxlEat5qpGB5
mJMwmYuGIuVTF1R5ECd7IjZrYCizEW+SBYvjf9wufOptFOqHYNNYgo4qpuWgIO/Meomo40q1Gb2K
AoqN2jpPmy2+kKOpDbj0RhtywoX8McQaKl+t+xiFrueJUGmyo4hVuB5rh6Q3V3xpfb8uaLf4yp/D
QXwusZR8KLP0AsbAw/zISYxXe1rNfrQ73XORn4PLVZ40cgZreSR48Lal86Rwq0vv5vkcKvfqHw4K
PT4n/mXkMI2fJMMm1ME0cTJ4jhLV1jW63gcypdP4Yvz1kExWpTxh8k6j6hduuQThVlA6gt38KhUt
snDOcvHijxi8HWwNA4chB3oOs6bQVA6dmMXnsmLFzR2ncnesO96RvPYw/Hmj1yiINxHiijvNWzkC
01WmnKqCDjmyozcC4vEtlAPEzUGgMfxQIyJ83yaNkpSkoDR2YecN2eSdPIA6frrc8XQESaX1Ku+V
j0xg8VvlwJKUHlfJgz9+grdQyhCC+J0HAXzmLKVOjX/9BzbRQA6ButmIXp3P3JptqmIuEEZKhH2l
AgYChyPdCQzsx/wrqeU6HDsEF9h0u9mEgS+F061ZW5ZPPWrTxUEZn/umWZ83yY9pro+/dwDWyMIj
7rTXUfW0KXUcQV8zLzHQEhGUk/54uNPtaIxe3dyvvSfzF4k9NfCnQVHkyrdkkZ1vftkqmkxcvTjM
r/gPSjivDzgONQm9Oljg+DU0DnNm4FBhWdRMxzObkkiWVHo+mKIRE8mFyfD0rToLeNx7bv4vALql
gNzpQFeUWAHuFM85rNyK7sxR6r5SOAd9i6A5SmxbxD4PeecnfazfWcCIIxg1JiPyFgveoszEzQRf
nB2vEUkpdQ5UQhKTkKTDeDwH+AW8XkyBnucJBz/C3vwh+bbcBdlESXNo1w0+WUsnriK1VsxbnK2w
6X6TFuBc1cWtBsNViUc1/lHXP7GUdgNxyzUWtczmSzT5Pxc93kvgC7OQnRK8io55VaONJl27nUWU
fB1O7Hrgku0RvyDt6EByjTUQFXf2rc/Zw6gf62dYGNBbFp/fR3n4VtbvuY3tmPz/ohLjihsOqufQ
nIOu3aW9yxRoJOOZMwRqEHarDcmGMkuIlDAyfpZnLOhKcaCqg4Re4Ui58+a/IlWfCJDbzREienvu
1wxK1qmt928pGUV8kHLMeZk+G0rS6TYd+dlFT4aGGLE/x06OrYx/o5CnIadrrbT9uppkwb052DPC
COz3bGilkzcR77uHCSa2SkGjAouATBUsMX4SMCrZoAVPcjCOFsI3RxQAOKRRsUcRlRzhwzHdGGGj
HK7ODM6pzND7srqaFlzxMUL86EMZ9CSvhMYOS8aWhZAIUJblplv0cmIhDgaxNLN6gR/ONRFBm+xq
O+BGyRrnXsRD4lPOlc0oA6Qq9m01MuqyVzGuV3UzlsW3NH0Bnxx8Jh3+qmTcfPAzCOSdcRxna0zg
uSmsXsJaV9khQ3JTARNp1LjuFImHtvgo8Fo3orLY6S7Y3XAGhMkLntvk+CCG2umKGhMIWudK7xRV
2Wkc4inkXejrLNL0lqbd8cof6TMSsiJ/oGoAnDwhS2fy9TNBjZSbrmQR/EboBuQjUn+A6HGGTZmv
1qM/6qApZ22jxixioPdqiDehN6Gko9x1zalPBOiRY+zxNuPWCwcMNoQpFlQc5vEEepuz+Vawu6nJ
KStMlLJVGKFb4I7PUFRn2YM1E7M1DrcqYbtSjxR16gNtvxe8IkFL0h6NNA0O0PmACsX3ifAjWIhZ
2YIHCQ7GSJGz0Tj9IFWgo9pzzugYMEeslGNPltUbEJ6J8t8VCejaKHDxTrQOP2z0UGVapHULFFF6
TGPaDi+9YBaPU1obi8jm8nRR8zY8oHhlHG2eVyNqSvDu6GeNY8vAN/5ly7szQwyQ+Lrpi4tGsInR
a1qnA3VFBznW7IN5M+BUw9bug4idriy/1II13LgCe01KIS2hbx16zQHnDIo/VXnGLAFSAklxukaq
JLZTvYliyYoNP1rEtgT6yHIKC5q7nPDQD6SrYn37ulbdyNefIB8OazyoeerMwPF39qKBmOVjqk9u
75SmpSzKpnNKEx3WMxpuuISiNSwoMCMDbd0PHsDXtPm8I/U9I2FIxoNffyWSvhFlMo3fZ3+Gu2Fy
q2fkdJCY6sxf4ns143NuOJBTFYnQH2vu65dZ1s+HQCHF11mBFCg4G6WTlIyATe1JQNM0YHaM3bV/
W2Hiksai8kTQsv2cPXDw24TQcwM9Oz1mSG7MNZbi75yUCjQQLJnHdd9VNfJgPsorBzGXE4xMTFeu
76U9ykwOg1IvDe1CfKqNh7reKyv+AtT3Zd0XaZzBN2Vpgmibbp2WVV/T0J0NWTO63y0BBJkljot8
Y/Yn8sbEEClWmQPpX00tJ7RlySwcMrxW/VbP3i4yH6dBcw51B9Yg0XhAcrJN6YQEH1FBTE0qtEJO
iEfYnVnKJFxnXSk/zPlfEk9YRrddLCyeZ+4cNAyRWAsuugfp05FQI/kjC1Gw/vMrGfC4mnWlTk5I
xhoPDS5BjHrhPeInqiqTSOsxi522g3z3BQib/vpNgS53n9Uot+N65Wmiic/vvcYbd/Qwa4FnrFOV
2IUhOuRXHwYWcQ513KTFry+tuxCeHkxcW+ClzzCGvhnCiYWUIvsYAaGp7QNv0PpzlDAhUiEJkOpK
Xy/FHQnziIH10E7wHlgMV3nOy9Nu7U5wTv7IOgnc8jUzGNXh9Nceie9bnyE6XjiOPImpMkpEdxTl
Cj94DwHOh8CG9JN61Qbf8z9HkqWBA4P8NUFA+jYo5vYjicQGCR5m0mQg8kMXVy4Im+eYflaO6Fwa
1TyJD3xEzI/lQG7IvnbHI8wwGECbXO9yTlrlCkKu5nwOB6UaBjYsbUdesqMLxAY70OcFsBnLnI8m
rjVxhwK3tGb3n08cMML9qIp5QV7tXuPf/BmiYLxGZyfPF//yk699fzKUPDfWIY3e7NiIkID0tJYu
sLiQk5yEdwc/P6lw5dBEeHdEIJdN9NensF/b2iFWhyI7izrBzwgyhjLF88gxDXgVg9SScHEg7BJx
rRRSlyGWurdRbkeEgZ46NinZVGDivY6tRmzYdyVYlWkJXLAm4TTmz80ydfaUn+RiQXmBexYVNoO0
N+bGTRWcFKvm++rwZz1KL5Ld1UKyV4NMx/B3e16SwDL5H/ZYrUtRhZ4otslamKboNK4JE5V+wskj
RdFq2yj3wE8kyIgPjaohXNb6dF8BGQapxKPZDEOiNLf0fpqgTnilDrlQH7Cke27VU7SaK3vcMrBQ
bEia+uHTSfoYPyg7uXboD0heSE5SkPJ3Ro9N3J54O72Oe8+W3aWhS30L2rY/hUGyYwYo5r80cbn3
1UEd+fQJXWPCaGL57nTnZdHeBhJnYwJJbTHv40lM7bzcORTbItbI4kADEvUrlkrSJ1jqaWJYNK5j
U9vCbfK0s/ePPBFYLIt4GJcCYhOOm0QJ/fog5fwF5Yur+UF2CJGie3MSrV3RQYuNLz0Vo7oRMEYo
kVe9QGzxJL51QIgEpGmz1pDXcJCF1BCFywy6oPkKiY4UEUtUoUKXjCRsj1dXOVY5X1bwjzaH7OUi
A2gslZtxGaWucwoRe/r0cSTM4bRpztAFpoMqeaiNuk7oZuw7MQemqi6MhpiQBZv2oyIjtYnGRF2X
fptZylJn+8cekYJ8qVcsSNEd9a0aMZLxG74OBGN3vpFNCNIfSm2GJIl+LbRygd2U6fDW7oxTzxGF
o2hjhG/YzXxNcyeJTCMAw/GLJMs9eZDRAaAH/e5wQJfOElvmY/NykIQOU7bhB66E6aQaHRNTrogb
OP5TlS+FkjcyPb1wJf+IUBv0zC8Ikstg4oPWD2yZCn0l78o51rT1/7qLWC7o7w46AVCx+lL1yZVX
zA9I+Q8cH5y8d4dsvvMS8c65RGiB/r2stLsWImNHrXz6fp46tq5rflQdSYMNUqocZ7UYexnJBZb5
KHUz0J0jzKczXpxJDe857JEQT/u2+YcqL1wbQFJNF2KZ7jiJR7E8Q8RY+aRZ40F0nHXDPzTVPcI2
OEq5pYB7BTdONJmDvNidJFtRJwa0kt0alFZscRNQMcYQVa3wuGDqab0lyMEbfGDBOz9Ep2pyhSmm
oPy/mmGqdowJAvHcaD7FzQeH9i3PIqVKmu/+Al8rknUfySoiEAeBeNDG63ZpdcB8V06iE6GC2niE
aksYvTmKENIFZgnf56hWa5b1zQujMQiidMkd1YtiJygO9OQ9OhigVIxtXJ9K5Svj3nGX223VGuTr
tCbed5XwNDv6VoygsN3S5Qpug+2X9WCXwflhV8ExlbYv0DNQBmXmR8E/DfJ6yL+D2PieggD2dDQW
wN19w4Ncm+PV4Bi6+ZM1+72k830wGSujK7637Dw/1LB25QublJmcFhynQZnRgH9gEjBqcjz5w1XN
qqOqWWFfKs2imiNGt5JU30sLrhCF1FM5aISwrA4JvP0tXs0POjlzIpZbdtYxVZdLMNpx9MdxjVId
qHSUzJac+R4mAqBG8J36BK+dDBW0qJ6nv5jZQwDaEmoufE/FqVUxCnZhu70iHNX5RJxvsyZiy6+I
dhadtq6VuwhzTlJEaUftfQGT80bn5oY0J43O2h+gxxrw5h1TJSBiNA7IBIyLRKGsyR5vDRx5k3qJ
Ah6qzxGm0S++BY5ZnoMFHOgReqL47EJLKEsbVVXk0oMlf3AB2w209knB5/cAPFEXOrzhfVSVU78g
UMq5yv3lurF7Kj+T4z0xVSREV1EaeOMeyzJFzugrU2nqsmQKHV2kZPG63nA5bhYm55EoG1HjJ59M
0yAE3LGowtN68oX/odNeGU3CTjwauyK9wl2ZC/MBj64I6fezfbH8khss23i3GiOdLjyYdkDI0oGj
DN4rTKMYPoCV01O5CLBFo2HWrL41cpeSoTF0Bm3nR6s9KMjWZ/zfqZNM1FjpncFEW9sSWzPuZjkS
U6L8UJCsyo0fdseazyEm15ouJmpPSCVrR0tE5tIC/6zu6KMGPpTfN1h3OBykTXrHCQhxhnPdrxnU
AQy6cI1DCjDc9CsGg1qs5orB+q1CX15kwOZe/JuyooyLljqyix1m33Vzq9fSMU2fHubaby/abx2o
EJpvnxyWa2BVolq3Yuu6cnqt5Fl85umORm9vXgppni1+no4MGZnYKrW1F2t3+cdgtwctaohI7p+Q
ve2vTzn2ryOmrAmW8xcB+G8SFOMVC9YsoiQ68CH/4Nqv0wChjnO4vKwvoo20FD+GGdUXiebEVQsS
0gfmL00PKQ0fD1zMOMsHSeEdS52oV9BP5pCaso+2yGdC2RX79HMoPa8jzmJtJqJRk3OLvy7Axouw
sXF8KTo6lZA4ZORy3au/Io/UL0bRbe66Nd0X2BBl81fVFTqmR53VJM+tiinM2OJd5DaBifKAZMax
CRy/4MX+YJz3tbSXL7L/ph9Ve2gF5Dz//oz2ycP6M135Ua4D3CzMEtp0eO7PIa/qQcjgqAgcvShQ
qwdalRBaKDVGmXpPZ4qHEaYRTYIdX9wEsS1GnGPvwnKhUENswwev1p4RZ6o61hS6hVh0Ps4e6MsL
L7xP5SeBX2GaZWMvNbBZ7GC9AeiI8BLr7JpHRsiLmWE/I8j/gjBGCfPBR8A4cwVkPXJ5x82jVWYm
lLHJwUEM0h8UTxF9qm6bVf2N3AXUU/T2XfvLI4yEVPcyWh5CfDp1qOV4yuGCqHrnbYmy3+POmDi+
h7yuoXvf0Rt0QUBB8r8fplH5b3vEqqto/pOxfgWMIzphDM5JrSZI/WNZQX4qXQ2nj0vmnmbIiDfP
VW8kHWJCR4c57DCMwsxOrqdtWBj/DSkNhCpBrP2rFs4ZyVVUIpHVVzFMK5NGRt2+bV9X2GGniMza
lbRIkYMxQ8cwW0WTaLGm+gOilik50RFfjAouEtq+TyTh1SEYyCo6aCIxmaJawDP1Rfap35Mub/Z5
cHpSKwn5zZhu+/fS44I+x4KjS+cYF8gUSwzgt6Sigi0DibOSOzo4s2M2Wbjxv3Xpkjo4tOVUjbDf
Ao6ZCE+pqvMwoNarsz4Ld9FywnkoHaKDnbSmDlEVO/kKHwh+C+xnZlCkjhi5VM+wp/pIyySMahzu
p7VOTpTw1lRG2w0SQIPirWcrNuAXKT4tqLOHhOz3zHgfByGsFq/cb9WQDC+bPLfpEIAokdWISHaD
iMdL7lfz65sX68gmbdE54yurUx3DuM+5Jzu7KlZn+BqlXdLWwUNmsENEmJhxQuYddszQtF1rk4iC
Wn2ai/SnjdU4W1iqTu8AG1jCBXrq0Ye9lJN+ePRdEG0uEyRlV+kRUmMmJE+LeWUySAm+LBi3YfkW
n+orxdFz5T7xQVjPpyIxTJfB9FlrNSVOW/1vrPcGlBFl9YqUwisXpi7s26PTUXdYRU5thslDHao0
HZKp9zrC9zfgZfvSfcdpLtDkEywG7cR7EHMjfNVzgU2pHjui3ezs01t4+MczmgtbfPWzqaMnQfYP
828tS2iZDr+uMriH3NCZVjFLlYuVXJJUV9VTsZeCMEmCjf9O/cd5w9DREs+qOLeAT8qifA5t8shA
6l6ucD4UJIYcIOablSBB678x6uHyh+WKC26vUxZmjyUkhOJfQToJTa313OHqcKa2jKDQW59ctHl9
YC2RG8FvQ/g8nFQIMbZ/cmz0zHeJNwZ2OctKtsbnFzTvQdW/WFlDFWfFvYUCO9tAYL33tKPgp/Ts
i5Xc2Cnj762LyptmXmuV1nEKOx4rxGf0rgVwJSiGfmNSKblxEcjpgxZyz4Yube4X4ZWuPu6S8xIX
ESDGLwmU2vTLJI2Caoha8BuFQX9CD7g50+4gPyjw3/7Y/O+egIjl5SzECcSs8v2FU/CkgvlICJqw
ampqgdzcTzE2lks5JZk5SMnY3FW186TqOFvG7rqTKluOTcp9r0POHESrFD7SpvfUp935zFeMHQe3
7ncJR+gLvI7/FiwvjZ6DLN/eyCmq7PYRCMFmWp+WgVU56q1KnBsN7tPO7QexoaNJVl17Q+EsNY0B
ZlFJ22pXwYp6vVQPwiw1T09zNuIBs/3q1htxM9Eg1yJwr+Zwzg4QhANMSqlt858aC+QJzLPLqBkY
/1pua6fxhAFLytHn5JdSnKELm7q13oMJv2gK9xaCjsjdLLusRGz8cPxFmCEN579uJVN7+RdROZnx
DtwLTfElXbce89bIkEcrfChPHB4StGu8qr8epTzH7FUpRnCh+nOSdIaPZVb1e6yoxRsr1wz/zyco
p1yramHN+y05hyU4FonOxMrQmsRjot0PNICbPhw+JjZnyi7tLWcmLF1TydOzRwC1fFuRxMym6jTZ
7dIIuSr/lylPSciw33Mh640d7YGK2qp44XIBCCSPa9btPgm7sUw5T7geN1PhEDf4chPbfIrI3UhT
i3SngC2N8JpNxGa5SPk+jcN7gVC409qOSjQBPa9tIUIn+H7Ogs29/NlKz/of3I4i8K4PVwrJmNIB
wngvsknDizAEU/CXyd+Wz5YCBJMuNvSwZcGM3YYHWaClBrFE8AtZA4sOjXJ3gRcY9qy3gJKQhF8g
qGUIeLoAh1LnUYwL//dR0WMYLZnvX5YC6zss6bCqopyhwM/9LEI81BJVDYKo5WUJsjLwgpTZJSPu
X3O9OAoVuKa0cCwm+PiIR+IvFzurYRXRSXNlZUgOx8TH6W7WY+gU3fVMptkslGbKG+nVb+Zxd25F
1MqbHNmTRsSnppVgKCUNDlZDk1Sx9yBb0FnyXNA+xNifGgWq3xiN2zq+OmjShVfwtj9HdSs+34DR
TSz556KvZ+vPw2WHVA1NPyjCw4C3y0JK7fmKcMrnBxL3RFuVJabgZRMO1OGlDNEnxpd1mzRviQo0
KaCKCK83er8hshT/mdgi3i1RTKAobq5tPMd/fpNsxuVfuJxSe0FFWccN7vpO/OJjpdwu8VcaIo5J
SP42xLDvXsDE7InnFo/N4CphWJlusHL8p8zq+pC0LQqnFPLcmMN7P3X9CP0IlTTZKNZ2bPLTxmy6
/lLxMNs+YvlKHsHvaUsIc5f3wYPwYWVxrLZODfM6WwosPLORy7iSsyBOUj/9GDofxMkvRiuuthPv
Ba6VLWyrZ6N6hQ4GLfeKngqR+zumMNncZ1tjheNbTQOZ9MPj7j9S+L7ShnEZKOfjBnM2KLuvfHo/
mcYIwNGg4y9nRexyUP010Py40z6DQ59EIH5tWvzo+Bvr3Ixx3ywG+5wcfZBHGBsHMaM93ALYFudJ
2OUVtYrA3I98Fb6eeiils0zrJjWIBAcpBmEInhGhRJ+T2McxV+xIKTsy0mNl6I8VxDtJT3xJDKXw
z2maN3pH8eu7CUvTzz3r3LnVRCSgrq9mYwE+DQtLckaVizNu76GXGa9ZYTkCiClWDDDtSz/huu5U
yKYhI1MLB93egiJED8a7pOVE6qSKPxPApqTskodiubaDtcrDN5Wgq1SrFrDLaPdjK59lRwWSvDY1
TABzHL856ei7tLXe7zZZDSYqGhRmC0K2/9pLEbC3VQOQzCgroCZ/nvkkeCWWvnp6iLZVDssppVf2
HV22J5pt6/iZwQf+1BPHpL+z2mFp8v5L9OwwKkzbrP8tanmkv3/PkyiXKT1H0vyY5QhsM0B+KN1/
funJ28vUDby3g2DkuoXeyluWIPn7cGcj5sA9+N2Tyrq3CtoSTBWq+v1tEXeW3UIcyN0ZonVH5Cm9
hZFL9Z7FJTlGIDJCoR6ApablWpJaTMaBI5T3JcYdyd3qW/dq+uNG2bYAtO9RoDqR39bvuYCrzKB+
57Q2kKNoAoGMN1K2xv/Z2SZPJnM270lgeXY7cTrZd/TOsAEDaLEGQGK3qTDSAj5ehJYSvrkAfz8N
Yi52lW5Wu0TRTT+UDo+Yta6WCBiXMR13fIrGLzjnCFo6txxzCIZgNUWtW+HtISsS064t0sNHY/yr
DfsearxaP109kc557GkULwZDKtNaQh1uA5CmLBYMMI5AhnxO0T6kBJ2/elD+1saBmrTW7b0SzX8v
nXWwCgexjLfzCTh+5tlYOoajoUkosL1yHeyGx2v/c8lZDChXLOw3K/ZuPQpSnkOID/+05Ocrbi09
8xXOYusM4J5XGsQOYs5A9Gnz6guxqm/55I89ZYHuE4NYjyoFLthS31Rk+ASS4jKZ1FaQxIK7iv2/
1jMnMngfM7xRKUk9gxDVNQCKMxC8pL9Y3XqMzYQPmwdVPE1MfkspBnVGBoRa3yTcjzoD0d9hbeoC
MuiqeiUtH5G1WLXn9LGa5jYfhElvkVCqiuH8r9pYynTtxNVa2rwroEKXSzfxkpTaFJRsMFlLxte2
xgRZVBk7cNBOnXOznJ2xMTh+VnHgN+4d9JwjZuHjhVBKDpDMOy8pYYWlEe0+zxIVOV3/3BbO7nyL
AWNspqgAB0DE/02+I/KrpXznDdKdwwzAP7IdwvPoVv+ZusVmHsgIqMgRTxWM1Uyw8dZribr2b6Lh
61OlpTVZnzmFGPj5rMqR7ydFne4kTCUZdSFFYTmAoJ7tirc3aOwPvLuSnQJufRQmgek6OjkMd4Iy
64mQ04SOMj+ynnxZEFF/SBnE7SNMMe2Gy/fuPBVh6A7FC+Y5fruyp5c19brRc7iG0pg93LnvKWld
qFNRxkOVXQrxdg74vZWBp6dwnPkOCd0BeOYG2L/c95Hr9a03KGSvyt8YWim5wmkX41A8NpNXfWq4
RWs4gA2uWLCegeJddMtZQL1deaWBa6B9iZRDDuHjZjv5JwglEYwS1AE2iyJhI3stf3595TC3kd66
3LSZzd1K4f+1nlGCNIyMVGz7R2g7/N25mlIoXWbuuT45u0dBObwhDyCyMBw1afTUCMNuJMGShUyN
5ivcl1Dvad2AEsCrVyhuDr5r1w4sLXu2ezOYNhmVbfcziHpMpM8pv3dVLF+5OFp93ubNp6SRzTCM
RabcXdUOLUx3P5Z+D8TB+xxS0+l7fvo4NtK/TIbRsHgetriMgWLl2cxR/6g59aTGbJEELQwHSzOc
ySrG0HeUBLs2LlrJYU3dP6rayfSEIYpRVMFJ7MtdQftoFvRbl88tjjZy+aWQ65PlVtVyWZZzfoNF
l5+Q8Y7A3UptMI/kKGBfl0qQkisQ/F9yswgcWzQjTNJ+bWtsvuwryHQ+f0gZ302APdZa6RB/7kWu
xZEig6t+PyS6X+euUVgQ28A5Eeuuoj/GNoEb7SFMhUTK4yVEmT1kGl4K7USq4w9EHND6gL/yVau/
8/u4kgSHBlGbXDAtTFGodo5rXgXytX0iQb30ZR3vP3v8dMjU+o3a894SpouDs/BET7WHJoKecxfg
HrQ458yiAF/2ikH/zpG95a+X8q5nlfZHeUV8S99Yjqwd+7KP4p/JUr3dL7sCw1huIoESLYm9Z8dD
0L82SPsocrqsyU0vQ0dK023yTTGdn6BwViU9ZpBL7ZmnU2SddNLDuAdERvnPJ9CcTJQ8ZjfTJnXC
bjBMeXLIG6J+7Untv+F5MEiy/mE4tObUhz3AQK1RKqNZmc11PDKHvrfLLQ4KrJqaaY+fvVQ6lCu9
903TMLSas49DuTfStfKVfFWbRVEZAO+QifEpAaXaVoPU1fs7h6YfLx7zQjc3Rhgkj0qb6bfgmh6I
9lNiKCzllNak/JJPlUBRlUU2KixsFmbtzYU6IiXhJMQnir9ydoytdcp2zaqF980gi+j3YlpQtcoo
FkbIUVpJiajKTIUI3ixqqxkQbVwzXkH/npml9zyZ3NbQIT5FTs0cmK9CJsn0sqqCuWyknhaEG67s
CetkwQnXNks8fqmufT0X1tgReDdh4a6AmiG9fSBAMHPfigA9tF7SiRV1VUVNKVzoL7gpqWzbSy4Y
5TUSmoit9sr60Jx84GSha62LQzJRcJ7ilomcCYz/rMbn1z+Xi9kiObbHGFAIOhF9qP6iVX1BotFp
+pbCXXRDMmLqxOa01kegqpO9L4zOu8P+0r1v9ANYyzUsBj2yaVAzTHxWS9/X5BoxJ9vIw9cvtXrO
gABHRprjtQJ7lIpSVMoYA+pKTWPR1+7Xbn+TO5n3cEvEYsFMGiDFqk0k953tY3R0z7jqp+5A2ujr
k+ilTp80wmC2eMlH7n5FFw3bb7UiyocSzQP+AGu2td5/8WF2PCBkMVn5fe2Mo5JDj1QFcuQMxFgW
+A7qMvccemfcLOP16VC8V5bm/WuSHxwraoSzjl7qM0mWVqKxXrqOqKQsrHBULhhReasNFOMmDGCk
W/hhOOxSZdSABvoJYAts3OGDEItpLJXDG+Dx777y6d1+0EvwjGOZIbvmTkZU7QbiOzZwI2EER9RS
LU/3kxhU+uLJmruYvQ25T68FNGe03hryXXSyhSGAPJL8IZF9dpqSQItGdnvmaOogKO/AvS5dY2sz
41O5mtjWsGtphjzdVSoQF26C9tKr8a7bgrPOYljmYwwfeUgs5QD3kvvc1WTQUZ7EuuhzJ+OgxMo+
elZQ4xWxKdQQH08+MeXbOzy0YbvkNNL/2+2isrfp93yt40IxETncQwWCCTAO17gAkA1yeBV/uUAu
ZPVXOG78bXaPn89W7obQka7NPLqaSoGzM4auELUeM+t2L5TwL9Wcnf2l16baMM/salc28qTBzARC
Qfs9R+4bq9kYeq4fK8AyOAV6v5G4IJu8tYTpPMuEizXdk4HDBaVziywVyuIn+W9f46+quzQVUhYt
P75ODRWGbmp+TW3qQU8JMFxwXApuMvUNK77cMK9huRkyCvPKuOiWs8v/Sw/7JwOArNDQSEhp7sIW
vU1M0rPRny1WctBN40AROwCaHa9SAXmgvcBiZQLLgeX2ofrrY/xtzXq6cCrhuV34x4LZep4OsEcA
BGM8WAfvQvOhB+GIVX0971VLhU0Ffk6KQlUer/fy2yY11yfHu+cTrgsPrVKaWIaX4EoLKUzEFfEt
xk9QPsDAvyqPhjtybFIQCdYMpEb8WemKUZiTFmrMDagBZGXRrmj9dOV3cAZHAPxMDX2Y6+TduLU9
zQu81AFFgvUA4W2T1Cj+E0zJx8LWUj20oCND7oTQ+W8ZmIn/voTDtNrcoqewcR92+qHhlzweKe5o
hY1y2krqWNZAn0yEkA608HFKxHub6+5jNStEItib9MU1hDDhIl8HkcVMqbzAiD0GeZcsmHgL99SB
XgdlsVeLERk8mG/Wx2bJQ7Qg8ejt9M8bBBaJQwxCUZKxNCfaiDUxsNx9gmsu3x86e3Kvvd6XARNp
nxaYsu/sRol42LAOxE/5UNlJFgmuTraI9Bw0cSBA86RnW71R8W5B8zkDM63AkuCtKuenji4Om/nH
dtuCu9xRdFJ/xp4cgdo3AYeZCAoIJ8pAtLqOhdDV72+fXaf4L5XUYTdEJzc2Xbt1lODhtSIO9D3A
F+89ux6KGiy/6dNC2rmLSsQ/MNzTCAFERyjWKRffkLzFKWyc4+BBkUlX9W3OLl6wvv2iRI/vtMOb
eGDGeAt5CW/tewpKNO9D1AK1LNANBJOs+LHiSXYbTAY/ofOncDg58hCbVa3y5UtB2+1eZTr9mSdY
KFpT6pSVCoCvjbH+qTmPaE96mV3AcpYBQRBAl47kWwBzpWlgL3wm2xIUFBz6Vt4fMAc8S5l7sk72
WJf0LTiHqDP6RDCcTEHvf0UlNEmaFf+HYWhoHDnuZSFDlmiQWJ1EkZAp2gAkOP44IySZJ0QgFxpr
DZ2lpWc84KlQRGmeKKXCXunxbMWxzmJUzNl7or3+hmkhrYd6WkRtVTti7kFdPZoHkStZYpx990FG
clntcurwjpmewzLnHD6x0pkSWMHCuca92GmA83h/8cHtKwCQ/rQ5jsdqtspMKpfO7tOhw4AOOwTX
Ixm+D7OHURBBZ4wpzlr+FzK8UOxvCuPNa9TKMMM6ewut9jMASRWuax/1k+kQ5sN8ZWDywtTbai+y
JymMqqCd9vOx9VWTzsnn0BCkvQRFstqlA/23RGsTA7/Lekti3auVbD+ZDmuF5EciJlX+7dirmVhc
G3SXUuDwMcoaUs/Ct1vb8a+76uUpSvNPfpIOL79EdoFmbgIBC92pCVCFyMMTFvoD/ujXCZKQpe91
7yanQKabG6M3YdY86KBArOTxTyN7Q+02VTxlyF9kQjSJMwTln9iu2fg7aagxw6W/UKREZLC0UxiF
tiLf53zt5MgNNkIT8VLlAqkBx+CJYWjXMAQ3noE19g5ENiQiLj1o+3oGfAhVGfiA22N3bV2oz1E/
OY7eJREDFlAQtn/eAU3exFib+j9j8WWg/XplvBWIs2trVWlX7ME0aCOE1Qu4U5uow7NpbSp008Or
eYqNy8xJ1E7ykAddnyDFoS2iT0jqXqyiVO8KpvUiZq3jz/EvxIYZvg2V0O16AzhN5ntvCj7Kgvij
vOCvIDmA5KwuCmnezlLa8V/8dK1nTXYV3MOK2IKs65kv2NJ+p+M/UDuJFp7tlF0TSOfTfvtJ3Hzr
kGVbcFFiA7I0O61JZuWekL/KmRMYabStTSmBRbbqwaJXWyUYa1kRyrLmtSpgtYTOz53a1UtWrXd2
p9192uyWiKAql6oIPp62fnL4Xyp1teB85xKw7C3jJvCflVW1OqpN+W5tcZu8rBKiGP8VX0HoqtG2
vybfYjCXbCUAQ42IwdSxY2JjxkOcaob0T/fP9EnFD4elDqFVIAXjlUVfibhWg18cT5k3vOmmVY+h
LPgUngFcM8qRYytDF46NiR03NJ4Uq7QSCo3gEulx2PtO1vCJSV9a/Sk6v9QlVRP1kxFCdE++LfUa
upDFlco0erQyt35EkvMucyBnxK91mgRiato/Xsve3/pPWr0/zjEEegy17qkXm9ZCA7hd+4EsCKxL
iEwE4zJQ+HjLFig/3o9X3f4lKjF7J465W10utfyGYhkU9E1vPXwleGjhFoAXl4u4s+vTMwS7xH2W
8097vGKN8zU7mV2RCMMIx5aBnkshvmqSOnXxYvgGe9HfFuOk8tKuGJuwLoPZcbnOnJQB8ywGIu3p
4TOAYy/v4l35l/5hPKG13kpXB+YHVCivtX1p99cjm54fqKNvCpAeY/xVdEmkL0GCj6mT4f3nwpGs
K8yYHtR57olrHXPXasA+uO0uEHT0O3GG9hcGoz/ISRosTF6qp1Kw/bpOrZfHdJ7lLmxaamrBkP4B
wgvA4yL86r8srp3w8GtHn2fmt/8IgQl/Ix3k4weVX0dN32KyqwtTkgWuIRI4uStFHlh9DcsxpJ5C
3YfaFFEXQhoyPVBH2+8ABebye1dN3prnCiMazO5x5/Jl6cdxbg+/PDjiffl+nY6p7FXBoo9I0vy/
8kFBG/uXucJs1k80c9k4GUngiNIaqWv5FGIm0tD9YmLsaiPfC1yQB0BX0xrdK0nMPVGd/Dz3Wh4W
ugZbPdWMfLByOmm7kp4sO3NDJn3QD/uo3qXo/DQAyj6ght4+nJw39w2wPpPMSAGz6VYzfye+6JMx
TgBh2ASvZLqxLn1SyW3OyCYbR4Lc/YAFL6KWO8kz4lh22s6O3u4gcWcqz2yJ7n5GEbfzyMWXKq2h
rnV61XE3jG/XEKvdbYucJYNvAKyHeVCmnlh4zK87PgRUStaWdTb2BCZHrVt2U+UKyhMF7tsfl0Gf
OY93Awt3pML65ViM+/kcROauBB/gtDrSYQv22M5AzIP87mYSd3vzSs8DHZP4Fdcc2HGCSn3Z1b2X
4Sit0z6qdcMrrx0pzHx5Ibz774z7+Yx1jCbTcw8/ip6jQE13ZfY7zPqD5vMyHDdWzEb48PcRnUAe
KIjWN1DUz/6lgVQx6VNslYT7CrZYmRXY2V1deIPGxkMmEWpVsxcEzfSsZQkYiFv7SMioEZp0Bq1p
wNUF7ndJHdXocKYc+kgwT5zaDtBhDob/DdxlsForFXuc0HocWOQoncKH86djv3Re4RU888UzYtPD
RHuwroRzKX4OgVAX8pwmbAAAMUGbuNV0vAEdqPrf9r+iKdagroBfwITubLY0p0F3XkpobM0bVUEh
9agQoSLuoH4BaWl31rfeLSaC6tq0TxHqR6ZIcI5RR5qirjuFJiUH04+q0slQb5z5138VSnbVXdpX
/z+zIGnxxOVqG5iBXc+mnvBRTw6yBJ6ZyQSp0N0LdOwYelyUTRrvCqQ03izNJgVBUmM47K2SATTO
bn464cFFRmNRfSvkBUm5rtYTGCO+5rZerGF8EYu1R0g467RvCWjJV+98iVbaL/GRUp7cqKdxwtz/
lwVMM23Ztw8LzUHL5R7FRw9Gzw4Gm3UHzcgNr4VwYOBQgCs6WKceiaRtiBCNs5UffyrzTtqDxJwL
9xKgZMQR+wspuZyr7xN/tdlHfsZR3AfskADjHB58JEJK1gcuAv4sQUS8b2MQVtoL5qddZpAH0+fw
e8mGorwC6JFIZZysnfLO/DnFcupySkUZUFDmLMLECRnBcWvKEUabBmYBQcJJwAqR3b9W39IyHWOL
eb6hfcIU01QJ5iv9PLMidYpkdTg9V3dxRiGyFtn9BsrSR0k09vBo7EKCd5b9agM26nwav7ZgcWHz
pX9B7lKrbcGo3bl266LMOSD1Qm/kfxf3MdG5J9ZV+IyKwMR5Sn8hLRq11eTYjxuPGjFLPvw8DU22
D3c/I5vDopd/UYHYdQWzSPGurGrZdEdMfRUB3pUsVHbQssPsfwWUye3SRduo/Yjqy4FXDkk36/Yw
Wvla4H3CWFn8rz96WjHPL4kMd2M6GS0ji/1UBzXhLB57a6zSo2Sx6pGOCE5nDe0DRtUeW48nh83v
GWzOxwXF4bue8xrmaaxwMRZvkPsWIzGVUR+l6Z4Ki/YvaJ2DnxHL4LVr5F2cfKu6jtl8C32f2hR5
o3fD7aideY30/SCuffLACNbHc5DfwmJvGiLnppnkbUOZG9EN22jIu35CyJRtEKtreqXk6izMjad0
q+K2EbwJNOrVylfWGH0+dMLCrrGwn5fpk9fXtadUrwBfh/FYjdqH1pRzNz0Zay8/1AEHu6+WLGAA
ZzXQ+HldzEoxFaQn7DjUO0uwNP8u3PYBwjL3w+1NZKz76V5UhlFK/mB7QPDCefzLWpCKbqUV47ze
Q/zt4KUk+0SKpep8+THgtZgkdH1d+KtS25Df0QR/oEQ9nbzijzX5HndsYlQPis9R6KOdpkdz1H6z
t731cY7oE4WrwOuDVhnYXgCqqDzBWe3otWqhWCDLIkaQVwUR6s49IznuMKMdCUnG5fwD2rwZ2Qir
0Z8Jy4STdIkUMoXvURHcAFmNL38EDrlJS6rxE9XOkDfhOEJmGZc3G5vsHNrv7WNffEb3kD+1r1Qy
F3kANs/aa75M3SL3erEyt6ZgtcNj6Pfh7Jse+ZIVy8QlyFOT8jjSZExfD0PN6Ske6GdNsfMtdB58
wiSuFlQ+g7jXbRFZFPUhtDzCnjEV7XwaMOQrvA6prO0BYd0IIysnjoEmYUf8Gu8Qz4zTBk9CbS06
hy7QkclDZpcbCm8V78yDd6z9xwyEW2WM7Y8BaN048ePAbZ9wOXnCh3iL4ACgEgnAUeOiN6efVCg+
HKvnkM2SrV0sWv/tagP7bJvejKnv62pp5RWMKXu5gEjrCpejhdoT3rcyCW1ftjNy7lvGhQ5cYgWf
1Lrip0Xj7yAxE/1RtzyrnVPNurz/82HoD5iWkEq1tD8WkcHjqy0jvtQlXT6jyQ7htv8IApQL3MCG
jfUjhff53IZ1RNBZiPLXdWLa73tcbX4GOjHXckm9aKhn8rr1szZrVafkoM0AnnCsfzAiNBzKcQwe
SWAFCHaUX7eDO+XC1Qx0xd+5wjCqAEsrY8sBZZ42kgn3FgcaWXKIXIdmkKdivwVryswfJADs1kNO
rtf7LNeIPeM1MDWqX9pvX0ndZRJ3UHShmQ7LeexP1J3gzxONua1fNhWmIiZ+Eu94SG1nOlJNumDA
oLx5H8EUa2brq/llXAwBkXg7J+DO4+H9700lh46Pqohk1pmgjRlKM0L+2C/MCBt65n8xEUFy/Hqj
WslPsHZv5JWuEEudEJ+KVmxeaQO6+LylaAR1J9qof0Maq3hdXZimWkDb+F18X8k3RmEyAO6uwXoB
OecPygyAN9BQIRHvuXLvcStOejiZt5/3fNfvbZSSCZt3LHEhbEmh9LbMlYxBsZE9k8MjiGG5laMW
VxCB+hwEk51jqJaB/5odCrZ20YcCQ/98eulXJXNoBxGyCDX+e4LHVDAspH9HtjLr4m+rC/eADY6G
JyxZaxsUWmiuFbdL2B3/knUk0ckn4Dq9Vncl8wklifmG8hnILtEFY31nZjU1nOGJhiTuNHNoWk/S
FExHaFXnGnEVBv6kcPklNnXI8L+Mu8M4RfVImeIXF8ePXyJs25M61xvngitxfQM2JQ+pxlwpo+dw
tIFZ7ToiPUIx+tVD23zj0fvRKiLiZLtJ5jbyk5QO7Kad1WL6Ps8VxmRtARpwxAcIpYH7dqzHbGpQ
B2dKovxpHkEe7V5UDU2Prin2bF1c9v20Rr2dY4QubYj5Jw/1E2l6mcZ7G+ZFw9DWaiARYGIGN9tY
JKFs6TrIykBDqm4kQb3U4+zDcJ28KZsXlQCnV+sQ8ALi0Ztej7jEvyWXZdEu12XYIyvqOTn90HKu
XWrGHUVlgj1jASaeC6DFW0L9hcRlPAl5vBT3iejuGwhjqzI/APG2z9oJ0ZFate8axYJZHtY12iPb
YdozYAAc+FZQD6hNKenknKZcwWERt8AE9dMtWSgzy8akX0I1L1dfslXgI0wufpGYFK5IGLmhd+io
U2fUzrXR0244bdqlJVs4xtRXNQXzrnyYyltGOAWikSGaBE2nah5ImfefucPHjBP4HWewOZMLNvwn
nmTBtUMsMXzd6uzh1bgmcK4EKpwPIPtf5SD46Mrmte+9FdFB3b9wluKRz/er9bJunWzEE8j+keKy
XpemxW65KS+O3bF4FJDeiSjWZdGkOIL2Ldj1fGgaeKhd3R56/puhD0/AUwFpZyLZdQt1D4yLOUQb
Jc5EMdk8BDvHF46+zXdKQxN5ZzaqEu9k541DMCUJy4js0WzF0KsTIlRt65UOmPdXAHl+OeIdjWkE
8JUt4XgPpZncbLE3LPsJoPkim1fPHdRvZsC1t0xbboEaVHf71THYZ8CgEmcnhEx1pFKDWE6vp9/8
gNh3NjQYUd25YBe5a5tRVBgGhbz6e5SQVOsfoJ+7x2DY2j84DfEsqOKAH8QsPrrHL9g6qb84LymX
LRw//f46vTXRhV7ljqiaUbG501ENx3h18KPbM0u5pK1GEN6+G2PrdRWRtfbaz1TdnHP0J8YQcyWB
e5H4gAygKMTKag6I8CCXbUb16vfoAyZdxgFFzPRsQ6tVJZT4kaOx2ECsryu6eE7yuyqQ9ef7ArM+
yqpVFdxZ2E5HR+mBifubpw3mDJKUbjKAvbNQfJO8Bh7wKd/yAzO+G24epy0orsR2QbrxakU78sva
rlfkqrAblXwZdaC4+QBMafVxNaNwYk/f5v4QEkTulU45YN9nf7wwSb2S+j5YMgXvKG/QLLuErCKE
qA0Gn/OXZ+C2kKPAgy1kWHh/X5oBZBgHHJmDle/C8uNoWBrbmXj34wjCPVwzrca2g/2jIjR74ugo
NYui0wtrCdErUATe3/ixsUkpqG1EGZpAiav5GVRXqkvYGIrmuQ70wn/eR3I62PbL9jWyaQOBnhAr
ySdw5uDj76Ucw/TDdZ2509J6zRsnPiBB4P060S2DcGc1wdyabKQId6QMj7H0iW/M13hzAlIyKAs7
+x0+tCCF7pxNe+fR5Dir2wO+ogE5kIzf2lTnmkvkKchx15n+KYioe2HbiGzXgNUxDTN8nM6YMHCJ
aYjQBydSlL7vSGpq57AiXGNtEnFlYzmHuflYdCQ5BTPF4tE1ejHEuHrC7jCEsrM+N+et5Q/1KzMo
lDfQzt2IevRStxRvSsfU62AZNlSOOZcWjyEmmUsHIqVGMpCHOWWQwekkGypjzQV+OZ9brXKfCNhl
bey+7+uFsxz5OX5huFQWHKNwBWnsKk2y6dwZAC3p75PS7FRKPMVC/a20QtRx2G8w9keLeNyEWbWF
0x8I7YH5CNZfOY9ydmzWQfGKBAI+CS0y4bCHZJhb6Ue3tSBSlhG6M4o1hiclKxFR3tNLF8ysd2o0
FGMjPFTsRsh3STo4WuYXyj+CHX+e9uQ6L0c2bJ7OVv6lFvjcNZZhwI4ia+46Meqk9/xTW8g/qfqc
A2nKlkO+hapWt5Lo7rHyblw7lOW0gha1XKaKOu+fOh1lcGTQ7vmT5lghAld8apYpw1bk0taAUtEy
JRwa4SbAtWNa0q5C9tCvHM7QChXQV3NIM4o7We4elgeUhsVg4V0aZ4p1M8pIYvTK5DhG9DiHJI6q
BX5XJS1REOT5vWkwgivoEiZbh0B1HqcmCv92eiXHn4snq3PzYdIomc1hVom5Whw/txEn2xr/A0ZB
qyFnB1uJcTJ1dtOFIQRKfxYwhKiNyNZ4nzw9t/bTfjhuskLsYpJarWOfk1reKPIyx/akRuwozsxA
lM+JirSKjobOUgarKdFuZHyaiszCHJNVEBH1tIYPDzyLqpsB0NCJ1ziUI7/3oAhd8nyBSXeye2kX
sUZPcgp9tJl3doWxJifTJge8hBzFwLxT4n1iSFFGq+JLU8pPBT833QAlMiDpvLn3VfMBLmiA6Oqp
/h+isH2nXFi8utPzaZ5kEIhK8HMTFgfPbR9isLdVlAqtsygMlU8ZWyPFzcZfckykq2m3nyFS8hBU
5q/532tEuMNXDcD8vHY/c7yDvRQ6orggSD6chPPXXx5a0dLWR39KkRV6U/StthgJ80g58R6Wo8eu
lf9qlGqnvVzTjfmIuMzi2X2KyqHFFaWTDfC79ubyzf+8+nc5RoDIewe1fEY/3W8264o0r/SANx9t
7KEkJ2VJfHkVr9rycfpQTgNTUronn3w3fZX9BeJ7DF+Yf3U3bSzLY2TePAtT2LEaWMJc6lJV9HP3
Jy6+5NK0m7VZBtYag9m7COjK+VeKOmpgkQSUVzP0WhF9Zw4CnOnUmEhr0KHwIVs5yiS3vqzhAwiu
uO0nQ5s2qeUStiuzD+8D+zKLhFjBi+SJ1ONVak9UOfNkeNvfoJxEoLzo7mWV/6RFtgVyvc7xYewl
UojIY3oS10sVWNYZqb+FMEVCDEDcmooBfuM6gIny6vtiG6/B+bmM+sQq/ZfWDpKCcHBCLAPNTXjg
q3n0U/RRDFx2K/B5S7VUf4Q1Voqa2ATJkcDN0CadL2hVzvXWM/ml5t7LCHp5jtjcu/ZhZMSx1dp7
nJET4sdOgFFKoyUwiHz8uiCFqNFNOVjQU+mcNa++VpUEC2WlPnEd4+yEJ0N5uvytd4EGiS/GRVTE
fA6nIrZXhDMkWYqabwlW7uEPdb+iODWnUdOQRVL+59Ylirbrg5T2AbJzMiaK7xDhIRmH6zjF11QF
bgiyH33Xxp64kEVkLC8+lEFp3k7PCGpe1aQMZ9YNK7UIDPF8WPL+xhiSZa/pvg8aqSNIhcblk7fK
m2x09uDeoloet+nRmuuC/wSnGOevx+1TD93axIrl00I61JBx5JEmbMCBJLurzehoj9XPLdTFKAEY
S/P7FHgiD0xcVafBdTp0FI/W3vh95ItCPuPSkjOtESu3AdVld7comNOCeYnk0c5n8gj+l4k3sOOg
XLAxQiyfDkNsFNSXlwp0+4pN153Oot7TWbGJ2g7Vs2Nhx7BGPjFhKWig68LEBslu2ZVNWk5WlZIL
Fr9Mi1n80wWd553bWFbpA8sfB6QksXl6ThqCvJ2MA3IdyElkJiCkF2q1Plb51TPljSLg+xFDA/Ah
g63MP8qSl31VlKi7yUVKgwS04/WgW2Gze2I2QUgKJpapqXv6LND//Ykig60oVMWckFq0OCFB6f1S
r2OGiNm4nrgPc6mtxD6S8wA/1tOtON5AiUK3rAHZy6oR3/1QmA6VcAfbqUx9eGkiQlPF0tsQZ8Rm
K9MCbVfRJUShYBbDCdcKmERLohAhD9MyXDp7JddrYfiBIgwlPA7e1tTk5sgyd3C5Ka2284mctEpT
UtmZu0tDif7CtziyDCzHJBCB03JV6UyjFWXrj+zbDGcAgwwx+aEcrPo2dd2dEXQ0UrlJJ6Q7r9si
nuS4wxrDtuYbhAhO4zjYZKAuEe1oRbwRvR3EHrnezisKRw76XiF8F+p6gjGVyfW1tekqbnb0FH0N
409UcigYgRxeKS971QlaJ1P0KRrzFApefceaRfnrrNp/j0gOSzJpE5hSnR8dzOQvyznGCEOMDKdp
ugJtUZ6k8I2FwnHiRQ6f3Vvyk5hijJUOK4wq2MeTq9/2IL7JdNszdaVy7WeHJ6rU/u1JYr8c23iW
MGbF0HPKnQ5U6bTzK3tAYwZn5Xebsh4RqtzBtwuKNtYA18GR15wCRs5WG2fOjalS1Vi3Zf2KNL8J
zdBEOnt6deuPW1MtJMTEymmh7IkEkm/5kUhYy66vSaywrXFGt7O0jq2NkOx2gmtVXAf3/vdnAF4B
fDb0cpi8JqjWvYoUF5AaMDT17IiLU64Sp0m6SrGSPIV75GUTctR+kl+0RynfL0pW9ZvnQsfjyGh3
mKl2xm/xR+yFE0sx9y03hg+HlaCGN+2VFvBAJq0I2X1IQrNisN4NeM8XHi0kv+iNpYpP4fNjPSyy
htIs8wHNgP1JL1z6rSW0emJTxLusmHVlMbJKd+hx2JsX4yrxfhCDIW3pEXmvvx/MJIJ6uyR7QRc2
z0O9C1s4Tc+PfXO2dZ9M+vhmqB+CB++iPyzeAQ5ITzyUmFA/GQxfpIj+EmVYSXGFm+y8bj5+XekZ
usph90zsHhF0QHGn5jarWcUKd8AcfmmrQa+Y+RdBZO3T6gQkByHW+UhfQpH4zPxZ1Hr0ld9gRtcZ
KqQ7tAtynqY2ghM4iG93zhzx4ksA0f4pTzPTzODDqSOHHAcbwkQmr5wvdvbBKV+/0/4DQMSG7jhl
5jRyqcHGrxjmZYg22VQXa6/hRzhnEHuxm1D+ynfrmveSSvBnlJBEHKFRz8siuvUT6ved2ysIhHad
8+TMyFoMLZ5bqIpq4GBZXzLM4z3ZDo3DqzUUe941roEuxmlGA0ptPTMvs2zFteWHhnyxPYiIBm1g
aKM7IDhIU2K+30HTViyUdhIJmn/AT8xlBnLGqibt+qdGFWxK52yv4urFtO+sc8cc5Ne90GV17p97
PURSq0aiKDCvYEY5Yvtf1aSCiB3EoYEU6VcnxvVa+kkBXT/CAma8zsM236VovIIX6XilmwJetq2h
sjVwachoUBfDpR9y+z0gpeXbhc+9lR8WRQbXtBEPsgUP8zCSNOmo1h/88LjsFZj3cAkRaasMNmc9
zghoM8p1nd9TacO8NExfKpOm7d1FbBuGY3M8tVKR44k/y5uhiJkgkp5N6latDn3Ms6xPsRuJAK/+
e1tSUrx3Oyr0O16mXcDHeeZPpekm5Ph//SCBP0WMm4j8a2d8FciH1dYp4TkPOpWKErF6hYU5XMJ2
xFmvKjywIXFsJFqZEtGi2Yx6DmysKauycOXY6TJglSrRkmmjwEpwFoJ4NdVk7eblvy1thmN24lWX
WreQSW3KqmmkNJTMal8xuQqeR39gdC2iqX5tR4HxHtWteYL7T2NMwLzxg+4lLO+/JlIyofolF+Q3
0ELyqdTplXjoXLl5R+XCesySXaiZRDkSUMbIYBR6fATaXRBJCHtMb94fDnKBmcMg8x7cApL/Apj0
11uBttrnrUFDuCegRjiHQvENOyzWBoC2Yd/MOZhfwC81MEI3oPu8KV2fWqLGKKUS0mi2QEMl79JA
Iw0iJOjhJmk/jDEnLkVaa3Y7Ks/c4uuBmDT3QphPnKR5N77+YSWTwxoNijp/6igv0Kjuo0fL5trc
J1H62JjA5cz2Gd0Gh/Ku9hHVlTps2YXHlwwv74y/l7SPfKzR4imt10CQ/Mr4raMEmu1Ch3ehrfMK
p3meX57KuovDZ20vB3LGbQrnY2+mgl8niWoZTx/aWHhUO4AzZHzzwAYoEPUBfJm1oWLJS2tW3J6t
Y6qvTQPu+lkcqb+Pa1M+lrONFm3xSbxRdleyfDXf95u3M6qhEWddOsqqAildYMtyKK2Z66NnxExE
BStOCSFbXav3KRRFqhaK6CKOlbfjjbnzXCekoB07YnbcEAvnmGcmCkmkWUGR4JrdZeRE4Z+Y8856
llMchARLOjDlm0IUMBjMI6KNptY9SwqjLAmNW0fNdX5eUfLrbf1WTXXvr7J6tMNck/dWEbVNRvOF
yZR2/CxK30aOotzQcoqQilcsQFTNAvqhe0zRxGmvEUDWIwDuN15lHGGGUxYFxT0y+U1hrYGKioNP
GmSD012+7+iaDDiekB2eQQu8styr1VPaIFrRLOPQwxcSwNZ7utvhKvtg8RiNgXBcgGkYzxpkda9G
yVSMvvmk5srbsvlrSAb/VHsRuY86ADUQrf7x4Bln+JlN1TsqgCQD1It+xz5EVjWKg8uZFXKBKvJA
UcGGrFQQaesZ651Y/W4yJ3s7NIgeq7k8fNtwNnP841iHxSMuYpIszt8Snu5KQkiEIXaorusm6j3P
X5zCr34bZliXeLj8kvDn/jnFhrka1PlIRNH1RYlnCcNE5BNmHwhygNKrMCppbipr8X2dl8VWaOB8
G7CvLNA1nCDnP+ouppPwbMtqRMg7oG+VICHdGxWXUq3/9SMil1HOpUPMFsr6FipL/aNEHG85wAx7
dkTaaNHXR8Y/Ul4T3nQoVV61EBElCIsAoQkVNzhCgD97qZLQYCJRI8VrgWq3XzM1lG+LS6p8qClS
tkh8KZOOur+ZCA6i3AcZVC+LQk0L9SYMfuM9KW56fGlNl6Qa7Mx2oSToPSYiNEkCarXybh/+4jrd
sUyx8fiElduHh7405+XbIfxP0pq1UiX6PhrFQGjynmpO+63KlE/tM5LQlNmEXDubgytivhKuXHkC
3ptNmtGO4EgI2mVJDxhvRoHuSZAobu+os8us/IayFutwpmGl7vtanL44BkFnOtJNn1aK3y9f0cW4
yBUrMAChhbd+hhUWT1zH72jX/jjWilxP6z9/TkyhoJTW2x4sPUQNRW0e5ZKvmQNZVSRnpW0VKDyE
hf25D/o4syIY8tpb76n+TfpOf4pnlSwu1Uk0PJpwCargABcs61yLDvom8ohEgzjgJP05nuPZCByK
/o5cH7sGuklGznAO6IhIdt1mF68iitwZ1Vp6P8TU1riyukMj3CsFFQva34zea5XLRBSxLX1nrnra
XcuoL2esZQ2PlOaewrP1U8GNby04VofbIRBvLYXM1d/vQJjge6xdNzcHPRh6l4vWo4bn7pht2giC
LaOq3gQRWkZGuTL4sLD4wBcZPCo03svb2qMNQhHR5IkLtKGj1BwjC/Yc/+lxDU/dxJ6QsekuxHty
0HtoLwmtH8fds2hxaQwijUVQPhBlUcUKrsIGP99VFFW4bCmXBN0EUMq436D6bLLXrtmJ0OyGci/j
7XZ2VFDs6m6cL8tI4IknkPvzj9g/fm8Rn8+/0c6vKnMGjpOkSw5B4Qdb/aB386fqc9qAVMfz5YWo
V+nh/tpPD3TIlApUSKiQROlUHVde4Wxie7+AAF0oTeCgRPoCiZAqTn/DLBCay6GGxL/yG/qLGWxp
6i3hUY737AVkiauiGpKlfXF1SUGQBCeRKEZJh7DzpkXDNYjlV4+PlhAHQ9fyFCz/7pv6RuGLw1qx
Jtu36lspIQ40vspdwR79mQETTCBQSlGcz2yRgA+BBnyy7pGw+LZUdYvb/J26WitrJq7McVr3uw9y
2ogzBWuPE2kLotsSZmDJx3JVuT5Y4XlbtyQEUejCeHX+vjxuwtBBFKFcKdF7FSmpJgGRDEaBg95K
XaPM/4N5qq4ZxukIEWsH9y5Z7GP5ic2U41efcjaaaZR0ZTL9U9+Oa4assv06z52UYm1E+0QLYWec
M6q22lijVpWj8JPxIuogOvAuE6mbhM+Hp0/TfQIhnqFVTu/7yipZMC2v3jCKMazhdd6sUTq5ebGq
Oyyb4jVFqiEUMbpt5KTkUCcWD9vBqHwhhOQkub4AZOihJXHXcZAV+eQS7qlW7APTe8qaM2EUME0r
iX8VWpfAmN+st4vA9KQ+W9MbVEsAJ4SMaeLcjporbxQX/YrfC6esWLx5fqoegqqlYxKXxIN2cidw
D02NRFK+cj5RCDmJOXaP6goc8J2aRo1+f/LsF1d6hVKEddOskXm5kwEx3wD7La2TRz/AzawOJ0RL
KCipKwlBicDwRoT2XQP1kx02b9JBMmDevO3va9tzTchOutweaGEOXvk31kv5zl0bWKxXb5PQq52+
kTzhjMPrHB2bavzFQw9R9RWCzVaZlyYluzv6geNOZ8vi8XHsvaDS3YZIhl8IhWziCAGzdeBZ5Ki8
laJ1Jb2Khno/hqq7aE20bV0z6uQm0ly79z1MB7jY+ADDBT1nE9gaxf59H2Kj5pMSzf4ORLiKkuH9
gx4CClqI7BDqbOuRGpBRjRgVfWcRepjNB48Q4d7TRxylsCtpKOoAx5FGicn5fvLJ9vGgqbWQ2nQu
xE5dbnNzcC0WqxJm6MIb9vkeBleeyzpvw5JpAFDGCxhA0C25uoH9i7BfYQuz0+Iws9xH08iBZrPR
JIqO/9vZB3FhbFj39rov9KQgZh0S6Z737ELG6grnXa8SWctMAST9XEJJ+VxbQwaF3syRmD2tcidU
4Bb5w964FhOUJkUzIUzjlOpaexKJ+1bTFpP1lPWptU6mDi5So5bXs4ZT/Dp3fvGq0JI5aT2Oqkyi
FXNvoxSxtHH0r9ea8J2169E7oDMYbDhUcNoTD4BeKTeqGQQjOWBKwkwv40sptqhqXix6WKl1/oP7
dB6Isz7ht1B9hzDhqDPWQ6ayfpdkwsa7KodOLZt3vqIMyDoJoPOn/g61ad1xVBcfkxg4PEOt6U58
3ZEnpqxcQcKAm3/ePq2ap0fv9yd1gUf8/Jen44S4zqLT43HMC5u8TUVaJDMRQYx3CbDdbCPkgTt4
J+k2VinUNBYCt4+6r+g4D0AA9LXG6Ym4piUNDul8c183BedyoW3n4T/GUyJS3Yp6jU5LVZODVin0
wO1vPR4MW7y9mXkFH4viJm0Tx+TRx7pOoVeUqB24zermjJq0t+d63f5c106mYI1cEihAEnwaLlSV
DWLtsz/zXeC3QznWWggYU7Uj4zQqjkGsdJ8VcNSmwRn81jj8qnyZR1op63CzAdD+/U7NYuL4TiuQ
RyKTat+t3Wn5bDAZiB85SjIO3feSPv92NPMjwTTgH4nBTaEV2DILaeLeBFtKN2HwZc1MZ6CZZquf
9Sj1Euz2tEM16tbJYMi0+3Jp6D/xEX37vtciU9XxwgaTPfkDDX/T5XBDi4OoKHGwOm+okVI0AZm1
AN/cTB2rk2rB47OGB1smqCkQrcqgk1mRP02z2a9i2qDUeqQO8gA9xCorunaGnb3yhn1FAZS7D2a7
Ni2emxRiOKA2Ws9OoNZBLNUe0y8zah/tPRupYrWgUK2zWmVjPMyVtZVvYCGHyxLiobnK+kYHQUpg
RKa9Xblcm64bz1wJQeW7fevN4xsJ3Z+MUxySl9sRAaFHKJmIG0HPS7DmhOdf6FcLnLOmjEiAANn3
B6ODOdXeszjO/GltAMfjTzSoD/cOZEaG84dd2/04LexgXeltlgggCFCyOME9EltehqTf3Xwo8lAJ
37sJFcIsDmvkbu2UHFq5GhuokWSBGoN6+cbxqeQztqXSVYCp/ij8JQ/aeGpeuBPn6trH2Sp34ak3
sVVWeTUVTUuQefEkGfKE/lbaTd6rm3mz0CEsLZ+TLE6IEx611Rlk+D8U7fmj8vhei7FdrzayTX2W
luriQofrLVfoNj1fxJ/ftjX78SRHNB2FkzaAxF6QnM/2uph2F8MBz6YEJSipUVmK91hZodTSvr79
5vAY4ugHJeH4Z0i/d3JfKjF56lry8uoL+G1JyKkjgRxir6GjmmuYAUpWpt1SxWcbeNf7K0F+YJzc
MXx9V844xuwrXh+1oRwbvWHSuP7SisqD7WkiEFklF+677uNIp32B4opZXuC2Tg2YcFqelccteGS9
Eid5hbkrSWr4Vxcpw6tcPM1fsf581WevEXsc9GgpJp4tahIL2NgTYAJ08Za0d262GQoRNtD/Vb0w
9al70SCUFR81kpaFi3b3/nvj8dtmlBLKVh1OzroKaaUi4JyDU4trmnE+Lzx1iTfd18CVO1RxuJfD
FJOeSddv5QjmTOv5JizrJLpmy4xtLrry6olbZ1D79GBhIi/eyzFj8Wgad0kqJCMbEk88MAb4G51X
78K+tcJPjFPpI/dxSvAxaapgx5/i2N4N7FTu/XcXFZmZ0AthV+tlyuusHNbEH7I8kFnfUD3esSUL
KIw8kpl63Pw1pczoAU6ukgFugX+BsEF0ii21XIpuSZiBR1wCvqQydAAINKbn4wRNeZWcJHyLhlUq
ACMZ75kQ4+fNIU/JiXyVY1IQf3nN8wkl2yDuGUIT4laqwY+AslUIPkRO1180ntNWoh82Wu7pkdop
0zLfg+aMrjge7ccDKYdoRkWgqBP9hKWdInF4qn4jXeN/aowVGXurrY1zNGxmf0Yi4CS2Z/MOG8Kn
J5mDg4yY/Lzw4vvun4LQEBOl8xJ+vyT+Ptq+hzrqQHUIeCmNJpWwdGOHB2GFOEsBJpTGWLH8Y79H
AHYpgWV86IKRClk8WScR3jLAyi3Qnn/CdofdVG3p0pkfPVVyhGK4K3TBLH+ukvZElO/Z71qmKsni
KZGUCi/6YxGmb/iu2BfCfl9SZfMlU7tsVm/KWMEwgTcXYfRHvwHYC7KgyuQ/OI5/tNoteTZprbSK
SNfHB89l7RtCl0Lf8jWzfnnOa16WdhGZh7K9hz+skPe3b1QFg0xguEXQx3vzVeYocDWQeY1MYjbJ
dtdUs89DLCfj+sNemJVuZPNGaV1lC2xYDsjGW9OC9Up0Le8UykUC26TA10PMEAEYQol5j+h93ZUx
DfSiV6luM56DffWwjqvW1ESzCcVNPpv+9ThGPiW+tGyQSacxL7t/EJ475MznUN8pAzSZzOnOh6pH
NwLwLuFpR6qLJOUhNrUlQR21eTJiLuXkdOKnzjOtVXDIleZHrmUnjGmkkktAdDccwWFfgHO2HqOu
RVP3pokVSSCFzBG8ygt/sRmQalqbN1aoFcZ2in5TFVULysdfR8DQ9m4zDmnRO0z3UivXQN8AQ08G
PFl0QDjq0blPlKR5uFXy/W095yAjqA+GLSnEbD9CZO9sQVfiMSxEyD7Rf2/h8YZjwXdICfOoOJrv
Q2WOPxvgFJedUb/AgOy5WZ2MDpVQIMcdFAx2hvhUm+trKvqaBLtALv1SYroO+tqJ3vTI3GKdB3lv
n/jDjv5zC1t3DQ7+Bc08RqJGGsQT+VHo9DXlNZ2OCkPSxYev4yI8bBxGqMhPVzVwVflAfOnYT1gO
Fdl6prwX7Qsm2I6zjRK52KGAGDw8p4nGBv/XF6H41oYgVE9eynbinqnG4b7z1So/q65EjuwBAFzh
TXtIp6G1UjriWMLaIaqZeFLOZZY0pZzRHASHYh0bBNOGTI2Gzx66oLDZ9T8RCJLwhL2DcKne6bIe
QqbNjzn88XIdmUU1g67rp/72Pa1zKrMkZQL7yx6dnShm752A5jdOawy7YuzRp3swnScHFeU0AZKE
eFUQzGhFF3gYXL9vshRibbYYOLcg4ZmmdjsX7tTo+I5RPbnv/3pkMdA89MrmYGdK+v7SAGC+VyoO
+SF72xwQcXxHTSoBmM/OhuTjf1ELrNwDzzwlrNQBXxPT574w2u8CHM7XvsE4RZXjHXLTgQrhPjVt
WV+RgZRYjSzmQqW5KxBY3MKJr6Wrf/PLngt026xiOkz76njDvs4kvokf0tQzKynl9AlaVfRtAoWH
AchmbXB7BJSJCfdTh5cF2HAEqjcpC7m9YjKKh4jLbyoh0Y36Gq/wf65i1giCAxTZ7BOgwdMEvSlT
mP2Uhad367qnDOPptBJ8afEtLufWfMk4W/gwRgQu04Fskri6YEG3xIXBp9HYJPbQd3Xny94fWGfQ
uCL+H9iz/eDVzmPnDOUkeXFlfCgO4uzaOIXEYp/8k/Nmi+aJGzwPd1Qm4ThhQqlez/rdVTQ6NibR
HwNWxjgaOEfjuBL66JqbC2rdvxEAlqVSyH+RQGf0/5dBdF5FkxyHl8Pi7UX67D6vcTG90A2UlUAr
GHrId4crknO9NvPI91KV4jYQXvXfYts938NjdPDhpJu8tmFRwxrdaDUmRJFOU3mq+jH7kH8HHYJH
WWbt/gEJEW02FzUqcdxDS6dOSSSALM9ysIvZ+UtYyGA4IoyRroeeUJ1b4Yd/XrTCzJqWTZvAyIBv
AwRKpNx8/MlfxAMFOxtyB+KLEn4K5Ol3t28dgKG3qbXpBe3NLzClNM5yJWo4zgFv+DgelnHC6LXv
jd3zz3uexjZAjUs6AKwvi8KnY2oX8am+2NmcVR9/7vp8Mj47UHIkbBUOdBbT4OGek/FihWaz8+hm
f7CkLEpZ9cD3aZqLxSrSunHPUuw58f5tLpywup1HVA5uBTfzXb9NMi6nXfc8/gEDBzXSMT5yGtAs
ArqqBzOYE8lU0GOVDKI/0XcCA2b0CnLB82ma4VV9x9pE0uzXUuZf+xoxCOgxPw3yHWrNAD6/8WWW
N3CQYChmiNvfXAnhNKdxp8B/M8Z+dOVNlRWjpwOif2ZGK/bJAXpAmtbapDWQBx/p+O0Lg4dIyxIT
MZC/l3mEBVOcKhoa8jIypSWETbCZcOjTVKbpAqCHuvWANqjm3mI3E6Il+bavMG/t3vtpGSo7FnSQ
OVSgNhj8bEYQ0rZjCler67wGAf4kI7NazW2PaMnQ0Vh3vJAuLRxm64aolSB2ChXMH7le53zU9w6N
xdvoVNG2vCeDqYbZcKYz6u+n5jOKyxLcpB2+xNMHftIG7nSdWmR4iplGt2NYzQIAWliYYQZfEnNK
U5wlXZUF3z1eaby4oJ2XEi5C5z6LTJianbztiQ8e558H//IwJoSdrneltoX0ti9BJskSPNr+6xEo
u+Mih6otQ6PaAlo1lHho3dSQRMV2e7B9id0zOzG2vQl+dNxFCUevKhbaUtU3/zwRHhYKh52ezeTN
qj0YRFgz00ASnaXtPHAG9Fr/MLMZ4cxnQ3Ks0/z+Hd28BSc5QB61aHSLuy5iUx7y5lbDE/XSZOTg
B/HNfwIrx5yFj2aEJUow1BEbOAoRIx5rAyrRdlADN03ocvUALFYnQF6bPX0yRxVLiIW788cAKn0h
+D7fvWmFr3DcgkoXg9hoAR25Yn29GNDETucW4o2kBbmVaDKGupz3J5gOyc3tV3W9rEq3wapj2kyE
7AdJBvk62TkjMprjkbAvb5oqCnVhFiBgg//mQbAsw1WLXWTaFYey5MG+oK0JWBhsn2o15ffDk7RU
pxaopy7pkqcXaF4gVRLYiwlWokvBfx4Ihf1zPQ5kYUVisxT7dO9VrvxrQMylbXwXVXMbWn/SgbNY
V3X3UgoaWIbS2CIJywJuG+iO1GM1Zjlgl2wgpTmNvR6uvVKaqIVio37zA4j9Xxs7ZJLkVfnHQ5Qi
ygnnbVjgWX9uI68eq7Q9EVzjxIKLqaustmndyJfT6msQ7CxHZqX2eJ7ZJGQW1I/JClkzwYPIta6H
q5UnmMxXHSDFjIxWpJDLIAgBuJPQNVY6wTPe/q6FydHb3if5kbQsRPsOvYwBUm8Vkdh5TRS/LhVk
kO5xZzIAkM2gX+GBJR12aIBZA+5ZbX/bvun1dQwKK9GPgoP+3EnMPrZyPPUK4KOivoX4fS+ghHUG
k+vUUIvEzSforxqIjRkeOyQ7t7TP8wkAqys7TpiGMC8BHS3LqtFri65M5C2QlLqnLrv/3ED8OXyH
1j+pENznSVhEznZxZcy8SsBwjfuIogQD6RvCkq0qYJpr3jmanJ21fz5p8mjZbojkB1rnbtEYfkSc
SYtm+I+b9cHX0K3tijgDRIW4+fPPlUV3B6QOT4s86CxKnsTGytIgaANoOQnFCwKQUMMAnp32UXwy
QsO+CVLcZ3t2Nr3/iHrLS+1+5IbYfcydXkO3078GOkGYvRurf6R2hAoxg8beJcPErU2utHBnDdE/
M2d6nIC0utPJZGZQMlhb9OmW8cpco8UxL5gDWE664lFZ+WKxSb6clDN7JL4WcpuR3fNlcwK6dEP2
uKyQuXUA1CuyaikX/tX9LDj2CyonQiEhpoMdBO4uSSgWJWysuepiWjoP3gxpIJFSB0h8aNHKs+s0
fQPwsGSnYfGKv2Xs6F/lWRCE2pm41XnzidmUGYmXTLpb/MG33D33EpgdWPgG98ukRz6FivCJlpZT
WqVURgjHCqfQET3qYEGKfqjYGI9VGWMMOOat7DnJL2Xmg/+aacPZOzu210FGjwUYTkU5A7hCWs0+
qrCG+uqcVdC8BdpL+oSzhyKOq9Ze8t0aLeGYn+XmcZfKfGl+kHm7X7oQ8B6/96c9Y0M4NopGXOEX
FrfPac5InM4IWFW4KduRKhmoNpXyuY6IQKFrK6YKZML4d2KL2FNz2n1LdIeo+zFh5GMr40tUUfWS
FBrQPQMVxPQ6pbnBPs596JeCVjmpASyKAreO3FE/anPrjLNIMwmSK+go5dgXm0EdPoT2wu6Cw5FT
UcqUBiA81ihuchmo4+rseGzFZQn0w47WqIJtzNk9aV0oA9tRPUjbfhnowTQcH3eiKu6OyELKuZ6r
0OsesREULGZxVRK6z9hmIUQ8FwdhMfyd7I1ROrQKJ1pDg3aVTKktrTAt2ls5++MOC3Xcr/gdhqFc
RBBye6uJNUvkNZjszvEx1IZ+0i9EKw8Joc5tcvDtVNVSDWTgUN6fZ/2bAFmifibZ+C5h6AILxITr
1jRiQjN/E+djVIzfIA1ok34HO0LchEDVTWbC3YXXi+BuQSUvsfzqS8nlYXDh9EKuH2/AVsbNl3hz
E9836/h55PUpQvoWl7+nKSNqgIeZI1QNDw+OWytLDoSrbu1vQrxVKToFeO6wW59p5ICuvoB6tLC/
fsN6ZaVuTN6wsSxNqbN2onKxKbMXxU4k9ikfPlHGAKnbNpM/ZVOUwbcjuTCuEeaBTUyryz7KWyGx
6i9u9xPBDo5Uzak3Sr6QUWnrCZ1x5J0x4zoFR7v5gETXdCjS6SPlIT9oUKPGqe/yUPDMhAdkMGCG
+mM5p876BW+Dxqj5QUsSkRMN5oLROXSnYhraGmoMHWhiCy+XpcgzhQ/YQb5H/zA9Z5Pf/DEHVotN
SZjZyIlFxZnZ5EuPTM71s2XxjznTiVCKorjXPKUBfFSJU7uYLO5nwQba4AnjI/zSRY/ESnzUHc+T
pm8Be4caanArSeT6bCOVnbb1ZF5TlQWCAXtxgOQwBPXlv5+Hf57aLC8u6S8e+cT0PTIP4G4LJtMf
Y/FICnIcuIB9KrUgwbNulTX6wDozKi92R25NDS5m9fej9PtX6u4EcnKB+WnZMdC1+qViJvfNPlXc
e6Mm+2az/JNfStLLMr8sSK+sZI1kp0Xl/8DTpkpdu5ElqIUBmm1dI4REMK2WUEwzUD1OMGvd9t5x
ec/HfP8nKAs2zAyDW4c161Nydzca4jUKgUOCdvBMIs0Ka8dHUgmea3NU35IrMJULKS8W/eRDNwLY
74Qm94R4B4b1iWnz/uumILjz29LDsh/gI05F1DKTkpRQIYGZZE92/nixoaQL6oNjdpiNVUQrhPL/
FRb+i1EpDA50Dgd3PxiueSdGd48/BKvbtbF3woUHraDz+2epaITVidlKzlG7gPVQtR19gekTkiW+
eAxdH6E6SNBqHbzohf0ghNkturvNWAR0UsMkwBBl6tXFy8wgMh9GysXcIaMU4Tg/L1SHNDRxemDp
TWL0AIj01ST0v6pnUlvx5YbV8NybIRcrtrzDurqfQbq2nc/XdTkpEnqjenSCRNaJD8sUA4trMgfi
xGjD1d8QUQg22+MS2zhdz01M2r1IE5SbLwVn7VTCuvyi6WvON1OgCsqKTn9QdZQ1SEo6vgrWUq9l
Cd99nUu+FLooZap2ufCimavoOrtDbolYWT/mw0IGmWaWi5JzO50eUvaaHqOArbNyu+F2dZXSZnhW
uETJIClC04X2tC47elKTpyZnquqyKtfAU+fyNF8QOpwYntfKXktK8eCNotnJBecFZZPV1gKtzFqC
TAtc75C22bDtWjXqm4shsvAP66EinIFoU5M/MT3sCHi3jjFyMSJJvMoSvrsJRgEIUtg40SBuKAUM
SHd0wX9m8NRK/Hzd3zzbf0W+rFWeEYEU06SZlrJOeLwtwe7sz/AFImeAQPACqU67FxnkrLd3K219
ekOuo2UaJyxo6qW8hg9rBizf7QulxGhZ/heTKlbTCK0Yn2zNmYSecGaufzwZ8nhfSVDMZ/BjREr1
h0IaRmVqLTmgcKqBGWPO2lefJARmZk7zcoc/LdbgxieyvhYQ/u3O0/7XtcgISPjlmzehQGGAFOda
iQTuu7/aFOXIT6mTMdC4E/u8vBv7Yfnd2UYDY5AcLRNJuq0PwN8RjkB4YgJjxRdf94mY6LaTs9bA
13BEZWbbTw/vKs1+Iwp/m/5ZbhhbSnKhA2IhQvolb7ykUWxmQSOP/alZrmKV6c38t19wQXZ7IxFf
ELL/2p8pG4p7Opn5kSUQUgtvwWMRNTjGW2MpuwZYi5gKTxHWd0KE0+ivQPs1z6uolCflc7S+riGS
TEZJWPaQC+6pHSXxydJrcreJtPVdE9GqkuuRmecVfJ2yGtYKskHqHN9wHgZbAUvGX4G/TcrIq4y/
zdLf5oJbPi9i3iGaRsSjruW9DTl7hKDYRxVxP2aY/mmVSsSp74x19iwTMu31y7+mdsWQ2+D8A/XX
6YxG+e07/1Opm3pKETugWR40W4vgTdfFoEhNLBlzDb1E/YA4+YRbaXtQBv70jrve0lT85kWaoxDF
CAKxE2HDZvUaeBH8W69Uc6dYS4FfJVWzf/ClnjbiEHJvErXJ7fnYE1WkfZ+F5R02k9ptg4FED8Jp
ErXEl5+bo+MriOHbK8UlqJMQlq8EVKh3JvGSKa9at94A8Qhj4/j3iw6CEmUZDlvBeflaIx9RvfZq
MIlDRSW/UNRKb14M8II7bVSCbfoKGdU68NOHUJiBGzQn8KhA4eHux5PG2DvSq+212bt5Am/f7zAS
wagpGSJN+u6i4pAIySyEqz7aUDBWO5GX+wONqwOhwXSx4ybliHlDXlgotzEg+1iq/ovjaZ6BYr6v
WmNRhZ5hpK77ORxnr1HjfinNKkPTagbSlIkuiU2j7lRGHdL3gRxM6gHzs5zKFNcYvnoSUawZKHyu
s15mRNd6Iu8y2tJmjMr+3S5yLmc6kAg2vKc0BBv75MOWSjeIsRQB9dpiXjJw9xzLaWKac8BUSLdG
NnQf+swtts6OnLTGo6Y9Vbwq09HnRgWjCnsUtCWAgmoQGKVjfXKODT1Dlwr/4qKc8LJXztgRC7ue
hlApecbudbkZnUuCHabSJcryNdt3T6zHSBqII4MndXy8oicK8dvhN3fK7awiqiK2da2SHVP0jsQn
yXWJvFWckg6aDmHFVcZu1X/Z90fWTVniziqBUnuRVz6HyQM4ZM55fA8Q4wJDfm6NaR8ZinAJE0U4
XrP4JvhhHhepCWQrJ24ca4R7Pt/0jKDXGCbMg30l1jcpyl9uVqW7ny4SgTJFRgXUHYOZIPgfxniA
2ufTgdpyke2OeU+1O4KYPbDUATInEMQSMgfOHj433qHAotHcFbSGu4yVjLWMpBU8S3Gb/nvP9d1D
82dAACVJOsJfR1B2GljgJCT116gcAIPkQOwtlME1d3AfrjrfPGdmUl2W3LpZ9A6UYEjRax7jVF+m
wIXXsJ/N8C5Zg6GLRDFerc38kKgPK0EylEEqA/KqqLaaFPQErT4hYwbTsIXfhBSfzVxNe3cwTYwH
bKOCLwDO9nPR1MWaFwpxnguVaPx86AMvA9gd/P6xbY6EMuz22VzX2FX5E9XBu9pdw5Qjtp6SiCoH
AyATx8KF0NZQwMf6em5I+xZDIbVJ0MfXh2onQPkhxjnnxXcTewxHb9P39NEox1tc8hJje4Pwd5bU
KHUXhCU0M0+Qjig9xkuTBFmi+G/e+KBodKPE/6AmP7LFTFG6CKdoze2MoTZuo8R37AJVLTY+RCjK
gPqHgJ7tV4HEGyvjk4rrtpJpOF4NaG55a8hr4qFHsrstHZ+w3oa7PyMR3gK4huFKU2/4zOiUn3Pz
9NpnLbZOaoSaabgu76O5N/s/1gTSnwlJVN89RyXIEhngZwtH/+09jNYwNsbOKUgThKKdpmoDAah/
1cvZPC3aZ6FlegA7sLo7KNY+rE64zM5UQdbbdJLa8Gx1cd0OT5uwuJrvIRXx5AtrLMuIMrSZZrCN
JVSitmTdWfMY7SLvsfwX15oRkjGS1+wYu/pgPBrLi8T84XyQVX6gJPHve0GTRCqCeIdIhtaRIVOl
U0EqorSAuzvupTA5Ot7nitF7ivWVOYvOMvwPD79ZTueY0cYxOMM4VCo3t7Lbn1HskK/ElmbOq7Po
+6I0e4lXut/Jc9wJGeBsfnOZLKOjXqdWHoaUF9YA/yYCdXE3E9x8uDAsq69loPCgibkYnRbYeZBT
UHlr+RCFaJZh9mJDIIetUYD+Jswlv4X/YSFCQAYdny1uHDv9m3gngQvOqBu5Kg1GGyIVk7X0kUBH
c6aXWlGFvv8rp9/VQqxruAw4zjKMxslOWSYZbrzqtPG8neBJVjxfSUlkw1drsa3kwy1HVdre8OgE
DlWq4Nl+wI8Yi3BtreJWQNA4irUiVBWmOjT1JunhKxT6DZF7XPihJ2k0vS9GXpHSylhZy33q/18J
HWHAGDfR+r/T1A63mebUy1dLURR0MKKPuWPGQJoo5jouI0+nc/QTkGAc8xNkVOEBxsBnC5FJgsbd
8P8rPAUmeaGhxWebdfzxliVWmHGp1GK1gw10AIp9B0sg0K8kS5YG2+hIdSsosuVWHugDG3iTT1zv
oA4CunzlHkKiyBjM+XUVfAVE1m9j3uVtGp/9nA6kkUnK9ncmj9tfZ9ua8/OLWkzN1xmriJk8MKJl
6TCT2VvifUHP3rYWk9tX0zPsPbesuGXDTztsQNhY2DJ8ZfMJ76dsI5ZY3MZQFox47wFP/zrBp58y
G824+bDUkZPL4GpkVgWubq/DJHjNJWKmPk0pOVbZRRhHt2wokCQ+GAZawrn67Ggz9Uc8VAkBVs3V
6997zPsZ+o5xv1zFsaAZ/jMI4saMpnxXsX/RkWuJ7NZpdzFdkioef6f0KQqPjn9yogXcRKuwWU55
8wLqlPX+uMahOX9vdbGZlRYZiqTeTdVLNHtwIHN1C4/DcbKgOUTEP/ZCmFvnJ0h5Co3BY5bSR3us
Fzv8Y9YvWGNEgoFkTb7Jnu40Nz+G6ErshPjGz6kT6emFB7K0Ao6Aiwjjjesc55PT093VIhX6HIdm
42rCCcUop/Z8m3sLmx7kNNl9CPIZGGdC7gB4nXxKtL4g0wMuUCeYfGce5sXz9dZPhDZOE5JnzPQO
LVyOzLspQuMmAT1T1fksVM/UlEtvdAq0Hy114TxrseqXnNr1mw3LLEI3aUMjY19LrWRvLdJt48DM
kBGPIzjOAGVWoH1Xluyn8cdYInLU+ws/EFzvCSFYJivynRYHnWNvV1QSSDHyJXO+ptVclQv24pBT
Z/6akE0sFW0zpHcNddjHLsHqRQOUy/WM7aHwjUVa41Kz7DzJlMbplPfANr1D5XjMt6fAhP/IBPQ+
jRxpgCFy/XrF9jUzIeJCjwgSTAxfWF1uxrlQwac319SOBXqU26WgtZF6NOZdeRlB8cMHwidUA8NZ
pKrNXJkgXxn383r3iaHafGviEIgAI264pXprbdN4YkqSzejTsDp77f8OcKZVBCIRr3bd7nM2n6I+
ldFxuGkObZpuXy63uhNENuDsuFhEMeiNz8YLBiNqsDXYvyILOozPLT1A5yZXUc4tz/NOO5sJ+rVN
WtuD6d1pK8b/LBAjnOnMPT0GfuW9qFZDygFx+dcxVf2GQ/TQEWpqBpYc7aJ9Q744WnTLQRUos1iR
7qZsz1R20O4eDYY3Y46eTJXTrLZTYFJeXy5ImCqrao39ZnKUZhWc/dUvGrLplRUMKvGXRhG87dAY
nhHhWbGHoltA3S+jxTI79/w23RA3fngkTq24+K3xJWjsEN02ak3R+nB+XRiLnbx0/j7cRZZXPKT8
rNCFLTk9Vrr0AKfhOwuir2zI0V3UQBZqD8WsE25ntTMh7JmMu/5NFVIFU4fPmnjxM6B0LpjWjevC
dqRJGTGtz5gdb+AJEJI6d5T7hNdN0GZTs/dOsIsHy5z1ctcCUDLHCDyxIqdy1iP1LB16uuGuSV+E
4WKjM0EBufRC0QeiC5sI2rjD2O26I+eb9RLL/KuBBHzHD84fe8tQOAoaTUHYlkhy+zBj4GFKhQmT
gYmdrAIXbBGIgBIyMFsJm/OjBeI86OtT1fbDdARe/0ybszELYxyCX8NIhqt3+NW+2jUyZJIjeKW/
S9ZP7GZKaln1RDXltf/xzKzjsGAiA3DZX5Zl2AXU1hadVSj3Z221idlhpYGfu63Vh1wHeFXzijCR
U6UZ2L+vKNuj7bLplJxOpnxl0Pjr7bZ7iCoWGGMzy6nO355OPnQ25DWScSmDbaXEjE3xLbYJYf1G
/Z9W5GMj3zHzXk9FKSEEl7hvJmnIFMQ261gr7TQi/5w83Ud0skiaC/NZMe8aWQtarxU1AkYl98Xp
h0JuAeEDlmioIg2mS7KUvjqqVFY4A/QfzQqabJZTY37k0NH7aBTn0Xgm/2x5su/dwhWi29625jVm
DhmEQmcGkgh4jUqT35V+vm/xS3crDFP5yYsZLP1gMHkP8oAK/esTOu9LT2tOvwYaCiZ5SDLBQfx7
U8pWsgGJNJD3CvJYhL7DM/jtIod5YhvTp/MnVL44eWLp6R5j/3W8d9MF9pZQelRyCpByAuSPzgaD
neefH9Z/Dg2V70vyT5IhcelICUYcGBvcNJfJnAZ3Opl8mFSsr67+SFzJH/K2UL+387/f5L23mxSe
rHpJviMqL3oNf20aD+InTXj0TI/n3YtNqiUgjrflIw0wDLjJAA+IXRoK3j68oNOP/1ZS7VY6sa7l
QhHkN8rjRD+X5EaacGKO5iTU29EhPzTBX0jMGLCeFypmNMAbFqV2SW0P7tIihdy5KrIUwwYx3srN
Qyg63ZN615h7Xi4/YgpN0rX3EGEFRjtlnWux1U6exTCG3T0PMjt8fWQdPimDBSk5TreatVjPhUPI
4JrRbsmwd7ryDHdSSA86L+3RbmsyfkJra19usb8UZG+LS2cF6c5H47riHz4b1TcpEeV1LKV0deY8
zHWtc5qTkkwGfSbs/ErmTh7db2eIUp4j5gjLMlhKQcgg65jLc9LYZqDnz43UB0KJT0zqufosxPJm
FreFrw+rOtlhJcqnUyx3Phq1A0sBIOV3D/tq9HzETjTaP9tGNQByCsuWS74aLAKyQhV0oCBbFeBC
tfQbYniWmDvCpsR9teE94lO+BCmPsgA+qojdSXYRDTNYerAlCiP8CwS9dmLRUkvdsnYpxjriI3Iu
8gRi4DlL0wYMRtLIplJaXwULht/tOQg322Q9RsGb7yLK+gBjNy9fP7Gjv5BuvMEiEdjGN8+cVwrh
LQ+xFAkuXJw4YW/ABhFEilyERAXSSCnNPLzhVhCQWeaALTGwlNkKuNT3yF3txchw49d84Uz9mbVV
DGs3r6TnQROCbUiBq5Ej2C1+XueAVPDjxpg1rNRitjvc1eLv2rVwCzwbDltFg/vWyW4xajLCcdRP
3qZNqz8GwcxWspO2vo7/gQTE1Zgr6u/5Q+RTmmTjMzzIOaYpE0CTD6ERgIwcb6MTNUkt9NxT0Kk3
snZM5JoED135u08gPcn0MBhnyD3an+lKnYXufiNN+MQnAovQAam18QD2oKKvogbf8LoCt/+HFzHr
y60PcK4MNrYxxH7as0nZTIPzlR4CnRGh+uT/bIFrSdnkY7PdAWOCzVVihSOWbrwEV8NcPkcfJOBw
zGJx34tsAlPRa+Rx/cYnRh6osESM7ygL2YKxPlnAzUbd/4eh4fyw6w+nrtq5oDBJAoD7p7Co2Eh3
E4rVLIe2kpunbCAhN7UkXwjfuIj53Cbt9gtljKgC1CIyk3RawjExVLeZG5h9iei+WIBLTmXZxIGi
s1KKLS5qXuqZNgHLzk6CNlZINsjwTeTDVyO6mwWB7zTtHBungJS4FqvUrt8J4B/xl+gnSAspr5Tv
eh0VzjN25lVYprivyB6X2pJcpskvAbDEl+yD6RVU6ktBtr+ulmSQp6MbAtZgTqL4TNuxLfMrIP4a
v6ESef1cWCJ+WKVt0Ro72eTXwVOzPHhfkaWldRW9pdR8gMfxtPKcYhJPY4xrT2JnsYDkf0VLOuvx
JfHi1sIDsHng0RyyLcDn00y5k582u3wKXEg8NMCwZIj66aOlnUjGrTvPdIbsndL6Xxoob/9leUjU
c6Du6PNxIfcVYuxmeMZzlTzDT5ivriUATN+nPU3tGjnQJIzWySBZ/Ij7UaCmwCgcDJJdh5xwdkFx
RdnkHFupQCU7np9QbrotVXg0eNRzOmlampg+xbhDrMboIUsLG9HUbvRu/ZyyQou+o+sCvA4Qt/EY
tmJS77Nas3dWnp8hW7/yt5LcJy2uT8RZ1FG/TCTd0lbGhcn+WemMGtNvR3aT1cJxTWmg+h60+Hj6
bSjaKfWRqTe2Sb4L2hkEqe9P30RCgQO0iCErwB0F3dgj2mV4bQc6hwMIARIKHbrLuTCtjOpWQcqi
jAFygdN/nI1TGal/RKVTSpHGuC6PsyYwobGsVgqgRcWfpf7adWtY6pnr76cu0X+ES3SgzqB2xBCR
PWPBZ1VYZ+r1NdC/HB3zQD5SBi4JN3+G9MLMY3XsfWl2xj7CFy881XWX788RgVSGW86f2WlTfNe9
7F0lszsOYm4Gpk+uft/C7TbVQ7Pv6VMqn7ldYKB250nm/PTl9yCbJnxSzMrL2gLjB2qiWHqvjFIA
afmbhhV8Ngnafyg0RKGTmFFUY4JOkPJ+DaMq+JOlHRZ33dVGsOA1oMcViPYTl7H7DwKUMo9kd9tQ
bRSiqgjJ6LmfNziwmYFcn4XUo2HrQn+u9rvPweqviE4gctuVcn8skd4slcutTm3FGEWGvyx4xgrE
sllww7OLo2YT5YG3jql0VpQo8KRvt3UL4KWAc4WifYgHx9sPDG6EWkCimTMBIoxt7GFnlfKvVa9+
cpxGT5PYTzj1hfo8kUMCmKvB2jJVqHZ+ypV79Z13EMKu/5YABNyOqoUHkV9BPK0ksJgQh92VxSLl
bQBZoVy7k8PYU1pKZi5lXaYK5Py4l9CvCuuz59zpzAHvugqwZKTuPZPdAd2lwvYXjo3x7jFhTnLp
69rF/ISvboDGLD8LkoBzHXzabV1RnG1Fm75hVNAaH1vopQwoUPJ9VTqBDnL6BFcKwIjGfrlbDZkk
NvsyG7i/YQdUMpqb94fNrsMapwZP3FIKXGpnUCUvRVWRBqHHTv3ddguSjR4VgwXBwS3af7xO6LOo
FsxjpRCdcHKUCgMo/YhctmW9QXqW+y6cpctuKabhnPvbGjOgBhiBFqFO/2B+fJ/lG1G7J7ro1lNi
U3sX35iU4XoxGCpVGo7+xsUg6ytidCsYJmqoxoVvZCkO806XiIqaalcLwu5urEM7nh0FKLlp1zJY
DtO//owqwMBk834xBRN8q4DRNUu3N1SAT+FN95eW8zW8ooYE3j8bGpIyax/mU24gANfYXAdrV99u
TsSwj/1ozxYxVFCjqwXrU1rfYfON0ieRRejNJRsjLckLgYds9LfO4CIZDsbLuthGuSnu2e4qXCgM
EnQs9begcv5WeDhqryQcB9k5qRnkZOFgzpqydaglDk+k5zBpJ74HAUqZ5wXh1+jlPUHZW+Dl/Z74
yS6Vi5PLonGRJnxi5kcYMMjFxLAah5mIfri73uU9RAn4WX0Ia1ShDnsOhL/SugDNNBA6iC72CSew
g3bHcjAdF65A8p7724yifGXsPkD9g0C88LzG+oCyvZnOMx56m1X26nPH3mBxM+5Tk4plVKlnHB72
HMQyYCdaXB4FhPXngT51O781WPt6XFqAS5KM+8FV7F9suh2PXaMvzWaXPdajSqIQtzu2U2ZpPF/9
kJtj1T8DIiX0ZLElrp73KfAjg9SICoXSoBZ3vMM0ft8WepgkXKgukM2rSkCIvZuuzehLUUkegarW
NXD+ktysBz/8T4qznXmhNwRpDfObRIBON7KPIb+oqsvsRzLdiiAFFLVdejpWLbr7syzPVUrhG20C
Lyfqpd+itDZuwq7SQUC7s3yHKfphCWjUzP1mt4ZBO3zIAzCle2iDtRUWvKaYlxcTsZdAcnI4US0K
v9k59UQ3iniTr9tLiMUDTB/31yzn4FiNVhOai43KyuDeEr2xRR79sgawh9o3Vr1ztCrk9PfOJdJM
zjEOLT8Kr2mm3WhEUtW2WshcUMI1avzcZkv6Zk4DtYQ4BvpagwScrIp67WhEK0D4PU1ze0N7MEYy
tw27BI6PDnEwc7gIQYxOHdUzZvix141wGNvCymGRMU2UksJBa2vQ2nCbNqqDo3G/56cbFj+eURe+
gJecRAjdpxCbGYQT7Wig18P7wIdcwA4/v0qvctqfy2y3gKNsjPWQXDktGRRjkpCcChJuH/9aazU8
acsu4nBiAHhLQIQNDbvMoaBlE39sq1lJVfGLv0oOXiWmnypH8rB6Whhl0sB2+q7XOrdVsqsQlExB
dzyJLKoL9sffEa4ygFKNG4gtTEV2YQxuFumbPTgzhf6fmsmioE9GfSzNmcwqqGYvBytx1I+/fDCR
V9CAW4KRHUC9q9G+ZyO4KoctKJy7W/ToRBfJKES/Tfmrw7Xac+Th227du5xFCoTisS0wLaaJ0OvE
hNtC/QNkXwexV7QnAKj3jNbz1Ap4bTqOLc8q/vOk340mpARFxoBHzX+g7pCap3Vs1feAMcyMXFun
ARNisXPkiRH6d8Cb8N8HiMzxfFvx8RADWxVoAcg9tN0w7ywYb00MxmUAS/gQBOnpnesyImiz1Q95
g+LN4NaaqJ6yfisLyuYeSpvo/biptWfadCpHi70z/IJOV4rPghKGmabIITcQDy4pSqApFcu/HsnX
PjmeA6/D6x3v2yCSKYvk5UPwoA1hnsQn8jR/csbfo/kRjrSGmasmxlXBnnIoxXwd4UwzHk1HEYd8
Qa/Lgzq4G4Q3gnf+cnPWV4wu7nfJW3nKdg0LW0+53Dcn/6mkGaFHJUPZuiLWsgWEJ1q70o/tZpM5
w4n9R6RINWKiOZlUzbczYwC2xN4nO2yhQwRy/aCwPCtwLVFRhhd2pZo4+NDRU53PxFxPB6Rqcvhh
Bmm0pUwHUYbBm8dAlzNGQwWiXygPvLupUeNtItOL5zbediIWHbRz/f2xx88V98cUxJRNTOb/fixe
9XK7p6UJ2NAypv3r/P0Dj3Bq04t4wuITovaxIch+8N9f7N9yBeHSk+LmR+r+N/bxaBYuYhIgXZRq
F9sTndshUtlMmRild8CT4LigN00NPdimRBATBPWlxQGenj6kKDlQ6RKpR0d6EoK1n45w7Nff5aab
rD/9xJtNqW4u6t5X7NsX+3z/2Fwg9GVWosSJeS4WkegY8ReJ7V2dsSkSfZDdtAYhqggzb7nA8D+R
rvWXKO5n7XLqcQSjJJ9+9knx6WfmnVOFbMou4tP1P65D/j4IMKxjLkU+Fxw103FsMfAMYu507tk9
mkZnUJZr/tJAMxydyFy2+blJwGsIQ5P0aZtVOmYk6WWXJH7ton6+J+cJyuWTAXNuX1sBeKofIlgy
y2rwzEzKnaaVtVB8RUj87Cjua65S+/BMBBx5yOMEyU4bbSaIU+pS0T82oa4j1xYv8wjKPEbBOInr
6H9HZZDYnsZKFgEfE/CrRXgDJr8NlV83ygz3/+aeUbWmPZpVO/aiii/BoP/7zFeAor386kN44PPy
kZ2Uq71IYpFvzBDtfg/+ThO9Xm4WH1XbigiM9Z7UYvXh6Dw8idhjESv4Fo/i8Gil5lj2K1nxrDE4
5S2qUxNm2h/YzgfR4jDpU4Bk1AQe9U6+O1ciig6SsIi3kPMA5zNRz3HHDTMx0n5EyPRjATw9pcFJ
qzeTahvQTsmRL1KouErEvCiZAGG7OCT3IXkqrSQTZLnyce5orwWMged2XIvsyXPmR7hsdhyngKqy
HwZvLcHOt7UvLXa1yhEKvS0Wp+tHIgnBwx8pXAyISNeq+dEKiVu9vAV7gfvB9nrhY/OabA5pvnn6
1RrbiOt2NJ3KRAKb2ZGfheDS+iFgn2aShiwOQwfEhAnt910psB4JA5RN1eX+kR9gKS9qs8nvTpts
6pF9e9wHko4dBUFLYsuNEGhQ5hPLqyol/ZUiKTCGxiSltM0lIKDOcrklSMBmijW8duMzCVt8kXep
yh52apHTSAk1YMHR0PAWWcx28M7JkRyo4UeZqB0SRiDlPM4OoDJe3qO22q34HRYThhj/KJFMFBzD
46YwEJ8HyEv9CAmWh9RW5yDiM6ou/IPpAT4ikHdm7YPPIRscsxXKOsmlzHPT1QkY8AkR5e2yiQ9x
O8vvkM+P2s56vaYT9R1PIe5TPnMmyZeW1pebPbTxH1Ln6JIL6afoG3KSDgepHUeOXZQNLoF2XKjp
T569bEIxB9t6uBauSlsKa6ckGLiKBfgxD6X4ked5w9vZFouI7S0lOR0vEfsK/nj+iIeVCgOQvu8O
h0zGc5+K77l8iLLDoMwEaWQEZG9bv1WI51d34nfvjcgrSK3ZW8RcxKqhgLl0CNj81YglKkffbQIm
CJf2M3T3QYnCqEKKibhWhwU254ESq3fFWOl9M7hE9T/IQJp8YCQGNWt6Aus7C08/MLTs7DmAYFlg
kYxAZQrg3ROs2rf+pGsXmiAxDBU5fncxQ9TSoaEfVw0d3hOozp3yXh/Wy0zepRAbpt8etOPc7Iq2
tnsUQRs+jrcKq/G9O1AveaLGU9LXvDdfns3Z8TskZy813JpZ7BsdvpqB9X7wlcbouoNOp/9KLyK7
VbP8pj4/5KpBbff5dvBEDMiGhSFWgHge+Yu8Bgnzkob1g2JVONU1+9wM1y7mKZz9O4iSx2slwbnu
Hm3p65F+FSfvPY/eQJoD8T/p/G6ccFbvm3L5nzl2L0L7ng/QWm1n5J5XXDm25LH/3VuEYptnk0ZD
eeBoVvvEuClNoruRmAIucT9Gsnew9zy2mYsXINzCMZOYKxt8iwDUoDEvSj25jcRhSknKVBa1Um1x
z/X4w6MRNz72D6TPR9AApxbhtbLe5hxPfUBR6/qBk7qxl08ZfiLepFCSprUkvUl6CMF9uUPFDHoy
uwTZcfrKKfiU1slLcVEbQTMe+6hQamzZiEl6DoSjlawn4IXPaSk9Tjm2HN+ljUg7YJPLp065/9+Y
nYr/N6RkOziQgXuCUgm5i1xPhJMzwmh/xTDCHRUH/yS+ksL45mxjvzzWPi1cxLeHecG27LBAdvtm
L9xtZbF/YS7MK0IOE6qVSc0d2zqMBGRYoaVqzquvAxF6PKeXJZgcosj8Fw7Wv7b2kPwMZUt0LfOg
4wOqcGuV36i+GaRrlQ9JoZbUE9DGAsldbieKu3skhCw+V0ymrgL+vcQZhM4RS8d511z6Fv3WsE80
j2Plnu+YoYAEiAXV40C6LkDPm6/0Imsw5ZjaArw4mfSS7tunGZgU2Jdkj676Qy9jiNMVP+J6r8mm
YR1qQdOYAGOPtX6Z77JEFiyjBwOsH0mxO5nnyRmhNhnZ9RaZ8tniCeSkMcOzjN3ASVwjUdSh+nTB
t7vBQmX/xupdwyriQQwwQAzZBMoXH9C7EhbvbwiXB17+xgO6I59pgZ03qUX3g7fRpjKKWrXtlZJW
gAe6FZbnmWXaxldYw1C/YOrhWdLzs1mvzP87dKY68cAYEy62yb1uFT2iKC5pgajzhfDpX9VNumsR
N8Wnv5RjTwlNx8aG95NNSbAuzil4DPL4L73bL0qxTPK35uxmuzLzkq4F4SEcFw6Fi+Ik7uMKwlV5
/q8sBLhj97yut8+xuQPslmL+7ugTm7Wo+/SHy+YtcbFL1Wo/1EQjB0TTBzTkZ/jz3QpTnLBFXZ0a
G5y1iZZZa0ePyBr4dCvcx7TBn1CID5xe2Kco9S2Oo6knPxlDNpWroYvgzoDbAc7cOSPHxvE7v9Pz
3CMesSpAcKi/nTFytP1aeSVrucE5uiGwLJspmQSqC8vc+eMGZo3ilforvpnzd3x5FiZo98KigsPN
5IEgDwE/j1e2i0exTrwOJp4bcj1Czwr5bq0Es28mxqXNJGOh+U9NC/IozWxTEwpMSIBU8hT9LfsC
wD+Z0j9zoOXpEkZUn1eMhQ2HMfqTszHGd9skP2SZtAiOjM9+lJw+pLxoY/Dg8KLAWTWBvotH1DV3
HD0nRHjU/ZMAaT82zIJib0Y01pWbXfDHQNovxJuDD2YoVlTjFEENgz80AADDpU6So8z1if1gRT3l
bzloSqsSHAXoQ0itXtqqoSf4KkHvZGRjyB+MtETL2E7PCr5Lx1o6wh936epHBLK5j1hEtLiCfap3
5cfK00HjAd7p+JvVTzH8AOQREaKHtBYyv0UnlIRLHheLo5Vw+9Htlll8yGUClHOxfNl48OTSoB6v
7GG/aFi4iyPhaadM+jUfctYTyKQbFfUqIRC3JwRG06e+QmHZZH78+teEdSaND+Vp769ZF+VEdvn4
GxcAsOq89H6KBpQNxzBqu6hSayPHWDpJ3W5yVfMTiCiYCaW33U+p1WRiJ8DALSi+ixX0fpmULqon
xnPiMswwNe74aLe+QT1X0oeJjR69BPABCQlD2zMizGzugocLntzihSVk8y0pntyT9NQJUOca3Us6
KzLzQlsTgdud5EHYtJSS1CLo7CNVdZPOGMNXvwaksnK6A+P+rA+LCwCzE3EhAh5v5Hci2iy7LOl/
5UQPCP+v4JRLPjKciILAQuUD5h4Y+6eKUioXARgJ2FX7Ukw0uelepuNVsHUGv2NUDoYrVYxNsuVA
W5Pp9cunSP9pRkfp4iWOvAghnFs19nPKdTahimvQMrVUVUxRnVbnLYwFjO1CTy7n082qCj+ntSZv
16hNhRvvsweVpKpPpE06aiLchK+CijOmBB2faUfYj57LHI8noYgTxLFt5iRBlKkcMubotADCvt9l
iPeyPR+GdqCZOKFPTCqW87Us3/mqKw8SVXPYxzeRZp3lKsl1Dw0iad/TZ7g691Edbbz5lKTd1SPw
LlkwHrcaWhWIp4sMxaUsL64m6lqzGlSq190GEoT64/VdyVIAR72QXy5eMA4rbzDo6RZcMIy3MKBb
o3qPuk1MJL7GihwkunBC2voFEMvV6E8Pbgo32i8Hu1AmWbS3u4Gpdb1Dwedffz9UrZsqaLXl4bDU
9rRSSunbyKbEL79TzDOffzUAztdr92U1RKU81BihRyXQAmHqZwv5jd8Krl/y0nLIOBjuuY5Zv3aZ
yjYc6F8C4yBJ0E4q/PKyObBqGlEivf1eyUkA1mHqAZMNXqceksZTnoclOuBmKkDgm/ZndN0RF/Ti
3KYG2KI4UHx39k+Y60YhlkFvUf7L/qnfhk7egeC7cgbOFJEkbabwO7O0wP1HFRPdgOjpLpIkHw+G
NipW+b0yI+2wHWPhAMI/yYPhsUEtNJcf0KMnzCSVLcoCuVtAfyI8ntz0fpg/vz3P+KlcblBD+vK8
N3/wDZDRxoffYAzigYcb5ZOwBhcRbkk53o7gcmEuvc4RvvCMrSiniwwEPPt0HJnzHPljaiGY6x4J
P3XSwyufRP3uPRTAItZ8KsrK3EH9wAVlZXJaWGenjVhZJzbIZ5YO+hj6BD5bU3L6XZnrxudc4yTA
QzfwkGN8KwTkpfaja0Vebq538OR319Xd1z8r6jU/JnB3QVrTll73tRQPHOVlumrTLA7Z1ftGpFF+
9Z4Lf8hCfX7tLwgN77zBywkLju6RUHnX+OTSZTPoFSfc3lG89yE7xSoz3+ZCX+0kdbfcW40tSnID
DmRM4zdetx1rkcE9QiDHe94zLzGGC4qmmpHDKqG3cPcw87OgaXWKnAaDyb8nVXkKgETMA2mMLZF8
y0WDk9lK0+7kh9FFlw8QSjGwA/vaB1WD4nuWuLlSdXIQ6ijK3JTVIChTY9fOAtPdrN1mbGoPjiop
Bs2dLS/U8L8gi0/YFzx5k/intlsI7QYD3qVTjm8MYvPDzZSqqmklcZk2eS83Y00Ijr2UM7G2GpeS
XTctEc89XO8JnulAnIeePxtDc9eHghFt35vQH01tMQi7fhxZzBbfjCWj36jvKTgHKIqm2U/HH9Zj
wpIkEFvdQK9nKi5bFP8svH9ManjdApQwLXSmX6lR+uo6ANnryDktr0BSMDKDc7bGXwC+YfWk9eP5
6xxcKa6ZP5asAFuNIkVbQyIJoM3SxWKhSK1JLZmUYkDfejagD6Omtmg1IYJtpO1vxa5/X08yv2qI
wFCYhFiDm2HRwT1YrvBopLldjFG4NL+GddN7cMyaGxb/y8VmYMVVmQb/IWcETll35iwm3/ui8Pz7
4b9A8kc2gpuZEYys6PWlB3bMLqjAw+ELJKvVrfbD8TSRJam22Jlpkcnzoz3E+IXVNmH0JTUNTJER
o/C9lBW1m+7wbtm616iVy+Alv48UnsC9lJiHBxfStmFXEljun1zPS9VRZZYIacjLNpK2jW0TFllD
mnGPPaGagmbxPzAr6DKVYh3yercDrOVacJd5GlF1DR3g3yFrWsrDlMLIcbSr07sNvNNrTVpMBVZC
qBmIm9YM6zlmJM+4e9I48mPDpN073bjn6O8i000zNz/5oQrd7fMNKW+BJ6TrGHHRSaEJqJsDdnbo
nNbMFFkrJ7PS9CY58ui/1Rjs7BGgYhjllylXUOcZBQ6itm+uhANmtLFN1htLQjnFBQX7ae20khyF
kGM8/UHYB3WXEgnfTquvBCbqlMRepf43TsAl2BJn1TCtpoa0p1lQI2ATQkzoNBq4jkYVir/peg/g
EqlKxLmeIZJS6j/RXODsdD7Sjp7ioJU+q41p01FBd45yajDv9Dyv3T0LPh0+K9UKCr0vqM55gxk2
NlNC/OvczonBNET7M4xOBsKvBQIflQ/yNZ09d4ijqm2M4gXc6OYIw0+E0u04bnvGYztQsulVME2t
dWJnsMEEQRroYQ097z8PgaEa8KDGP/1UwHfFy3+Kj4EceVdRHOIalz0b4kiziA12+ugRwNHKEKon
Vu964nZ6f8MWAvLXcrWP2fvYTq4DevaE7QS5fltmxLBBPp8tuyGNnyy8c1ECDXAIAYlSt7xCV6es
Z+Zn9k/2kNV8o+k1fYM1JN/gb/5WdCK5/CJc6US5qFR4Dah6x/Pxel81GDry5kDCWX45opZwBXK9
98LUajfsNxl8yBTO01RTuCVbFnzGGcnVh6cj6PvNG1Izod1WRInNPjit1us13eAeic8Q1/FODKMd
d4BfuF9jje0gN9PI73pmddaPDn+aKM1BMgV2/CX1B+ongVD2vMJU7+gX510K1yie2bPm2cB9ECX5
ISM9eIDnoJ1HywtdvtIszw+MqQ1cHuj4Kdw/8J4j4CMRM4KMJJGbj2/MX2zVXlo9K3uYisx6Qz9G
rdHov1SsYjPlVbczZkKo0wSX5YGPjYqJyj+BaT7Abl9B7s7wVFNdSxRW73J1OTH8pu0jt0L/cLXM
UtuHA42nOwDMWL5+rxjG2liAZiLAsp3XVO1kgYy9MNNdoGfrp2TXqTQmiil+vVbJrMBuLnBXGeJD
WHUo6skvFGzpOdFstfetIUhBx7JGu75G5HNKY34LSMvW3nGgvzlfhjS2cdU0j1lI2+BRAvZGOgZN
gYrDXuOqKF94jThFpp35y0Bgzmouq4PcuZEgvRxvLHGMG7pV1imRAc2hi9gtKCUE9qzL/HXjb4HV
H9hr6J/ZaPZxUzgE1SppqKEBood0SFF+GpShe3PuKP94bP2lOdHngS1Rvcl2M7fUFSfhkPQRvmVw
Q6PoHjmnuTqtcRqXDIwrynq98ZiD6IhAg791355brgZ2R1xywdYuefW8+6EwTAiv2EdMYhr9HhqX
58wCeV5CyIALCMw59YXoImRwrrL59DY7mrLBFfcwJFtl/OsHSOtyULFU/ffg9Fg/zvEJ6g64A+R1
dZTq3zj18LpGNkxClMBmiZcJpnoQNI59B0FN4jCdy8fgRVhJeUEl915ESqnfZys6eHyHFsHtXcMw
l+WJ6RXnNPachOpYXE17unR8rr0cW9sWNu4DDSpaaw/n/57OTSNgfp9rDM+noFNQi3vPuIp7B1eN
juXHDgPo/bDqDPvbh1gVqOKPOSHWy5nvYtRzcahvKfyeh0mItK0Mvkep20d8wWLXk1NNc5OmKlZT
aJXJ7q7dBbTsOXfNivEI6E3Vlhr6Rg5E18brxIYNcm6rNnv5aDiEO1VYaHxMRSd2ejCYl54mHQxw
xVBieuSy0Z1AKPR7EAkag0QodrTErf5oFGbCsVzUrAVjiK+V
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
