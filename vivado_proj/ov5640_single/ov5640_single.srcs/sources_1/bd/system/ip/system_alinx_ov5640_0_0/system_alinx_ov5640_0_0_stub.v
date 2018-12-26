// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Sep 22 13:38:13 2018
// Host        : DESKTOP-2GP67RG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/ax7010/15_ov5640_single/ov5640_single.srcs/sources_1/bd/system/ip/system_alinx_ov5640_0_0/system_alinx_ov5640_0_0_stub.v
// Design      : system_alinx_ov5640_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "alinx_ov5640,Vivado 2017.4" *)
module system_alinx_ov5640_0_0(cmos_vsync, cmos_href, cmos_pclk, cmos_d, 
  m_axis_video_aclk, m_axis_video_aresetn, m_axis_video_tdata, m_axis_video_tvalid, 
  m_axis_video_tready, m_axis_video_tuser, m_axis_video_tlast, m_axis_video_tkeep)
/* synthesis syn_black_box black_box_pad_pin="cmos_vsync,cmos_href,cmos_pclk,cmos_d[9:0],m_axis_video_aclk,m_axis_video_aresetn,m_axis_video_tdata[15:0],m_axis_video_tvalid,m_axis_video_tready,m_axis_video_tuser,m_axis_video_tlast,m_axis_video_tkeep[1:0]" */;
  input cmos_vsync;
  input cmos_href;
  input cmos_pclk;
  input [9:0]cmos_d;
  input m_axis_video_aclk;
  input m_axis_video_aresetn;
  output [15:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  output m_axis_video_tuser;
  output m_axis_video_tlast;
  output [1:0]m_axis_video_tkeep;
endmodule
