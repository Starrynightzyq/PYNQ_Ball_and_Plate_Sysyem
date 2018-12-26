// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Dec 25 12:45:54 2018
// Host        : ZYQ-Mac-Win running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/MyFiles/PYNQ_Ball_and_Plate_Sysyem/vivado_proj/ZYNQ_2/ball.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_stub.v
// Design      : design_1_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_1_clk_wiz_0_0(clk_25M, clk_125M, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_25M,clk_125M,resetn,locked,clk_in1" */;
  output clk_25M;
  output clk_125M;
  input resetn;
  output locked;
  input clk_in1;
endmodule
