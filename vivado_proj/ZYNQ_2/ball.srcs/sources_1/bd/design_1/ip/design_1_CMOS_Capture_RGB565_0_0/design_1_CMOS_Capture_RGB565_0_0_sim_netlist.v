// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Dec 25 09:52:49 2018
// Host        : ZYQ-Mac-Win running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/MyFiles/PYNQ_Ball_and_Plate_Sysyem/vivado_proj/ZYNQ_2/ball.srcs/sources_1/bd/design_1/ip/design_1_CMOS_Capture_RGB565_0_0/design_1_CMOS_Capture_RGB565_0_0_sim_netlist.v
// Design      : design_1_CMOS_Capture_RGB565_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_CMOS_Capture_RGB565_0_0,CMOS_Capture_RGB565,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "CMOS_Capture_RGB565,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_CMOS_Capture_RGB565_0_0
   (clk_cmos,
    rst_n,
    rst_capture,
    cmos_pclk,
    cmos_xclk,
    cmos_vsync,
    cmos_href,
    cmos_data,
    cmos_frame_vsync,
    cmos_frame_href,
    cmos_frame_data,
    cmos_frame_clken,
    cmos_frame_de,
    cmos_fps_rate,
    locled);
  input clk_cmos;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW" *) input rst_n;
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

  wire clk_cmos;
  wire [7:0]cmos_data;
  wire [7:0]cmos_fps_rate;
  wire cmos_frame_clken;
  wire [23:3]\^cmos_frame_data ;
  wire cmos_frame_href;
  wire cmos_frame_vsync;
  wire cmos_href;
  wire cmos_pclk;
  wire cmos_vsync;
  wire locled;
  wire rst_capture;
  wire rst_n;

  assign cmos_frame_data[23:19] = \^cmos_frame_data [23:19];
  assign cmos_frame_data[18:16] = \^cmos_frame_data [23:21];
  assign cmos_frame_data[15:10] = \^cmos_frame_data [15:10];
  assign cmos_frame_data[9:8] = \^cmos_frame_data [15:14];
  assign cmos_frame_data[7:3] = \^cmos_frame_data [7:3];
  assign cmos_frame_data[2:0] = \^cmos_frame_data [7:5];
  assign cmos_frame_de = cmos_frame_href;
  assign cmos_xclk = clk_cmos;
  design_1_CMOS_Capture_RGB565_0_0_CMOS_Capture_RGB565 inst
       (.cmos_data(cmos_data),
        .cmos_fps_rate(cmos_fps_rate),
        .cmos_frame_clken(cmos_frame_clken),
        .cmos_frame_data({\^cmos_frame_data [23:19],\^cmos_frame_data [15:10],\^cmos_frame_data [7:3]}),
        .cmos_frame_href(cmos_frame_href),
        .cmos_frame_vsync(cmos_frame_vsync),
        .cmos_href(cmos_href),
        .cmos_pclk(cmos_pclk),
        .cmos_vsync(cmos_vsync),
        .locled(locled),
        .rst_capture(rst_capture),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "CMOS_Capture_RGB565" *) 
module design_1_CMOS_Capture_RGB565_0_0_CMOS_Capture_RGB565
   (cmos_fps_rate,
    cmos_frame_vsync,
    locled,
    cmos_frame_data,
    cmos_frame_href,
    cmos_frame_clken,
    cmos_href,
    cmos_data,
    cmos_pclk,
    cmos_vsync,
    rst_capture,
    rst_n);
  output [7:0]cmos_fps_rate;
  output cmos_frame_vsync;
  output locled;
  output [15:0]cmos_frame_data;
  output cmos_frame_href;
  output cmos_frame_clken;
  input cmos_href;
  input [7:0]cmos_data;
  input cmos_pclk;
  input cmos_vsync;
  input rst_capture;
  input rst_n;

  wire byte_flag;
  wire byte_flag_r;
  wire byte_flag_reg_n_0;
  wire [7:0]cmos_data;
  wire [7:0]cmos_data_r;
  wire \cmos_data_r[0]_i_1_n_0 ;
  wire \cmos_data_r[1]_i_1_n_0 ;
  wire \cmos_data_r[2]_i_1_n_0 ;
  wire \cmos_data_r[3]_i_1_n_0 ;
  wire \cmos_data_r[4]_i_1_n_0 ;
  wire \cmos_data_r[5]_i_1_n_0 ;
  wire \cmos_data_r[6]_i_1_n_0 ;
  wire \cmos_data_r[7]_i_1_n_0 ;
  wire \cmos_fps_cnt2[5]_i_2_n_0 ;
  wire \cmos_fps_cnt2[8]_i_1_n_0 ;
  wire \cmos_fps_cnt2[8]_i_3_n_0 ;
  wire \cmos_fps_cnt2_reg_n_0_[0] ;
  wire \cmos_fps_cnt[3]_i_1_n_0 ;
  wire [3:0]cmos_fps_cnt_reg__0;
  wire [7:0]cmos_fps_rate;
  wire \cmos_fps_rate[7]_i_2_n_0 ;
  wire \cmos_fps_rate[7]_i_3_n_0 ;
  wire \cmos_fps_rate[7]_i_4_n_0 ;
  wire \cmos_fps_rate[7]_i_5_n_0 ;
  wire \cmos_fps_rate[7]_i_6_n_0 ;
  wire \cmos_fps_rate[7]_i_7_n_0 ;
  wire cmos_frame_clken;
  wire [15:0]cmos_frame_data;
  wire [15:0]cmos_frame_data_r;
  wire cmos_frame_data_r_0;
  wire cmos_frame_href;
  wire cmos_frame_vsync;
  wire cmos_href;
  wire [1:1]cmos_href_r;
  wire \cmos_href_r_reg_n_0_[0] ;
  wire cmos_pclk;
  wire cmos_vsync;
  wire \cmos_vsync_r_reg_n_0_[0] ;
  wire delay_2s;
  wire [25:0]delay_cnt;
  wire \delay_cnt[0]_i_1_n_0 ;
  wire \delay_cnt[10]_i_1_n_0 ;
  wire \delay_cnt[11]_i_1_n_0 ;
  wire \delay_cnt[12]_i_1_n_0 ;
  wire \delay_cnt[13]_i_1_n_0 ;
  wire \delay_cnt[14]_i_1_n_0 ;
  wire \delay_cnt[15]_i_1_n_0 ;
  wire \delay_cnt[16]_i_1_n_0 ;
  wire \delay_cnt[17]_i_1_n_0 ;
  wire \delay_cnt[18]_i_1_n_0 ;
  wire \delay_cnt[19]_i_1_n_0 ;
  wire \delay_cnt[1]_i_1_n_0 ;
  wire \delay_cnt[20]_i_1_n_0 ;
  wire \delay_cnt[21]_i_1_n_0 ;
  wire \delay_cnt[22]_i_1_n_0 ;
  wire \delay_cnt[23]_i_1_n_0 ;
  wire \delay_cnt[24]_i_1_n_0 ;
  wire \delay_cnt[25]_i_1_n_0 ;
  wire \delay_cnt[25]_i_2_n_0 ;
  wire \delay_cnt[25]_i_3_n_0 ;
  wire \delay_cnt[25]_i_4_n_0 ;
  wire \delay_cnt[25]_i_6_n_0 ;
  wire \delay_cnt[25]_i_7_n_0 ;
  wire \delay_cnt[25]_i_8_n_0 ;
  wire \delay_cnt[25]_i_9_n_0 ;
  wire \delay_cnt[2]_i_1_n_0 ;
  wire \delay_cnt[3]_i_1_n_0 ;
  wire \delay_cnt[4]_i_1_n_0 ;
  wire \delay_cnt[5]_i_1_n_0 ;
  wire \delay_cnt[6]_i_1_n_0 ;
  wire \delay_cnt[7]_i_1_n_0 ;
  wire \delay_cnt[8]_i_1_n_0 ;
  wire \delay_cnt[9]_i_1_n_0 ;
  wire \delay_cnt_reg[12]_i_2_n_0 ;
  wire \delay_cnt_reg[12]_i_2_n_1 ;
  wire \delay_cnt_reg[12]_i_2_n_2 ;
  wire \delay_cnt_reg[12]_i_2_n_3 ;
  wire \delay_cnt_reg[12]_i_2_n_4 ;
  wire \delay_cnt_reg[12]_i_2_n_5 ;
  wire \delay_cnt_reg[12]_i_2_n_6 ;
  wire \delay_cnt_reg[12]_i_2_n_7 ;
  wire \delay_cnt_reg[16]_i_2_n_0 ;
  wire \delay_cnt_reg[16]_i_2_n_1 ;
  wire \delay_cnt_reg[16]_i_2_n_2 ;
  wire \delay_cnt_reg[16]_i_2_n_3 ;
  wire \delay_cnt_reg[16]_i_2_n_4 ;
  wire \delay_cnt_reg[16]_i_2_n_5 ;
  wire \delay_cnt_reg[16]_i_2_n_6 ;
  wire \delay_cnt_reg[16]_i_2_n_7 ;
  wire \delay_cnt_reg[20]_i_2_n_0 ;
  wire \delay_cnt_reg[20]_i_2_n_1 ;
  wire \delay_cnt_reg[20]_i_2_n_2 ;
  wire \delay_cnt_reg[20]_i_2_n_3 ;
  wire \delay_cnt_reg[20]_i_2_n_4 ;
  wire \delay_cnt_reg[20]_i_2_n_5 ;
  wire \delay_cnt_reg[20]_i_2_n_6 ;
  wire \delay_cnt_reg[20]_i_2_n_7 ;
  wire \delay_cnt_reg[24]_i_2_n_0 ;
  wire \delay_cnt_reg[24]_i_2_n_1 ;
  wire \delay_cnt_reg[24]_i_2_n_2 ;
  wire \delay_cnt_reg[24]_i_2_n_3 ;
  wire \delay_cnt_reg[24]_i_2_n_4 ;
  wire \delay_cnt_reg[24]_i_2_n_5 ;
  wire \delay_cnt_reg[24]_i_2_n_6 ;
  wire \delay_cnt_reg[24]_i_2_n_7 ;
  wire \delay_cnt_reg[25]_i_5_n_7 ;
  wire \delay_cnt_reg[4]_i_2_n_0 ;
  wire \delay_cnt_reg[4]_i_2_n_1 ;
  wire \delay_cnt_reg[4]_i_2_n_2 ;
  wire \delay_cnt_reg[4]_i_2_n_3 ;
  wire \delay_cnt_reg[4]_i_2_n_4 ;
  wire \delay_cnt_reg[4]_i_2_n_5 ;
  wire \delay_cnt_reg[4]_i_2_n_6 ;
  wire \delay_cnt_reg[4]_i_2_n_7 ;
  wire \delay_cnt_reg[8]_i_2_n_0 ;
  wire \delay_cnt_reg[8]_i_2_n_1 ;
  wire \delay_cnt_reg[8]_i_2_n_2 ;
  wire \delay_cnt_reg[8]_i_2_n_3 ;
  wire \delay_cnt_reg[8]_i_2_n_4 ;
  wire \delay_cnt_reg[8]_i_2_n_5 ;
  wire \delay_cnt_reg[8]_i_2_n_6 ;
  wire \delay_cnt_reg[8]_i_2_n_7 ;
  wire frame_sync_flag_i_1_n_0;
  wire frame_sync_flag_i_2_n_0;
  wire locled;
  wire [7:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire [8:0]p_0_in__1;
  wire p_1_in;
  wire rst_capture;
  wire rst_n;
  wire [3:0]\NLW_delay_cnt_reg[25]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_cnt_reg[25]_i_5_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    byte_flag_i_1
       (.I0(cmos_href),
        .I1(byte_flag_reg_n_0),
        .O(byte_flag));
  FDCE byte_flag_r_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(byte_flag_reg_n_0),
        .Q(byte_flag_r));
  FDCE byte_flag_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(byte_flag),
        .Q(byte_flag_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmos_data_r[0]_i_1 
       (.I0(cmos_href),
        .I1(cmos_data[0]),
        .O(\cmos_data_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmos_data_r[1]_i_1 
       (.I0(cmos_href),
        .I1(cmos_data[1]),
        .O(\cmos_data_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmos_data_r[2]_i_1 
       (.I0(cmos_href),
        .I1(cmos_data[2]),
        .O(\cmos_data_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmos_data_r[3]_i_1 
       (.I0(cmos_href),
        .I1(cmos_data[3]),
        .O(\cmos_data_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmos_data_r[4]_i_1 
       (.I0(cmos_href),
        .I1(cmos_data[4]),
        .O(\cmos_data_r[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmos_data_r[5]_i_1 
       (.I0(cmos_href),
        .I1(cmos_data[5]),
        .O(\cmos_data_r[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmos_data_r[6]_i_1 
       (.I0(cmos_href),
        .I1(cmos_data[6]),
        .O(\cmos_data_r[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmos_data_r[7]_i_1 
       (.I0(cmos_href),
        .I1(cmos_data[7]),
        .O(\cmos_data_r[7]_i_1_n_0 ));
  FDCE \cmos_data_r_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\cmos_data_r[0]_i_1_n_0 ),
        .Q(cmos_data_r[0]));
  FDCE \cmos_data_r_reg[1] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\cmos_data_r[1]_i_1_n_0 ),
        .Q(cmos_data_r[1]));
  FDCE \cmos_data_r_reg[2] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\cmos_data_r[2]_i_1_n_0 ),
        .Q(cmos_data_r[2]));
  FDCE \cmos_data_r_reg[3] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\cmos_data_r[3]_i_1_n_0 ),
        .Q(cmos_data_r[3]));
  FDCE \cmos_data_r_reg[4] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\cmos_data_r[4]_i_1_n_0 ),
        .Q(cmos_data_r[4]));
  FDCE \cmos_data_r_reg[5] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\cmos_data_r[5]_i_1_n_0 ),
        .Q(cmos_data_r[5]));
  FDCE \cmos_data_r_reg[6] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\cmos_data_r[6]_i_1_n_0 ),
        .Q(cmos_data_r[6]));
  FDCE \cmos_data_r_reg[7] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\cmos_data_r[7]_i_1_n_0 ),
        .Q(cmos_data_r[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cmos_fps_cnt2[0]_i_1 
       (.I0(\cmos_fps_rate[7]_i_3_n_0 ),
        .I1(\cmos_fps_cnt2_reg_n_0_[0] ),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cmos_fps_cnt2[1]_i_1 
       (.I0(\cmos_fps_rate[7]_i_3_n_0 ),
        .I1(\cmos_fps_cnt2_reg_n_0_[0] ),
        .I2(p_0_in[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cmos_fps_cnt2[2]_i_1 
       (.I0(\cmos_fps_rate[7]_i_3_n_0 ),
        .I1(p_0_in[0]),
        .I2(\cmos_fps_cnt2_reg_n_0_[0] ),
        .I3(p_0_in[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cmos_fps_cnt2[3]_i_1 
       (.I0(\cmos_fps_rate[7]_i_3_n_0 ),
        .I1(p_0_in[1]),
        .I2(\cmos_fps_cnt2_reg_n_0_[0] ),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cmos_fps_cnt2[4]_i_1 
       (.I0(\cmos_fps_rate[7]_i_3_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(\cmos_fps_cnt2_reg_n_0_[0] ),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(p_0_in__1[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \cmos_fps_cnt2[5]_i_1 
       (.I0(\cmos_fps_rate[7]_i_3_n_0 ),
        .I1(\cmos_fps_cnt2[5]_i_2_n_0 ),
        .I2(p_0_in[4]),
        .O(p_0_in__1[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cmos_fps_cnt2[5]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .I2(\cmos_fps_cnt2_reg_n_0_[0] ),
        .I3(p_0_in[1]),
        .I4(p_0_in[3]),
        .O(\cmos_fps_cnt2[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \cmos_fps_cnt2[6]_i_1 
       (.I0(\cmos_fps_rate[7]_i_3_n_0 ),
        .I1(\cmos_fps_cnt2[8]_i_3_n_0 ),
        .I2(p_0_in[5]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \cmos_fps_cnt2[7]_i_1 
       (.I0(\cmos_fps_cnt2[8]_i_3_n_0 ),
        .I1(p_0_in[5]),
        .I2(\cmos_fps_rate[7]_i_3_n_0 ),
        .I3(p_0_in[6]),
        .O(p_0_in__1[7]));
  LUT3 #(
    .INIT(8'h4F)) 
    \cmos_fps_cnt2[8]_i_1 
       (.I0(\cmos_vsync_r_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(\cmos_fps_rate[7]_i_3_n_0 ),
        .O(\cmos_fps_cnt2[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDF002000)) 
    \cmos_fps_cnt2[8]_i_2 
       (.I0(p_0_in[5]),
        .I1(\cmos_fps_cnt2[8]_i_3_n_0 ),
        .I2(p_0_in[6]),
        .I3(\cmos_fps_rate[7]_i_3_n_0 ),
        .I4(p_0_in[7]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cmos_fps_cnt2[8]_i_3 
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(\cmos_fps_cnt2_reg_n_0_[0] ),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[4]),
        .O(\cmos_fps_cnt2[8]_i_3_n_0 ));
  FDCE \cmos_fps_cnt2_reg[0] 
       (.C(cmos_pclk),
        .CE(\cmos_fps_cnt2[8]_i_1_n_0 ),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(\cmos_fps_cnt2_reg_n_0_[0] ));
  FDCE \cmos_fps_cnt2_reg[1] 
       (.C(cmos_pclk),
        .CE(\cmos_fps_cnt2[8]_i_1_n_0 ),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(p_0_in[0]));
  FDCE \cmos_fps_cnt2_reg[2] 
       (.C(cmos_pclk),
        .CE(\cmos_fps_cnt2[8]_i_1_n_0 ),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in__1[2]),
        .Q(p_0_in[1]));
  FDCE \cmos_fps_cnt2_reg[3] 
       (.C(cmos_pclk),
        .CE(\cmos_fps_cnt2[8]_i_1_n_0 ),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in__1[3]),
        .Q(p_0_in[2]));
  FDCE \cmos_fps_cnt2_reg[4] 
       (.C(cmos_pclk),
        .CE(\cmos_fps_cnt2[8]_i_1_n_0 ),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in__1[4]),
        .Q(p_0_in[3]));
  FDCE \cmos_fps_cnt2_reg[5] 
       (.C(cmos_pclk),
        .CE(\cmos_fps_cnt2[8]_i_1_n_0 ),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in__1[5]),
        .Q(p_0_in[4]));
  FDCE \cmos_fps_cnt2_reg[6] 
       (.C(cmos_pclk),
        .CE(\cmos_fps_cnt2[8]_i_1_n_0 ),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in__1[6]),
        .Q(p_0_in[5]));
  FDCE \cmos_fps_cnt2_reg[7] 
       (.C(cmos_pclk),
        .CE(\cmos_fps_cnt2[8]_i_1_n_0 ),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in__1[7]),
        .Q(p_0_in[6]));
  FDCE \cmos_fps_cnt2_reg[8] 
       (.C(cmos_pclk),
        .CE(\cmos_fps_cnt2[8]_i_1_n_0 ),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in__1[8]),
        .Q(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h001F)) 
    \cmos_fps_cnt[0]_i_1 
       (.I0(cmos_fps_cnt_reg__0[1]),
        .I1(cmos_fps_cnt_reg__0[2]),
        .I2(cmos_fps_cnt_reg__0[3]),
        .I3(cmos_fps_cnt_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDEDA)) 
    \cmos_fps_cnt[1]_i_1 
       (.I0(cmos_fps_cnt_reg__0[1]),
        .I1(cmos_fps_cnt_reg__0[3]),
        .I2(cmos_fps_cnt_reg__0[0]),
        .I3(cmos_fps_cnt_reg__0[2]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \cmos_fps_cnt[2]_i_1 
       (.I0(cmos_fps_cnt_reg__0[0]),
        .I1(cmos_fps_cnt_reg__0[1]),
        .I2(cmos_fps_cnt_reg__0[2]),
        .I3(cmos_fps_cnt_reg__0[3]),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'hFF22F222)) 
    \cmos_fps_cnt[3]_i_1 
       (.I0(p_1_in),
        .I1(\cmos_vsync_r_reg_n_0_[0] ),
        .I2(cmos_fps_cnt_reg__0[2]),
        .I3(cmos_fps_cnt_reg__0[3]),
        .I4(cmos_fps_cnt_reg__0[1]),
        .O(\cmos_fps_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \cmos_fps_cnt[3]_i_2 
       (.I0(cmos_fps_cnt_reg__0[0]),
        .I1(cmos_fps_cnt_reg__0[1]),
        .I2(cmos_fps_cnt_reg__0[2]),
        .I3(cmos_fps_cnt_reg__0[3]),
        .O(p_0_in__0[3]));
  FDCE \cmos_fps_cnt_reg[0] 
       (.C(cmos_pclk),
        .CE(\cmos_fps_cnt[3]_i_1_n_0 ),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(cmos_fps_cnt_reg__0[0]));
  FDCE \cmos_fps_cnt_reg[1] 
       (.C(cmos_pclk),
        .CE(\cmos_fps_cnt[3]_i_1_n_0 ),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(cmos_fps_cnt_reg__0[1]));
  FDCE \cmos_fps_cnt_reg[2] 
       (.C(cmos_pclk),
        .CE(\cmos_fps_cnt[3]_i_1_n_0 ),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(cmos_fps_cnt_reg__0[2]));
  FDCE \cmos_fps_cnt_reg[3] 
       (.C(cmos_pclk),
        .CE(\cmos_fps_cnt[3]_i_1_n_0 ),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(cmos_fps_cnt_reg__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \cmos_fps_rate[7]_i_1 
       (.I0(\cmos_fps_rate[7]_i_3_n_0 ),
        .O(delay_2s));
  LUT2 #(
    .INIT(4'h7)) 
    \cmos_fps_rate[7]_i_2 
       (.I0(rst_capture),
        .I1(rst_n),
        .O(\cmos_fps_rate[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cmos_fps_rate[7]_i_3 
       (.I0(\cmos_fps_rate[7]_i_4_n_0 ),
        .I1(\cmos_fps_rate[7]_i_5_n_0 ),
        .I2(\cmos_fps_rate[7]_i_6_n_0 ),
        .I3(\cmos_fps_rate[7]_i_7_n_0 ),
        .I4(delay_cnt[10]),
        .I5(\delay_cnt[25]_i_2_n_0 ),
        .O(\cmos_fps_rate[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cmos_fps_rate[7]_i_4 
       (.I0(delay_cnt[8]),
        .I1(delay_cnt[9]),
        .I2(delay_cnt[6]),
        .I3(delay_cnt[7]),
        .I4(delay_cnt[1]),
        .I5(delay_cnt[0]),
        .O(\cmos_fps_rate[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cmos_fps_rate[7]_i_5 
       (.I0(delay_cnt[3]),
        .I1(delay_cnt[2]),
        .I2(delay_cnt[5]),
        .I3(delay_cnt[4]),
        .O(\cmos_fps_rate[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cmos_fps_rate[7]_i_6 
       (.I0(delay_cnt[25]),
        .I1(delay_cnt[11]),
        .I2(delay_cnt[18]),
        .I3(delay_cnt[19]),
        .I4(delay_cnt[20]),
        .O(\cmos_fps_rate[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cmos_fps_rate[7]_i_7 
       (.I0(delay_cnt[14]),
        .I1(delay_cnt[13]),
        .I2(delay_cnt[23]),
        .I3(delay_cnt[22]),
        .O(\cmos_fps_rate[7]_i_7_n_0 ));
  FDCE \cmos_fps_rate_reg[0] 
       (.C(cmos_pclk),
        .CE(delay_2s),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(cmos_fps_rate[0]));
  FDCE \cmos_fps_rate_reg[1] 
       (.C(cmos_pclk),
        .CE(delay_2s),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(cmos_fps_rate[1]));
  FDCE \cmos_fps_rate_reg[2] 
       (.C(cmos_pclk),
        .CE(delay_2s),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(cmos_fps_rate[2]));
  FDCE \cmos_fps_rate_reg[3] 
       (.C(cmos_pclk),
        .CE(delay_2s),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(cmos_fps_rate[3]));
  FDCE \cmos_fps_rate_reg[4] 
       (.C(cmos_pclk),
        .CE(delay_2s),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(cmos_fps_rate[4]));
  FDCE \cmos_fps_rate_reg[5] 
       (.C(cmos_pclk),
        .CE(delay_2s),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(cmos_fps_rate[5]));
  FDCE \cmos_fps_rate_reg[6] 
       (.C(cmos_pclk),
        .CE(delay_2s),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(cmos_fps_rate[6]));
  FDCE \cmos_fps_rate_reg[7] 
       (.C(cmos_pclk),
        .CE(delay_2s),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(cmos_fps_rate[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    cmos_frame_clken_INST_0
       (.I0(locled),
        .I1(byte_flag_r),
        .O(cmos_frame_clken));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[0]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[2]),
        .O(cmos_frame_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[10]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[5]),
        .O(cmos_frame_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[11]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[6]),
        .O(cmos_frame_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[12]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[7]),
        .O(cmos_frame_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[13]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[8]),
        .O(cmos_frame_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[16]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[13]),
        .O(cmos_frame_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[17]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[14]),
        .O(cmos_frame_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[18]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[15]),
        .O(cmos_frame_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[19]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[11]),
        .O(cmos_frame_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[1]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[3]),
        .O(cmos_frame_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[20]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[12]),
        .O(cmos_frame_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[2]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[4]),
        .O(cmos_frame_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[3]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[0]),
        .O(cmos_frame_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[4]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[1]),
        .O(cmos_frame_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[8]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[9]),
        .O(cmos_frame_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cmos_frame_data[9]_INST_0 
       (.I0(locled),
        .I1(cmos_href_r),
        .I2(cmos_frame_data_r[10]),
        .O(cmos_frame_data[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \cmos_frame_data_r[15]_i_1 
       (.I0(cmos_href),
        .I1(byte_flag_reg_n_0),
        .O(cmos_frame_data_r_0));
  FDCE \cmos_frame_data_r_reg[0] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data[0]),
        .Q(cmos_frame_data_r[0]));
  FDCE \cmos_frame_data_r_reg[10] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data_r[2]),
        .Q(cmos_frame_data_r[10]));
  FDCE \cmos_frame_data_r_reg[11] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data_r[3]),
        .Q(cmos_frame_data_r[11]));
  FDCE \cmos_frame_data_r_reg[12] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data_r[4]),
        .Q(cmos_frame_data_r[12]));
  FDCE \cmos_frame_data_r_reg[13] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data_r[5]),
        .Q(cmos_frame_data_r[13]));
  FDCE \cmos_frame_data_r_reg[14] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data_r[6]),
        .Q(cmos_frame_data_r[14]));
  FDCE \cmos_frame_data_r_reg[15] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data_r[7]),
        .Q(cmos_frame_data_r[15]));
  FDCE \cmos_frame_data_r_reg[1] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data[1]),
        .Q(cmos_frame_data_r[1]));
  FDCE \cmos_frame_data_r_reg[2] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data[2]),
        .Q(cmos_frame_data_r[2]));
  FDCE \cmos_frame_data_r_reg[3] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data[3]),
        .Q(cmos_frame_data_r[3]));
  FDCE \cmos_frame_data_r_reg[4] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data[4]),
        .Q(cmos_frame_data_r[4]));
  FDCE \cmos_frame_data_r_reg[5] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data[5]),
        .Q(cmos_frame_data_r[5]));
  FDCE \cmos_frame_data_r_reg[6] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data[6]),
        .Q(cmos_frame_data_r[6]));
  FDCE \cmos_frame_data_r_reg[7] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data[7]),
        .Q(cmos_frame_data_r[7]));
  FDCE \cmos_frame_data_r_reg[8] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data_r[0]),
        .Q(cmos_frame_data_r[8]));
  FDCE \cmos_frame_data_r_reg[9] 
       (.C(cmos_pclk),
        .CE(cmos_frame_data_r_0),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_data_r[1]),
        .Q(cmos_frame_data_r[9]));
  LUT2 #(
    .INIT(4'h8)) 
    cmos_frame_de_INST_0
       (.I0(cmos_href_r),
        .I1(locled),
        .O(cmos_frame_href));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    cmos_frame_vsync_INST_0
       (.I0(locled),
        .I1(p_1_in),
        .O(cmos_frame_vsync));
  FDCE \cmos_href_r_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_href),
        .Q(\cmos_href_r_reg_n_0_[0] ));
  FDCE \cmos_href_r_reg[1] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\cmos_href_r_reg_n_0_[0] ),
        .Q(cmos_href_r));
  FDCE \cmos_vsync_r_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(cmos_vsync),
        .Q(\cmos_vsync_r_reg_n_0_[0] ));
  FDCE \cmos_vsync_r_reg[1] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\cmos_vsync_r_reg_n_0_[0] ),
        .Q(p_1_in));
  LUT5 #(
    .INIT(32'h00FF001F)) 
    \delay_cnt[0]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(delay_cnt[25]),
        .I3(delay_cnt[0]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .O(\delay_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[10]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[12]_i_2_n_6 ),
        .O(\delay_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[11]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[12]_i_2_n_5 ),
        .O(\delay_cnt[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[12]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[12]_i_2_n_4 ),
        .O(\delay_cnt[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[13]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[16]_i_2_n_7 ),
        .O(\delay_cnt[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[14]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[16]_i_2_n_6 ),
        .O(\delay_cnt[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[15]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[16]_i_2_n_5 ),
        .O(\delay_cnt[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[16]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[16]_i_2_n_4 ),
        .O(\delay_cnt[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[17]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[20]_i_2_n_7 ),
        .O(\delay_cnt[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[18]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[20]_i_2_n_6 ),
        .O(\delay_cnt[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[19]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[20]_i_2_n_5 ),
        .O(\delay_cnt[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[1]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[4]_i_2_n_7 ),
        .O(\delay_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[20]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[20]_i_2_n_4 ),
        .O(\delay_cnt[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[21]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[24]_i_2_n_7 ),
        .O(\delay_cnt[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[22]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[24]_i_2_n_6 ),
        .O(\delay_cnt[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[23]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[24]_i_2_n_5 ),
        .O(\delay_cnt[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[24]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[24]_i_2_n_4 ),
        .O(\delay_cnt[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[25]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[25]_i_5_n_7 ),
        .O(\delay_cnt[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \delay_cnt[25]_i_2 
       (.I0(delay_cnt[16]),
        .I1(delay_cnt[17]),
        .I2(delay_cnt[24]),
        .I3(delay_cnt[21]),
        .I4(delay_cnt[15]),
        .I5(delay_cnt[12]),
        .O(\delay_cnt[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \delay_cnt[25]_i_3 
       (.I0(\cmos_fps_rate[7]_i_4_n_0 ),
        .I1(delay_cnt[4]),
        .I2(delay_cnt[5]),
        .I3(delay_cnt[2]),
        .I4(delay_cnt[3]),
        .O(\delay_cnt[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3301)) 
    \delay_cnt[25]_i_4 
       (.I0(delay_cnt[12]),
        .I1(\delay_cnt[25]_i_6_n_0 ),
        .I2(delay_cnt[11]),
        .I3(\delay_cnt[25]_i_7_n_0 ),
        .I4(\delay_cnt[25]_i_8_n_0 ),
        .I5(\delay_cnt[25]_i_9_n_0 ),
        .O(\delay_cnt[25]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \delay_cnt[25]_i_6 
       (.I0(delay_cnt[15]),
        .I1(delay_cnt[21]),
        .I2(delay_cnt[24]),
        .I3(delay_cnt[17]),
        .I4(delay_cnt[16]),
        .O(\delay_cnt[25]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \delay_cnt[25]_i_7 
       (.I0(delay_cnt[13]),
        .I1(delay_cnt[14]),
        .O(\delay_cnt[25]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \delay_cnt[25]_i_8 
       (.I0(delay_cnt[23]),
        .I1(delay_cnt[22]),
        .I2(delay_cnt[24]),
        .O(\delay_cnt[25]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000007F)) 
    \delay_cnt[25]_i_9 
       (.I0(delay_cnt[18]),
        .I1(delay_cnt[19]),
        .I2(delay_cnt[20]),
        .I3(delay_cnt[24]),
        .I4(delay_cnt[21]),
        .O(\delay_cnt[25]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[2]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[4]_i_2_n_6 ),
        .O(\delay_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[3]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[4]_i_2_n_5 ),
        .O(\delay_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[4]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[4]_i_2_n_4 ),
        .O(\delay_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[5]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[8]_i_2_n_7 ),
        .O(\delay_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[6]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[8]_i_2_n_6 ),
        .O(\delay_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[7]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[8]_i_2_n_5 ),
        .O(\delay_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[8]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[8]_i_2_n_4 ),
        .O(\delay_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF10FF00000000)) 
    \delay_cnt[9]_i_1 
       (.I0(\delay_cnt[25]_i_2_n_0 ),
        .I1(delay_cnt[10]),
        .I2(\delay_cnt[25]_i_3_n_0 ),
        .I3(delay_cnt[25]),
        .I4(\delay_cnt[25]_i_4_n_0 ),
        .I5(\delay_cnt_reg[12]_i_2_n_7 ),
        .O(\delay_cnt[9]_i_1_n_0 ));
  FDCE \delay_cnt_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[0]_i_1_n_0 ),
        .Q(delay_cnt[0]));
  FDCE \delay_cnt_reg[10] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[10]_i_1_n_0 ),
        .Q(delay_cnt[10]));
  FDCE \delay_cnt_reg[11] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[11]_i_1_n_0 ),
        .Q(delay_cnt[11]));
  FDCE \delay_cnt_reg[12] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[12]_i_1_n_0 ),
        .Q(delay_cnt[12]));
  CARRY4 \delay_cnt_reg[12]_i_2 
       (.CI(\delay_cnt_reg[8]_i_2_n_0 ),
        .CO({\delay_cnt_reg[12]_i_2_n_0 ,\delay_cnt_reg[12]_i_2_n_1 ,\delay_cnt_reg[12]_i_2_n_2 ,\delay_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[12]_i_2_n_4 ,\delay_cnt_reg[12]_i_2_n_5 ,\delay_cnt_reg[12]_i_2_n_6 ,\delay_cnt_reg[12]_i_2_n_7 }),
        .S(delay_cnt[12:9]));
  FDCE \delay_cnt_reg[13] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[13]_i_1_n_0 ),
        .Q(delay_cnt[13]));
  FDCE \delay_cnt_reg[14] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[14]_i_1_n_0 ),
        .Q(delay_cnt[14]));
  FDCE \delay_cnt_reg[15] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[15]_i_1_n_0 ),
        .Q(delay_cnt[15]));
  FDCE \delay_cnt_reg[16] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[16]_i_1_n_0 ),
        .Q(delay_cnt[16]));
  CARRY4 \delay_cnt_reg[16]_i_2 
       (.CI(\delay_cnt_reg[12]_i_2_n_0 ),
        .CO({\delay_cnt_reg[16]_i_2_n_0 ,\delay_cnt_reg[16]_i_2_n_1 ,\delay_cnt_reg[16]_i_2_n_2 ,\delay_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[16]_i_2_n_4 ,\delay_cnt_reg[16]_i_2_n_5 ,\delay_cnt_reg[16]_i_2_n_6 ,\delay_cnt_reg[16]_i_2_n_7 }),
        .S(delay_cnt[16:13]));
  FDCE \delay_cnt_reg[17] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[17]_i_1_n_0 ),
        .Q(delay_cnt[17]));
  FDCE \delay_cnt_reg[18] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[18]_i_1_n_0 ),
        .Q(delay_cnt[18]));
  FDCE \delay_cnt_reg[19] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[19]_i_1_n_0 ),
        .Q(delay_cnt[19]));
  FDCE \delay_cnt_reg[1] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[1]_i_1_n_0 ),
        .Q(delay_cnt[1]));
  FDCE \delay_cnt_reg[20] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[20]_i_1_n_0 ),
        .Q(delay_cnt[20]));
  CARRY4 \delay_cnt_reg[20]_i_2 
       (.CI(\delay_cnt_reg[16]_i_2_n_0 ),
        .CO({\delay_cnt_reg[20]_i_2_n_0 ,\delay_cnt_reg[20]_i_2_n_1 ,\delay_cnt_reg[20]_i_2_n_2 ,\delay_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[20]_i_2_n_4 ,\delay_cnt_reg[20]_i_2_n_5 ,\delay_cnt_reg[20]_i_2_n_6 ,\delay_cnt_reg[20]_i_2_n_7 }),
        .S(delay_cnt[20:17]));
  FDCE \delay_cnt_reg[21] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[21]_i_1_n_0 ),
        .Q(delay_cnt[21]));
  FDCE \delay_cnt_reg[22] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[22]_i_1_n_0 ),
        .Q(delay_cnt[22]));
  FDCE \delay_cnt_reg[23] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[23]_i_1_n_0 ),
        .Q(delay_cnt[23]));
  FDCE \delay_cnt_reg[24] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[24]_i_1_n_0 ),
        .Q(delay_cnt[24]));
  CARRY4 \delay_cnt_reg[24]_i_2 
       (.CI(\delay_cnt_reg[20]_i_2_n_0 ),
        .CO({\delay_cnt_reg[24]_i_2_n_0 ,\delay_cnt_reg[24]_i_2_n_1 ,\delay_cnt_reg[24]_i_2_n_2 ,\delay_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[24]_i_2_n_4 ,\delay_cnt_reg[24]_i_2_n_5 ,\delay_cnt_reg[24]_i_2_n_6 ,\delay_cnt_reg[24]_i_2_n_7 }),
        .S(delay_cnt[24:21]));
  FDCE \delay_cnt_reg[25] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[25]_i_1_n_0 ),
        .Q(delay_cnt[25]));
  CARRY4 \delay_cnt_reg[25]_i_5 
       (.CI(\delay_cnt_reg[24]_i_2_n_0 ),
        .CO(\NLW_delay_cnt_reg[25]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_delay_cnt_reg[25]_i_5_O_UNCONNECTED [3:1],\delay_cnt_reg[25]_i_5_n_7 }),
        .S({1'b0,1'b0,1'b0,delay_cnt[25]}));
  FDCE \delay_cnt_reg[2] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[2]_i_1_n_0 ),
        .Q(delay_cnt[2]));
  FDCE \delay_cnt_reg[3] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[3]_i_1_n_0 ),
        .Q(delay_cnt[3]));
  FDCE \delay_cnt_reg[4] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[4]_i_1_n_0 ),
        .Q(delay_cnt[4]));
  CARRY4 \delay_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\delay_cnt_reg[4]_i_2_n_0 ,\delay_cnt_reg[4]_i_2_n_1 ,\delay_cnt_reg[4]_i_2_n_2 ,\delay_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(delay_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[4]_i_2_n_4 ,\delay_cnt_reg[4]_i_2_n_5 ,\delay_cnt_reg[4]_i_2_n_6 ,\delay_cnt_reg[4]_i_2_n_7 }),
        .S(delay_cnt[4:1]));
  FDCE \delay_cnt_reg[5] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[5]_i_1_n_0 ),
        .Q(delay_cnt[5]));
  FDCE \delay_cnt_reg[6] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[6]_i_1_n_0 ),
        .Q(delay_cnt[6]));
  FDCE \delay_cnt_reg[7] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[7]_i_1_n_0 ),
        .Q(delay_cnt[7]));
  FDCE \delay_cnt_reg[8] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[8]_i_1_n_0 ),
        .Q(delay_cnt[8]));
  CARRY4 \delay_cnt_reg[8]_i_2 
       (.CI(\delay_cnt_reg[4]_i_2_n_0 ),
        .CO({\delay_cnt_reg[8]_i_2_n_0 ,\delay_cnt_reg[8]_i_2_n_1 ,\delay_cnt_reg[8]_i_2_n_2 ,\delay_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[8]_i_2_n_4 ,\delay_cnt_reg[8]_i_2_n_5 ,\delay_cnt_reg[8]_i_2_n_6 ,\delay_cnt_reg[8]_i_2_n_7 }),
        .S(delay_cnt[8:5]));
  FDCE \delay_cnt_reg[9] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(\delay_cnt[9]_i_1_n_0 ),
        .Q(delay_cnt[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    frame_sync_flag_i_1
       (.I0(frame_sync_flag_i_2_n_0),
        .I1(cmos_fps_cnt_reg__0[3]),
        .I2(cmos_fps_cnt_reg__0[1]),
        .I3(\cmos_vsync_r_reg_n_0_[0] ),
        .I4(p_1_in),
        .I5(locled),
        .O(frame_sync_flag_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    frame_sync_flag_i_2
       (.I0(cmos_fps_cnt_reg__0[0]),
        .I1(cmos_fps_cnt_reg__0[2]),
        .O(frame_sync_flag_i_2_n_0));
  FDCE frame_sync_flag_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(\cmos_fps_rate[7]_i_2_n_0 ),
        .D(frame_sync_flag_i_1_n_0),
        .Q(locled));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
