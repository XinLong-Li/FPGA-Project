// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jan 17 17:20:23 2024
// Host        : LXL-MAGIC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/lxl/Documents/vitis_hls_ws/Project/Project/vivado_project/ORB_accel.gen/sources_1/bd/ORB_accel/ip/ORB_accel_ORB_accel_0_0/ORB_accel_ORB_accel_0_0_stub.v
// Design      : ORB_accel_ORB_accel_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ORB_accel,Vivado 2020.2" *)
module ORB_accel_ORB_accel_0_0(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, src_TVALID, src_TREADY, src_TDATA, 
  src_TDEST, src_TKEEP, src_TSTRB, src_TUSER, src_TLAST, src_TID, dst_TVALID, dst_TREADY, 
  dst_TDATA, dst_TDEST, dst_TKEEP, dst_TSTRB, dst_TUSER, dst_TLAST, dst_TID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[5:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[5:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,src_TVALID,src_TREADY,src_TDATA[7:0],src_TDEST[0:0],src_TKEEP[0:0],src_TSTRB[0:0],src_TUSER[0:0],src_TLAST[0:0],src_TID[0:0],dst_TVALID,dst_TREADY,dst_TDATA[295:0],dst_TDEST[0:0],dst_TKEEP[36:0],dst_TSTRB[36:0],dst_TUSER[0:0],dst_TLAST[0:0],dst_TID[0:0]" */;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input src_TVALID;
  output src_TREADY;
  input [7:0]src_TDATA;
  input [0:0]src_TDEST;
  input [0:0]src_TKEEP;
  input [0:0]src_TSTRB;
  input [0:0]src_TUSER;
  input [0:0]src_TLAST;
  input [0:0]src_TID;
  output dst_TVALID;
  input dst_TREADY;
  output [295:0]dst_TDATA;
  output [0:0]dst_TDEST;
  output [36:0]dst_TKEEP;
  output [36:0]dst_TSTRB;
  output [0:0]dst_TUSER;
  output [0:0]dst_TLAST;
  output [0:0]dst_TID;
endmodule
