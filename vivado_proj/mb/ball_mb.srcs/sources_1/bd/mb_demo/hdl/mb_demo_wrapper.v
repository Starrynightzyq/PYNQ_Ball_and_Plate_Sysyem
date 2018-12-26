//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Dec 26 08:41:47 2018
//Host        : ZYQ-Mac-Win running 64-bit major release  (build 9200)
//Command     : generate_target mb_demo_wrapper.bd
//Design      : mb_demo_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb_demo_wrapper
   (OV7725_D_0,
    OV7725_HREF_0,
    OV7725_PCLK_0,
    OV7725_PWND_0,
    OV7725_RST_0,
    OV7725_SIOC_0,
    OV7725_SIOD_0,
    OV7725_VSYNC_0,
    OV7725_XCLK_0,
    dip_switches_16bits_tri_i,
    en_take_color_i_0,
    iic_rtl_scl_io,
    iic_rtl_sda_io,
    pwm_out_0_0,
    pwm_out_1_0,
    qspi_flash_io0_io,
    qspi_flash_io1_io,
    qspi_flash_io2_io,
    qspi_flash_io3_io,
    qspi_flash_ss_io,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd,
    vga_data_0,
    vga_hsync_0,
    vga_vsync_0);
  input [7:0]OV7725_D_0;
  input OV7725_HREF_0;
  input OV7725_PCLK_0;
  output OV7725_PWND_0;
  output OV7725_RST_0;
  output OV7725_SIOC_0;
  inout OV7725_SIOD_0;
  input OV7725_VSYNC_0;
  output OV7725_XCLK_0;
  input [15:0]dip_switches_16bits_tri_i;
  input en_take_color_i_0;
  inout iic_rtl_scl_io;
  inout iic_rtl_sda_io;
  output pwm_out_0_0;
  output pwm_out_1_0;
  inout qspi_flash_io0_io;
  inout qspi_flash_io1_io;
  inout qspi_flash_io2_io;
  inout qspi_flash_io3_io;
  inout qspi_flash_ss_io;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;
  output [11:0]vga_data_0;
  output vga_hsync_0;
  output vga_vsync_0;

  wire [7:0]OV7725_D_0;
  wire OV7725_HREF_0;
  wire OV7725_PCLK_0;
  wire OV7725_PWND_0;
  wire OV7725_RST_0;
  wire OV7725_SIOC_0;
  wire OV7725_SIOD_0;
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
  wire qspi_flash_io0_i;
  wire qspi_flash_io0_io;
  wire qspi_flash_io0_o;
  wire qspi_flash_io0_t;
  wire qspi_flash_io1_i;
  wire qspi_flash_io1_io;
  wire qspi_flash_io1_o;
  wire qspi_flash_io1_t;
  wire qspi_flash_io2_i;
  wire qspi_flash_io2_io;
  wire qspi_flash_io2_o;
  wire qspi_flash_io2_t;
  wire qspi_flash_io3_i;
  wire qspi_flash_io3_io;
  wire qspi_flash_io3_o;
  wire qspi_flash_io3_t;
  wire qspi_flash_ss_i;
  wire qspi_flash_ss_io;
  wire qspi_flash_ss_o;
  wire qspi_flash_ss_t;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;
  wire [11:0]vga_data_0;
  wire vga_hsync_0;
  wire vga_vsync_0;

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
        .OV7725_PCLK_0(OV7725_PCLK_0),
        .OV7725_PWND_0(OV7725_PWND_0),
        .OV7725_RST_0(OV7725_RST_0),
        .OV7725_SIOC_0(OV7725_SIOC_0),
        .OV7725_SIOD_0(OV7725_SIOD_0),
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
        .qspi_flash_io0_i(qspi_flash_io0_i),
        .qspi_flash_io0_o(qspi_flash_io0_o),
        .qspi_flash_io0_t(qspi_flash_io0_t),
        .qspi_flash_io1_i(qspi_flash_io1_i),
        .qspi_flash_io1_o(qspi_flash_io1_o),
        .qspi_flash_io1_t(qspi_flash_io1_t),
        .qspi_flash_io2_i(qspi_flash_io2_i),
        .qspi_flash_io2_o(qspi_flash_io2_o),
        .qspi_flash_io2_t(qspi_flash_io2_t),
        .qspi_flash_io3_i(qspi_flash_io3_i),
        .qspi_flash_io3_o(qspi_flash_io3_o),
        .qspi_flash_io3_t(qspi_flash_io3_t),
        .qspi_flash_ss_i(qspi_flash_ss_i),
        .qspi_flash_ss_o(qspi_flash_ss_o),
        .qspi_flash_ss_t(qspi_flash_ss_t),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        .vga_data_0(vga_data_0),
        .vga_hsync_0(vga_hsync_0),
        .vga_vsync_0(vga_vsync_0));
  IOBUF qspi_flash_io0_iobuf
       (.I(qspi_flash_io0_o),
        .IO(qspi_flash_io0_io),
        .O(qspi_flash_io0_i),
        .T(qspi_flash_io0_t));
  IOBUF qspi_flash_io1_iobuf
       (.I(qspi_flash_io1_o),
        .IO(qspi_flash_io1_io),
        .O(qspi_flash_io1_i),
        .T(qspi_flash_io1_t));
  IOBUF qspi_flash_io2_iobuf
       (.I(qspi_flash_io2_o),
        .IO(qspi_flash_io2_io),
        .O(qspi_flash_io2_i),
        .T(qspi_flash_io2_t));
  IOBUF qspi_flash_io3_iobuf
       (.I(qspi_flash_io3_o),
        .IO(qspi_flash_io3_io),
        .O(qspi_flash_io3_i),
        .T(qspi_flash_io3_t));
  IOBUF qspi_flash_ss_iobuf
       (.I(qspi_flash_ss_o),
        .IO(qspi_flash_ss_io),
        .O(qspi_flash_ss_i),
        .T(qspi_flash_ss_t));
endmodule
