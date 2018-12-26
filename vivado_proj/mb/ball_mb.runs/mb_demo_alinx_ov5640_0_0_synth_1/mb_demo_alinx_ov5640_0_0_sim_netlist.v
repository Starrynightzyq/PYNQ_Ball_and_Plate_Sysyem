// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Dec 26 19:16:53 2018
// Host        : ZYQ-Mac-Win running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mb_demo_alinx_ov5640_0_0_sim_netlist.v
// Design      : mb_demo_alinx_ov5640_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alinx_ov5640
   (m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tuser,
    m_axis_video_tlast,
    m_axis_video_tkeep,
    cmos_href,
    cmos_pclk,
    cmos_d,
    m_axis_video_aclk,
    m_axis_video_tready,
    cmos_vsync,
    m_axis_video_aresetn);
  output [15:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  output m_axis_video_tuser;
  output m_axis_video_tlast;
  output [0:0]m_axis_video_tkeep;
  input cmos_href;
  input cmos_pclk;
  input [7:0]cmos_d;
  input m_axis_video_aclk;
  input m_axis_video_tready;
  input cmos_vsync;
  input m_axis_video_aresetn;

  wire clear;
  wire cmos_aresetn_inv_i_1_n_0;
  wire [7:0]cmos_d;
  wire [15:0]cmos_d_16bit_d0;
  wire [15:0]cmos_d_16bit_d1;
  wire [7:0]cmos_d_d0;
  wire cmos_hblank;
  wire cmos_hblank_d0;
  wire cmos_hblank_d1;
  wire cmos_href;
  wire cmos_href_16bit_d0;
  wire cmos_href_16bit_d1;
  wire cmos_href_d0;
  wire cmos_pclk;
  wire cmos_vsync;
  wire cmos_vsync_d0;
  wire cmos_vsync_d1;
  wire de_o;
  wire m_axis_video_aclk;
  wire m_axis_video_aresetn;
  wire [15:0]m_axis_video_tdata;
  wire \m_axis_video_tdata[15]_i_1_n_0 ;
  wire [0:0]m_axis_video_tkeep;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire [15:0]pdata_o;
  wire \reset_cnt[0]_i_3_n_0 ;
  wire \reset_cnt[0]_i_4_n_0 ;
  wire \reset_cnt[0]_i_5_n_0 ;
  wire \reset_cnt[0]_i_6_n_0 ;
  wire \reset_cnt[0]_i_7_n_0 ;
  wire [27:9]reset_cnt_reg;
  wire \reset_cnt_reg[0]_i_2_n_0 ;
  wire \reset_cnt_reg[0]_i_2_n_1 ;
  wire \reset_cnt_reg[0]_i_2_n_2 ;
  wire \reset_cnt_reg[0]_i_2_n_3 ;
  wire \reset_cnt_reg[0]_i_2_n_4 ;
  wire \reset_cnt_reg[0]_i_2_n_5 ;
  wire \reset_cnt_reg[0]_i_2_n_6 ;
  wire \reset_cnt_reg[0]_i_2_n_7 ;
  wire \reset_cnt_reg[12]_i_1_n_0 ;
  wire \reset_cnt_reg[12]_i_1_n_1 ;
  wire \reset_cnt_reg[12]_i_1_n_2 ;
  wire \reset_cnt_reg[12]_i_1_n_3 ;
  wire \reset_cnt_reg[12]_i_1_n_4 ;
  wire \reset_cnt_reg[12]_i_1_n_5 ;
  wire \reset_cnt_reg[12]_i_1_n_6 ;
  wire \reset_cnt_reg[12]_i_1_n_7 ;
  wire \reset_cnt_reg[16]_i_1_n_0 ;
  wire \reset_cnt_reg[16]_i_1_n_1 ;
  wire \reset_cnt_reg[16]_i_1_n_2 ;
  wire \reset_cnt_reg[16]_i_1_n_3 ;
  wire \reset_cnt_reg[16]_i_1_n_4 ;
  wire \reset_cnt_reg[16]_i_1_n_5 ;
  wire \reset_cnt_reg[16]_i_1_n_6 ;
  wire \reset_cnt_reg[16]_i_1_n_7 ;
  wire \reset_cnt_reg[20]_i_1_n_0 ;
  wire \reset_cnt_reg[20]_i_1_n_1 ;
  wire \reset_cnt_reg[20]_i_1_n_2 ;
  wire \reset_cnt_reg[20]_i_1_n_3 ;
  wire \reset_cnt_reg[20]_i_1_n_4 ;
  wire \reset_cnt_reg[20]_i_1_n_5 ;
  wire \reset_cnt_reg[20]_i_1_n_6 ;
  wire \reset_cnt_reg[20]_i_1_n_7 ;
  wire \reset_cnt_reg[24]_i_1_n_1 ;
  wire \reset_cnt_reg[24]_i_1_n_2 ;
  wire \reset_cnt_reg[24]_i_1_n_3 ;
  wire \reset_cnt_reg[24]_i_1_n_4 ;
  wire \reset_cnt_reg[24]_i_1_n_5 ;
  wire \reset_cnt_reg[24]_i_1_n_6 ;
  wire \reset_cnt_reg[24]_i_1_n_7 ;
  wire \reset_cnt_reg[4]_i_1_n_0 ;
  wire \reset_cnt_reg[4]_i_1_n_1 ;
  wire \reset_cnt_reg[4]_i_1_n_2 ;
  wire \reset_cnt_reg[4]_i_1_n_3 ;
  wire \reset_cnt_reg[4]_i_1_n_4 ;
  wire \reset_cnt_reg[4]_i_1_n_5 ;
  wire \reset_cnt_reg[4]_i_1_n_6 ;
  wire \reset_cnt_reg[4]_i_1_n_7 ;
  wire \reset_cnt_reg[8]_i_1_n_0 ;
  wire \reset_cnt_reg[8]_i_1_n_1 ;
  wire \reset_cnt_reg[8]_i_1_n_2 ;
  wire \reset_cnt_reg[8]_i_1_n_3 ;
  wire \reset_cnt_reg[8]_i_1_n_4 ;
  wire \reset_cnt_reg[8]_i_1_n_5 ;
  wire \reset_cnt_reg[8]_i_1_n_6 ;
  wire \reset_cnt_reg[8]_i_1_n_7 ;
  wire \reset_cnt_reg_n_0_[0] ;
  wire \reset_cnt_reg_n_0_[1] ;
  wire \reset_cnt_reg_n_0_[2] ;
  wire \reset_cnt_reg_n_0_[3] ;
  wire \reset_cnt_reg_n_0_[4] ;
  wire \reset_cnt_reg_n_0_[5] ;
  wire \reset_cnt_reg_n_0_[6] ;
  wire \reset_cnt_reg_n_0_[7] ;
  wire \reset_cnt_reg_n_0_[8] ;
  wire s_axis_tlast;
  wire s_axis_tlast0;
  wire s_axis_tuser;
  wire s_axis_tuser_i_1_n_0;
  wire sel;
  wire [3:3]\NLW_reset_cnt_reg[24]_i_1_CO_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmos_8_16bit cmos_8_16bit_m0
       (.Q(cmos_d_d0),
        .clear(clear),
        .\cmos_d_16bit_d0_reg[15] (pdata_o),
        .cmos_hblank(cmos_hblank),
        .cmos_hblank_d0(cmos_hblank_d0),
        .cmos_href_d0(cmos_href_d0),
        .cmos_pclk(cmos_pclk),
        .de_o(de_o),
        .s_axis_tlast0(s_axis_tlast0));
  LUT6 #(
    .INIT(64'h0F0B0F00FFFFFFFF)) 
    cmos_aresetn_inv_i_1
       (.I0(\reset_cnt[0]_i_6_n_0 ),
        .I1(\reset_cnt[0]_i_5_n_0 ),
        .I2(reset_cnt_reg[26]),
        .I3(\reset_cnt[0]_i_4_n_0 ),
        .I4(\reset_cnt[0]_i_3_n_0 ),
        .I5(reset_cnt_reg[27]),
        .O(cmos_aresetn_inv_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    cmos_aresetn_reg_inv
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_aresetn_inv_i_1_n_0),
        .Q(clear),
        .R(1'b0));
  FDRE \cmos_d_16bit_d0_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[0]),
        .Q(cmos_d_16bit_d0[0]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[10] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[10]),
        .Q(cmos_d_16bit_d0[10]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[11] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[11]),
        .Q(cmos_d_16bit_d0[11]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[12] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[12]),
        .Q(cmos_d_16bit_d0[12]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[13] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[13]),
        .Q(cmos_d_16bit_d0[13]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[14] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[14]),
        .Q(cmos_d_16bit_d0[14]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[15] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[15]),
        .Q(cmos_d_16bit_d0[15]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[1] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[1]),
        .Q(cmos_d_16bit_d0[1]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[2] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[2]),
        .Q(cmos_d_16bit_d0[2]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[3] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[3]),
        .Q(cmos_d_16bit_d0[3]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[4] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[4]),
        .Q(cmos_d_16bit_d0[4]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[5] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[5]),
        .Q(cmos_d_16bit_d0[5]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[6] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[6]),
        .Q(cmos_d_16bit_d0[6]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[7] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[7]),
        .Q(cmos_d_16bit_d0[7]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[8] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[8]),
        .Q(cmos_d_16bit_d0[8]),
        .R(clear));
  FDRE \cmos_d_16bit_d0_reg[9] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(pdata_o[9]),
        .Q(cmos_d_16bit_d0[9]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[0]),
        .Q(cmos_d_16bit_d1[0]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[10] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[10]),
        .Q(cmos_d_16bit_d1[10]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[11] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[11]),
        .Q(cmos_d_16bit_d1[11]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[12] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[12]),
        .Q(cmos_d_16bit_d1[12]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[13] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[13]),
        .Q(cmos_d_16bit_d1[13]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[14] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[14]),
        .Q(cmos_d_16bit_d1[14]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[15] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[15]),
        .Q(cmos_d_16bit_d1[15]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[1] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[1]),
        .Q(cmos_d_16bit_d1[1]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[2] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[2]),
        .Q(cmos_d_16bit_d1[2]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[3] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[3]),
        .Q(cmos_d_16bit_d1[3]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[4] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[4]),
        .Q(cmos_d_16bit_d1[4]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[5] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[5]),
        .Q(cmos_d_16bit_d1[5]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[6] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[6]),
        .Q(cmos_d_16bit_d1[6]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[7] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[7]),
        .Q(cmos_d_16bit_d1[7]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[8] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[8]),
        .Q(cmos_d_16bit_d1[8]),
        .R(clear));
  FDRE \cmos_d_16bit_d1_reg[9] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d_16bit_d0[9]),
        .Q(cmos_d_16bit_d1[9]),
        .R(clear));
  FDRE \cmos_d_d0_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d[0]),
        .Q(cmos_d_d0[0]),
        .R(clear));
  FDRE \cmos_d_d0_reg[1] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d[1]),
        .Q(cmos_d_d0[1]),
        .R(clear));
  FDRE \cmos_d_d0_reg[2] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d[2]),
        .Q(cmos_d_d0[2]),
        .R(clear));
  FDRE \cmos_d_d0_reg[3] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d[3]),
        .Q(cmos_d_d0[3]),
        .R(clear));
  FDRE \cmos_d_d0_reg[4] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d[4]),
        .Q(cmos_d_d0[4]),
        .R(clear));
  FDRE \cmos_d_d0_reg[5] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d[5]),
        .Q(cmos_d_d0[5]),
        .R(clear));
  FDRE \cmos_d_d0_reg[6] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d[6]),
        .Q(cmos_d_d0[6]),
        .R(clear));
  FDRE \cmos_d_d0_reg[7] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_d[7]),
        .Q(cmos_d_d0[7]),
        .R(clear));
  FDRE cmos_hblank_d0_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_hblank),
        .Q(cmos_hblank_d0),
        .R(clear));
  FDRE cmos_hblank_d1_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_hblank_d0),
        .Q(cmos_hblank_d1),
        .R(clear));
  FDRE cmos_href_16bit_d0_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(de_o),
        .Q(cmos_href_16bit_d0),
        .R(clear));
  FDRE cmos_href_16bit_d1_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_href_16bit_d0),
        .Q(cmos_href_16bit_d1),
        .R(clear));
  FDRE cmos_href_d0_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_href),
        .Q(cmos_href_d0),
        .R(clear));
  FDRE cmos_vsync_d0_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_vsync),
        .Q(cmos_vsync_d0),
        .R(clear));
  FDRE cmos_vsync_d1_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(cmos_vsync_d0),
        .Q(cmos_vsync_d1),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_video_tdata[15]_i_1 
       (.I0(m_axis_video_aresetn),
        .O(\m_axis_video_tdata[15]_i_1_n_0 ));
  FDCE \m_axis_video_tdata_reg[0] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[0]),
        .Q(m_axis_video_tdata[0]));
  FDCE \m_axis_video_tdata_reg[10] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[10]),
        .Q(m_axis_video_tdata[10]));
  FDCE \m_axis_video_tdata_reg[11] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[11]),
        .Q(m_axis_video_tdata[11]));
  FDCE \m_axis_video_tdata_reg[12] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[12]),
        .Q(m_axis_video_tdata[12]));
  FDCE \m_axis_video_tdata_reg[13] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[13]),
        .Q(m_axis_video_tdata[13]));
  FDCE \m_axis_video_tdata_reg[14] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[14]),
        .Q(m_axis_video_tdata[14]));
  FDCE \m_axis_video_tdata_reg[15] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[15]),
        .Q(m_axis_video_tdata[15]));
  FDCE \m_axis_video_tdata_reg[1] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[1]),
        .Q(m_axis_video_tdata[1]));
  FDCE \m_axis_video_tdata_reg[2] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[2]),
        .Q(m_axis_video_tdata[2]));
  FDCE \m_axis_video_tdata_reg[3] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[3]),
        .Q(m_axis_video_tdata[3]));
  FDCE \m_axis_video_tdata_reg[4] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[4]),
        .Q(m_axis_video_tdata[4]));
  FDCE \m_axis_video_tdata_reg[5] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[5]),
        .Q(m_axis_video_tdata[5]));
  FDCE \m_axis_video_tdata_reg[6] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[6]),
        .Q(m_axis_video_tdata[6]));
  FDCE \m_axis_video_tdata_reg[7] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[7]),
        .Q(m_axis_video_tdata[7]));
  FDCE \m_axis_video_tdata_reg[8] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[8]),
        .Q(m_axis_video_tdata[8]));
  FDCE \m_axis_video_tdata_reg[9] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(cmos_d_16bit_d1[9]),
        .Q(m_axis_video_tdata[9]));
  FDCE \m_axis_video_tkeep_reg[1] 
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(1'b1),
        .Q(m_axis_video_tkeep));
  FDCE m_axis_video_tlast_reg
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(s_axis_tlast),
        .Q(m_axis_video_tlast));
  FDCE m_axis_video_tuser_reg
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(s_axis_tuser),
        .Q(m_axis_video_tuser));
  FDCE m_axis_video_tvalid_reg
       (.C(m_axis_video_aclk),
        .CE(1'b1),
        .CLR(\m_axis_video_tdata[15]_i_1_n_0 ),
        .D(m_axis_video_tready),
        .Q(m_axis_video_tvalid));
  LUT6 #(
    .INIT(64'h55FD55FD55F555FD)) 
    \reset_cnt[0]_i_1 
       (.I0(reset_cnt_reg[27]),
        .I1(\reset_cnt[0]_i_3_n_0 ),
        .I2(\reset_cnt[0]_i_4_n_0 ),
        .I3(reset_cnt_reg[26]),
        .I4(\reset_cnt[0]_i_5_n_0 ),
        .I5(\reset_cnt[0]_i_6_n_0 ),
        .O(sel));
  LUT3 #(
    .INIT(8'h07)) 
    \reset_cnt[0]_i_3 
       (.I0(reset_cnt_reg[18]),
        .I1(reset_cnt_reg[19]),
        .I2(reset_cnt_reg[20]),
        .O(\reset_cnt[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \reset_cnt[0]_i_4 
       (.I0(reset_cnt_reg[24]),
        .I1(reset_cnt_reg[25]),
        .I2(reset_cnt_reg[23]),
        .I3(reset_cnt_reg[21]),
        .I4(reset_cnt_reg[22]),
        .O(\reset_cnt[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \reset_cnt[0]_i_5 
       (.I0(reset_cnt_reg[13]),
        .I1(reset_cnt_reg[12]),
        .I2(reset_cnt_reg[10]),
        .I3(reset_cnt_reg[9]),
        .I4(reset_cnt_reg[11]),
        .O(\reset_cnt[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \reset_cnt[0]_i_6 
       (.I0(reset_cnt_reg[14]),
        .I1(reset_cnt_reg[16]),
        .I2(reset_cnt_reg[17]),
        .I3(reset_cnt_reg[19]),
        .I4(reset_cnt_reg[15]),
        .O(\reset_cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \reset_cnt[0]_i_7 
       (.I0(\reset_cnt_reg_n_0_[0] ),
        .O(\reset_cnt[0]_i_7_n_0 ));
  FDRE \reset_cnt_reg[0] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[0]_i_2_n_7 ),
        .Q(\reset_cnt_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \reset_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\reset_cnt_reg[0]_i_2_n_0 ,\reset_cnt_reg[0]_i_2_n_1 ,\reset_cnt_reg[0]_i_2_n_2 ,\reset_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\reset_cnt_reg[0]_i_2_n_4 ,\reset_cnt_reg[0]_i_2_n_5 ,\reset_cnt_reg[0]_i_2_n_6 ,\reset_cnt_reg[0]_i_2_n_7 }),
        .S({\reset_cnt_reg_n_0_[3] ,\reset_cnt_reg_n_0_[2] ,\reset_cnt_reg_n_0_[1] ,\reset_cnt[0]_i_7_n_0 }));
  FDRE \reset_cnt_reg[10] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[8]_i_1_n_5 ),
        .Q(reset_cnt_reg[10]),
        .R(1'b0));
  FDRE \reset_cnt_reg[11] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[8]_i_1_n_4 ),
        .Q(reset_cnt_reg[11]),
        .R(1'b0));
  FDRE \reset_cnt_reg[12] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[12]_i_1_n_7 ),
        .Q(reset_cnt_reg[12]),
        .R(1'b0));
  CARRY4 \reset_cnt_reg[12]_i_1 
       (.CI(\reset_cnt_reg[8]_i_1_n_0 ),
        .CO({\reset_cnt_reg[12]_i_1_n_0 ,\reset_cnt_reg[12]_i_1_n_1 ,\reset_cnt_reg[12]_i_1_n_2 ,\reset_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_cnt_reg[12]_i_1_n_4 ,\reset_cnt_reg[12]_i_1_n_5 ,\reset_cnt_reg[12]_i_1_n_6 ,\reset_cnt_reg[12]_i_1_n_7 }),
        .S(reset_cnt_reg[15:12]));
  FDRE \reset_cnt_reg[13] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[12]_i_1_n_6 ),
        .Q(reset_cnt_reg[13]),
        .R(1'b0));
  FDRE \reset_cnt_reg[14] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[12]_i_1_n_5 ),
        .Q(reset_cnt_reg[14]),
        .R(1'b0));
  FDRE \reset_cnt_reg[15] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[12]_i_1_n_4 ),
        .Q(reset_cnt_reg[15]),
        .R(1'b0));
  FDRE \reset_cnt_reg[16] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[16]_i_1_n_7 ),
        .Q(reset_cnt_reg[16]),
        .R(1'b0));
  CARRY4 \reset_cnt_reg[16]_i_1 
       (.CI(\reset_cnt_reg[12]_i_1_n_0 ),
        .CO({\reset_cnt_reg[16]_i_1_n_0 ,\reset_cnt_reg[16]_i_1_n_1 ,\reset_cnt_reg[16]_i_1_n_2 ,\reset_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_cnt_reg[16]_i_1_n_4 ,\reset_cnt_reg[16]_i_1_n_5 ,\reset_cnt_reg[16]_i_1_n_6 ,\reset_cnt_reg[16]_i_1_n_7 }),
        .S(reset_cnt_reg[19:16]));
  FDRE \reset_cnt_reg[17] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[16]_i_1_n_6 ),
        .Q(reset_cnt_reg[17]),
        .R(1'b0));
  FDRE \reset_cnt_reg[18] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[16]_i_1_n_5 ),
        .Q(reset_cnt_reg[18]),
        .R(1'b0));
  FDRE \reset_cnt_reg[19] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[16]_i_1_n_4 ),
        .Q(reset_cnt_reg[19]),
        .R(1'b0));
  FDRE \reset_cnt_reg[1] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[0]_i_2_n_6 ),
        .Q(\reset_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \reset_cnt_reg[20] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[20]_i_1_n_7 ),
        .Q(reset_cnt_reg[20]),
        .R(1'b0));
  CARRY4 \reset_cnt_reg[20]_i_1 
       (.CI(\reset_cnt_reg[16]_i_1_n_0 ),
        .CO({\reset_cnt_reg[20]_i_1_n_0 ,\reset_cnt_reg[20]_i_1_n_1 ,\reset_cnt_reg[20]_i_1_n_2 ,\reset_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_cnt_reg[20]_i_1_n_4 ,\reset_cnt_reg[20]_i_1_n_5 ,\reset_cnt_reg[20]_i_1_n_6 ,\reset_cnt_reg[20]_i_1_n_7 }),
        .S(reset_cnt_reg[23:20]));
  FDRE \reset_cnt_reg[21] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[20]_i_1_n_6 ),
        .Q(reset_cnt_reg[21]),
        .R(1'b0));
  FDRE \reset_cnt_reg[22] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[20]_i_1_n_5 ),
        .Q(reset_cnt_reg[22]),
        .R(1'b0));
  FDRE \reset_cnt_reg[23] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[20]_i_1_n_4 ),
        .Q(reset_cnt_reg[23]),
        .R(1'b0));
  FDRE \reset_cnt_reg[24] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[24]_i_1_n_7 ),
        .Q(reset_cnt_reg[24]),
        .R(1'b0));
  CARRY4 \reset_cnt_reg[24]_i_1 
       (.CI(\reset_cnt_reg[20]_i_1_n_0 ),
        .CO({\NLW_reset_cnt_reg[24]_i_1_CO_UNCONNECTED [3],\reset_cnt_reg[24]_i_1_n_1 ,\reset_cnt_reg[24]_i_1_n_2 ,\reset_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_cnt_reg[24]_i_1_n_4 ,\reset_cnt_reg[24]_i_1_n_5 ,\reset_cnt_reg[24]_i_1_n_6 ,\reset_cnt_reg[24]_i_1_n_7 }),
        .S(reset_cnt_reg[27:24]));
  FDRE \reset_cnt_reg[25] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[24]_i_1_n_6 ),
        .Q(reset_cnt_reg[25]),
        .R(1'b0));
  FDRE \reset_cnt_reg[26] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[24]_i_1_n_5 ),
        .Q(reset_cnt_reg[26]),
        .R(1'b0));
  FDRE \reset_cnt_reg[27] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[24]_i_1_n_4 ),
        .Q(reset_cnt_reg[27]),
        .R(1'b0));
  FDRE \reset_cnt_reg[2] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[0]_i_2_n_5 ),
        .Q(\reset_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \reset_cnt_reg[3] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[0]_i_2_n_4 ),
        .Q(\reset_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \reset_cnt_reg[4] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[4]_i_1_n_7 ),
        .Q(\reset_cnt_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \reset_cnt_reg[4]_i_1 
       (.CI(\reset_cnt_reg[0]_i_2_n_0 ),
        .CO({\reset_cnt_reg[4]_i_1_n_0 ,\reset_cnt_reg[4]_i_1_n_1 ,\reset_cnt_reg[4]_i_1_n_2 ,\reset_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_cnt_reg[4]_i_1_n_4 ,\reset_cnt_reg[4]_i_1_n_5 ,\reset_cnt_reg[4]_i_1_n_6 ,\reset_cnt_reg[4]_i_1_n_7 }),
        .S({\reset_cnt_reg_n_0_[7] ,\reset_cnt_reg_n_0_[6] ,\reset_cnt_reg_n_0_[5] ,\reset_cnt_reg_n_0_[4] }));
  FDRE \reset_cnt_reg[5] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[4]_i_1_n_6 ),
        .Q(\reset_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \reset_cnt_reg[6] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[4]_i_1_n_5 ),
        .Q(\reset_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \reset_cnt_reg[7] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[4]_i_1_n_4 ),
        .Q(\reset_cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \reset_cnt_reg[8] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[8]_i_1_n_7 ),
        .Q(\reset_cnt_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \reset_cnt_reg[8]_i_1 
       (.CI(\reset_cnt_reg[4]_i_1_n_0 ),
        .CO({\reset_cnt_reg[8]_i_1_n_0 ,\reset_cnt_reg[8]_i_1_n_1 ,\reset_cnt_reg[8]_i_1_n_2 ,\reset_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_cnt_reg[8]_i_1_n_4 ,\reset_cnt_reg[8]_i_1_n_5 ,\reset_cnt_reg[8]_i_1_n_6 ,\reset_cnt_reg[8]_i_1_n_7 }),
        .S({reset_cnt_reg[11:9],\reset_cnt_reg_n_0_[8] }));
  FDRE \reset_cnt_reg[9] 
       (.C(cmos_pclk),
        .CE(sel),
        .D(\reset_cnt_reg[8]_i_1_n_6 ),
        .Q(reset_cnt_reg[9]),
        .R(1'b0));
  FDRE s_axis_tlast_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(s_axis_tlast0),
        .Q(s_axis_tlast),
        .R(clear));
  LUT5 #(
    .INIT(32'h4FFF4444)) 
    s_axis_tuser_i_1
       (.I0(cmos_vsync_d0),
        .I1(cmos_vsync_d1),
        .I2(cmos_href_16bit_d1),
        .I3(cmos_hblank_d1),
        .I4(s_axis_tuser),
        .O(s_axis_tuser_i_1_n_0));
  FDRE s_axis_tuser_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(s_axis_tuser_i_1_n_0),
        .Q(s_axis_tuser),
        .R(clear));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmos_8_16bit
   (cmos_hblank,
    de_o,
    s_axis_tlast0,
    \cmos_d_16bit_d0_reg[15] ,
    cmos_href_d0,
    cmos_pclk,
    clear,
    Q,
    cmos_hblank_d0);
  output cmos_hblank;
  output de_o;
  output s_axis_tlast0;
  output [15:0]\cmos_d_16bit_d0_reg[15] ;
  input cmos_href_d0;
  input cmos_pclk;
  input clear;
  input [7:0]Q;
  input cmos_hblank_d0;

  wire [7:0]Q;
  wire clear;
  wire [15:0]\cmos_d_16bit_d0_reg[15] ;
  wire cmos_hblank;
  wire cmos_hblank_d0;
  wire cmos_href_d0;
  wire cmos_pclk;
  wire de_o;
  wire de_o_i_1_n_0;
  wire [15:0]p_0_in;
  wire [7:0]pdata_i_d0;
  wire s_axis_tlast0;
  wire \x_cnt[0]_i_1_n_0 ;
  wire [0:0]x_cnt_reg;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    de_o_i_1
       (.I0(x_cnt_reg),
        .I1(cmos_href_d0),
        .O(de_o_i_1_n_0));
  FDCE de_o_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(de_o_i_1_n_0),
        .Q(de_o));
  FDCE hblank_reg
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(cmos_href_d0),
        .Q(cmos_hblank));
  FDRE \pdata_i_d0_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(pdata_i_d0[0]),
        .R(1'b0));
  FDRE \pdata_i_d0_reg[1] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(pdata_i_d0[1]),
        .R(1'b0));
  FDRE \pdata_i_d0_reg[2] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(pdata_i_d0[2]),
        .R(1'b0));
  FDRE \pdata_i_d0_reg[3] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(pdata_i_d0[3]),
        .R(1'b0));
  FDRE \pdata_i_d0_reg[4] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(pdata_i_d0[4]),
        .R(1'b0));
  FDRE \pdata_i_d0_reg[5] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(pdata_i_d0[5]),
        .R(1'b0));
  FDRE \pdata_i_d0_reg[6] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(pdata_i_d0[6]),
        .R(1'b0));
  FDRE \pdata_i_d0_reg[7] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(pdata_i_d0[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[0]_i_1 
       (.I0(Q[0]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[10]_i_1 
       (.I0(pdata_i_d0[2]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[11]_i_1 
       (.I0(pdata_i_d0[3]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[12]_i_1 
       (.I0(pdata_i_d0[4]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[13]_i_1 
       (.I0(pdata_i_d0[5]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[14]_i_1 
       (.I0(pdata_i_d0[6]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[15]_i_1 
       (.I0(pdata_i_d0[7]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[1]_i_1 
       (.I0(Q[1]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[2]_i_1 
       (.I0(Q[2]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[3]_i_1 
       (.I0(Q[3]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[4]_i_1 
       (.I0(Q[4]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[5]_i_1 
       (.I0(Q[5]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[6]_i_1 
       (.I0(Q[6]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[7]_i_1 
       (.I0(Q[7]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[8]_i_1 
       (.I0(pdata_i_d0[0]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pdata_o[9]_i_1 
       (.I0(pdata_i_d0[1]),
        .I1(cmos_href_d0),
        .I2(x_cnt_reg),
        .O(p_0_in[9]));
  FDCE \pdata_o_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[0]),
        .Q(\cmos_d_16bit_d0_reg[15] [0]));
  FDCE \pdata_o_reg[10] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[10]),
        .Q(\cmos_d_16bit_d0_reg[15] [10]));
  FDCE \pdata_o_reg[11] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[11]),
        .Q(\cmos_d_16bit_d0_reg[15] [11]));
  FDCE \pdata_o_reg[12] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[12]),
        .Q(\cmos_d_16bit_d0_reg[15] [12]));
  FDCE \pdata_o_reg[13] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[13]),
        .Q(\cmos_d_16bit_d0_reg[15] [13]));
  FDCE \pdata_o_reg[14] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[14]),
        .Q(\cmos_d_16bit_d0_reg[15] [14]));
  FDCE \pdata_o_reg[15] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[15]),
        .Q(\cmos_d_16bit_d0_reg[15] [15]));
  FDCE \pdata_o_reg[1] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[1]),
        .Q(\cmos_d_16bit_d0_reg[15] [1]));
  FDCE \pdata_o_reg[2] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[2]),
        .Q(\cmos_d_16bit_d0_reg[15] [2]));
  FDCE \pdata_o_reg[3] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[3]),
        .Q(\cmos_d_16bit_d0_reg[15] [3]));
  FDCE \pdata_o_reg[4] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[4]),
        .Q(\cmos_d_16bit_d0_reg[15] [4]));
  FDCE \pdata_o_reg[5] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[5]),
        .Q(\cmos_d_16bit_d0_reg[15] [5]));
  FDCE \pdata_o_reg[6] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[6]),
        .Q(\cmos_d_16bit_d0_reg[15] [6]));
  FDCE \pdata_o_reg[7] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[7]),
        .Q(\cmos_d_16bit_d0_reg[15] [7]));
  FDCE \pdata_o_reg[8] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[8]),
        .Q(\cmos_d_16bit_d0_reg[15] [8]));
  FDCE \pdata_o_reg[9] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(p_0_in[9]),
        .Q(\cmos_d_16bit_d0_reg[15] [9]));
  LUT2 #(
    .INIT(4'h2)) 
    s_axis_tlast_i_1
       (.I0(cmos_hblank_d0),
        .I1(cmos_hblank),
        .O(s_axis_tlast0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cnt[0]_i_1 
       (.I0(cmos_href_d0),
        .I1(x_cnt_reg),
        .O(\x_cnt[0]_i_1_n_0 ));
  FDCE \x_cnt_reg[0] 
       (.C(cmos_pclk),
        .CE(1'b1),
        .CLR(clear),
        .D(\x_cnt[0]_i_1_n_0 ),
        .Q(x_cnt_reg));
endmodule

(* CHECK_LICENSE_TYPE = "mb_demo_alinx_ov5640_0_0,alinx_ov5640,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "alinx_ov5640,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (cmos_vsync,
    cmos_href,
    cmos_pclk,
    cmos_d,
    m_axis_video_aclk,
    m_axis_video_aresetn,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tuser,
    m_axis_video_tlast,
    m_axis_video_tkeep);
  input cmos_vsync;
  input cmos_href;
  input cmos_pclk;
  input [7:0]cmos_d;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_video_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_video_aclk, ASSOCIATED_BUSIF m_axis_video, ASSOCIATED_RESET m_axis_video_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1" *) input m_axis_video_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_axis_video_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_video_aresetn, POLARITY ACTIVE_LOW" *) input m_axis_video_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TDATA" *) output [15:0]m_axis_video_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TVALID" *) output m_axis_video_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TREADY" *) input m_axis_video_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TUSER" *) output m_axis_video_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TLAST" *) output m_axis_video_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TKEEP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef" *) output [1:0]m_axis_video_tkeep;

  wire [7:0]cmos_d;
  wire cmos_href;
  wire cmos_pclk;
  wire cmos_vsync;
  wire m_axis_video_aclk;
  wire m_axis_video_aresetn;
  wire [15:0]m_axis_video_tdata;
  wire [0:0]\^m_axis_video_tkeep ;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;

  assign m_axis_video_tkeep[1] = \^m_axis_video_tkeep [0];
  assign m_axis_video_tkeep[0] = \^m_axis_video_tkeep [0];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alinx_ov5640 inst
       (.cmos_d(cmos_d),
        .cmos_href(cmos_href),
        .cmos_pclk(cmos_pclk),
        .cmos_vsync(cmos_vsync),
        .m_axis_video_aclk(m_axis_video_aclk),
        .m_axis_video_aresetn(m_axis_video_aresetn),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tkeep(\^m_axis_video_tkeep ),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid));
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
