// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Mon Jun 11 22:21:15 2018
// Host        : 310-2-24 running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /csehome/opera5/HSD_kwJS/HSD_LAB8/hw_3/lab7_ip_repo/myip_1.0/src/xbip_multadd_0/xbip_multadd_0_stub.v
// Design      : xbip_multadd_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_multadd_v3_0_10,Vivado 2016.4" *)
module xbip_multadd_0(CLK, CE, SCLR, A, B, C, SUBTRACT, P, PCOUT)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,SCLR,A[15:0],B[15:0],C[31:0],SUBTRACT,P[39:0],PCOUT[47:0]" */;
  input CLK;
  input CE;
  input SCLR;
  input [15:0]A;
  input [15:0]B;
  input [31:0]C;
  input SUBTRACT;
  output [39:0]P;
  output [47:0]PCOUT;
endmodule
