//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue Dec 25 12:41:10 2018
//Host        : ZYQ-Mac-Win running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    cmos_data_0,
    cmos_href_0,
    cmos_iic_0_scl_io,
    cmos_iic_0_sda_io,
    cmos_pclk_0,
    cmos_reset,
    cmos_vsync_0,
    cmos_xclk_0,
    coms_pwdn,
    hdmi_in_hpd,
    hdmi_out_clk_n,
    hdmi_out_clk_p,
    hdmi_out_data_n,
    hdmi_out_data_p);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [7:0]cmos_data_0;
  input cmos_href_0;
  inout cmos_iic_0_scl_io;
  inout cmos_iic_0_sda_io;
  input cmos_pclk_0;
  output [0:0]cmos_reset;
  input cmos_vsync_0;
  output cmos_xclk_0;
  output [0:0]coms_pwdn;
  output [0:0]hdmi_in_hpd;
  output hdmi_out_clk_n;
  output hdmi_out_clk_p;
  output [2:0]hdmi_out_data_n;
  output [2:0]hdmi_out_data_p;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [7:0]cmos_data_0;
  wire cmos_href_0;
  wire cmos_iic_0_scl_i;
  wire cmos_iic_0_scl_io;
  wire cmos_iic_0_scl_o;
  wire cmos_iic_0_scl_t;
  wire cmos_iic_0_sda_i;
  wire cmos_iic_0_sda_io;
  wire cmos_iic_0_sda_o;
  wire cmos_iic_0_sda_t;
  wire cmos_pclk_0;
  wire [0:0]cmos_reset;
  wire cmos_vsync_0;
  wire cmos_xclk_0;
  wire [0:0]coms_pwdn;
  wire [0:0]hdmi_in_hpd;
  wire hdmi_out_clk_n;
  wire hdmi_out_clk_p;
  wire [2:0]hdmi_out_data_n;
  wire [2:0]hdmi_out_data_p;

  IOBUF cmos_iic_0_scl_iobuf
       (.I(cmos_iic_0_scl_o),
        .IO(cmos_iic_0_scl_io),
        .O(cmos_iic_0_scl_i),
        .T(cmos_iic_0_scl_t));
  IOBUF cmos_iic_0_sda_iobuf
       (.I(cmos_iic_0_sda_o),
        .IO(cmos_iic_0_sda_io),
        .O(cmos_iic_0_sda_i),
        .T(cmos_iic_0_sda_t));
  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .cmos_data_0(cmos_data_0),
        .cmos_href_0(cmos_href_0),
        .cmos_iic_0_scl_i(cmos_iic_0_scl_i),
        .cmos_iic_0_scl_o(cmos_iic_0_scl_o),
        .cmos_iic_0_scl_t(cmos_iic_0_scl_t),
        .cmos_iic_0_sda_i(cmos_iic_0_sda_i),
        .cmos_iic_0_sda_o(cmos_iic_0_sda_o),
        .cmos_iic_0_sda_t(cmos_iic_0_sda_t),
        .cmos_pclk_0(cmos_pclk_0),
        .cmos_reset(cmos_reset),
        .cmos_vsync_0(cmos_vsync_0),
        .cmos_xclk_0(cmos_xclk_0),
        .coms_pwdn(coms_pwdn),
        .hdmi_in_hpd(hdmi_in_hpd),
        .hdmi_out_clk_n(hdmi_out_clk_n),
        .hdmi_out_clk_p(hdmi_out_clk_p),
        .hdmi_out_data_n(hdmi_out_data_n),
        .hdmi_out_data_p(hdmi_out_data_p));
endmodule
