//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Jan  3 08:51:21 2019
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
    en_take_color_i_0,
    reset,
    sys_clock,
    uart_rtl_rxd,
    uart_rtl_txd,
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
  input en_take_color_i_0;
  input reset;
  input sys_clock;
  input uart_rtl_rxd;
  output uart_rtl_txd;
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
  wire en_take_color_i_0;
  wire reset;
  wire sys_clock;
  wire uart_rtl_rxd;
  wire uart_rtl_txd;
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
        .en_take_color_i_0(en_take_color_i_0),
        .reset(reset),
        .sys_clock(sys_clock),
        .uart_rtl_rxd(uart_rtl_rxd),
        .uart_rtl_txd(uart_rtl_txd),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        .vga_data_0(vga_data_0),
        .vga_hsync_0(vga_hsync_0),
        .vga_vsync_0(vga_vsync_0));
endmodule
