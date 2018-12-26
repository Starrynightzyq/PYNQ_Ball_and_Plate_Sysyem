// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Dec 25 09:52:49 2018
// Host        : ZYQ-Mac-Win running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/MyFiles/PYNQ_Ball_and_Plate_Sysyem/vivado_proj/ZYNQ_2/ball.srcs/sources_1/bd/design_1/ip/design_1_CMOS_Capture_RGB565_0_0/design_1_CMOS_Capture_RGB565_0_0_stub.v
// Design      : design_1_CMOS_Capture_RGB565_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "CMOS_Capture_RGB565,Vivado 2018.2" *)
module design_1_CMOS_Capture_RGB565_0_0(clk_cmos, rst_n, rst_capture, cmos_pclk, 
  cmos_xclk, cmos_vsync, cmos_href, cmos_data, cmos_frame_vsync, cmos_frame_href, 
  cmos_frame_data, cmos_frame_clken, cmos_frame_de, cmos_fps_rate, locled)
/* synthesis syn_black_box black_box_pad_pin="clk_cmos,rst_n,rst_capture,cmos_pclk,cmos_xclk,cmos_vsync,cmos_href,cmos_data[7:0],cmos_frame_vsync,cmos_frame_href,cmos_frame_data[23:0],cmos_frame_clken,cmos_frame_de,cmos_fps_rate[7:0],locled" */;
  input clk_cmos;
  input rst_n;
  input rst_capture;
  input cmos_pclk;
  output cmos_xclk;
  input cmos_vsync;
  input cmos_href;
  input [7:0]cmos_data;
  output cmos_frame_vsync;
  output cmos_frame_href;
  output [23:0]cmos_frame_data;
  output cmos_frame_clken;
  output cmos_frame_de;
  output [7:0]cmos_fps_rate;
  output locled;
endmodule
