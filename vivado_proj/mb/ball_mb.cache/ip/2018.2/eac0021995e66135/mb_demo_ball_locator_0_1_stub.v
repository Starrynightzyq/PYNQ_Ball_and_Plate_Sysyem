// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Dec 26 22:31:09 2018
// Host        : ZYQ-Mac-Win running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mb_demo_ball_locator_0_1_stub.v
// Design      : mb_demo_ball_locator_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ball_locator_v1_0,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(en_take_color_i, OV7725_D, OV7725_HREF, 
  OV7725_PCLK, OV7725_VSYNC, OV7725_SIOD, OV7725_SIOC, OV7725_XCLK, OV7725_PWND, OV7725_RST, 
  vga_hsync, vga_vsync, vga_data, coord_valid_o, s_axi_awaddr, s_axi_awprot, s_axi_awvalid, 
  s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, s_axi_bresp, 
  s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, s_axi_aclk, s_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="en_take_color_i,OV7725_D[7:0],OV7725_HREF,OV7725_PCLK,OV7725_VSYNC,OV7725_SIOD,OV7725_SIOC,OV7725_XCLK,OV7725_PWND,OV7725_RST,vga_hsync,vga_vsync,vga_data[11:0],coord_valid_o,s_axi_awaddr[3:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[3:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,s_axi_aclk,s_axi_aresetn" */;
  input en_take_color_i;
  input [7:0]OV7725_D;
  input OV7725_HREF;
  input OV7725_PCLK;
  input OV7725_VSYNC;
  inout OV7725_SIOD;
  output OV7725_SIOC;
  output OV7725_XCLK;
  output OV7725_PWND;
  output OV7725_RST;
  output vga_hsync;
  output vga_vsync;
  output [11:0]vga_data;
  output coord_valid_o;
  input [3:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_aclk;
  input s_axi_aresetn;
endmodule
