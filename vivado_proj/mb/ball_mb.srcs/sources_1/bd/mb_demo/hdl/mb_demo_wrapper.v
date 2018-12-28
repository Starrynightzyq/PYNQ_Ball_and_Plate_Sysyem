//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Dec 27 15:10:26 2018
//Host        : ZYQ-Mac-Win running 64-bit major release  (build 9200)
//Command     : generate_target mb_demo_wrapper.bd
//Design      : mb_demo_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb_demo_wrapper
   (OV7725_D_0,
    OV7725_HREF_0,
    OV7725_IIC_scl_io,
    OV7725_IIC_sda_io,
    OV7725_PCLK_0,
    OV7725_PWND_0,
    OV7725_RST_0,
    OV7725_VSYNC_0,
    OV7725_XCLK_0,
    dip_switches_16bits_tri_i,
    en_take_color_i_0,
    iic_rtl_scl_io,
    iic_rtl_sda_io,
    pwm_out_0_0,
    pwm_out_1_0,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd,
    vga_data_0,
    vga_hsync_0,
    vga_vsync_0);
  input [7:0]OV7725_D_0;
  input OV7725_HREF_0;
  inout OV7725_IIC_scl_io;
  inout OV7725_IIC_sda_io;
  input OV7725_PCLK_0;
  output OV7725_PWND_0;
  output OV7725_RST_0;
  input OV7725_VSYNC_0;
  output OV7725_XCLK_0;
  input [15:0]dip_switches_16bits_tri_i;
  input en_take_color_i_0;
  inout iic_rtl_scl_io;
  inout iic_rtl_sda_io;
  output pwm_out_0_0;
  output pwm_out_1_0;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;
  output [11:0]vga_data_0;
  output vga_hsync_0;
  output vga_vsync_0;

  wire [7:0]OV7725_D_0;
  wire OV7725_HREF_0;
  wire OV7725_IIC_scl_i;
  wire OV7725_IIC_scl_io;
  wire OV7725_IIC_scl_o;
  wire OV7725_IIC_scl_t;
  wire OV7725_IIC_sda_i;
  wire OV7725_IIC_sda_io;
  wire OV7725_IIC_sda_o;
  wire OV7725_IIC_sda_t;
  wire OV7725_PCLK_0;
  wire OV7725_PWND_0;
  wire OV7725_RST_0;
  wire OV7725_VSYNC_0;
  wire OV7725_XCLK_0;
  wire [15:0]dip_switches_16bits_tri_i;
  wire en_take_color_i_0;
  wire iic_rtl_scl_i;
  wire iic_rtl_scl_io;
  wire iic_rtl_scl_o;
  wire iic_rtl_scl_t;
  wire iic_rtl_sda_i;
  wire iic_rtl_sda_io;
  wire iic_rtl_sda_o;
  wire iic_rtl_sda_t;
  wire pwm_out_0_0;
  wire pwm_out_1_0;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;
  wire [11:0]vga_data_0;
  wire vga_hsync_0;
  wire vga_vsync_0;

  IOBUF OV7725_IIC_scl_iobuf
       (.I(OV7725_IIC_scl_o),
        .IO(OV7725_IIC_scl_io),
        .O(OV7725_IIC_scl_i),
        .T(OV7725_IIC_scl_t));
  IOBUF OV7725_IIC_sda_iobuf
       (.I(OV7725_IIC_sda_o),
        .IO(OV7725_IIC_sda_io),
        .O(OV7725_IIC_sda_i),
        .T(OV7725_IIC_sda_t));
  IOBUF iic_rtl_scl_iobuf
       (.I(iic_rtl_scl_o),
        .IO(iic_rtl_scl_io),
        .O(iic_rtl_scl_i),
        .T(iic_rtl_scl_t));
  IOBUF iic_rtl_sda_iobuf
       (.I(iic_rtl_sda_o),
        .IO(iic_rtl_sda_io),
        .O(iic_rtl_sda_i),
        .T(iic_rtl_sda_t));
  mb_demo mb_demo_i
       (.OV7725_D_0(OV7725_D_0),
        .OV7725_HREF_0(OV7725_HREF_0),
        .OV7725_IIC_scl_i(OV7725_IIC_scl_i),
        .OV7725_IIC_scl_o(OV7725_IIC_scl_o),
        .OV7725_IIC_scl_t(OV7725_IIC_scl_t),
        .OV7725_IIC_sda_i(OV7725_IIC_sda_i),
        .OV7725_IIC_sda_o(OV7725_IIC_sda_o),
        .OV7725_IIC_sda_t(OV7725_IIC_sda_t),
        .OV7725_PCLK_0(OV7725_PCLK_0),
        .OV7725_PWND_0(OV7725_PWND_0),
        .OV7725_RST_0(OV7725_RST_0),
        .OV7725_VSYNC_0(OV7725_VSYNC_0),
        .OV7725_XCLK_0(OV7725_XCLK_0),
        .dip_switches_16bits_tri_i(dip_switches_16bits_tri_i),
        .en_take_color_i_0(en_take_color_i_0),
        .iic_rtl_scl_i(iic_rtl_scl_i),
        .iic_rtl_scl_o(iic_rtl_scl_o),
        .iic_rtl_scl_t(iic_rtl_scl_t),
        .iic_rtl_sda_i(iic_rtl_sda_i),
        .iic_rtl_sda_o(iic_rtl_sda_o),
        .iic_rtl_sda_t(iic_rtl_sda_t),
        .pwm_out_0_0(pwm_out_0_0),
        .pwm_out_1_0(pwm_out_1_0),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        .vga_data_0(vga_data_0),
        .vga_hsync_0(vga_hsync_0),
        .vga_vsync_0(vga_vsync_0));
endmodule
