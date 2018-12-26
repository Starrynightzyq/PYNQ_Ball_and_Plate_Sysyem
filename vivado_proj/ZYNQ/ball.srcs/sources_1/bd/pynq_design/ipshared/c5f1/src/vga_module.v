`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/13 01:36:14
// Design Name: 
// Module Name: vga_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vga_module (
	input clk_25M,
	input clk_100M,
	input rst_p,
	input [15:0] rgb_din_1,
	input [15:0] rgb_din_2,
	input [15:0] rgb_din_3,
	input [15:0] rgb_din_4,
	input	[9:0]	key_x,				//坐标输入
	input	[9:0]	key_y,
	input	[9:0]	key_x_begin,
	input	[9:0]	key_x_end,
	input	[9:0]	key_y_begin,
	input	[9:0]	key_y_end,
	output hsync,
	output vsync,
	output [15:0] rgb_dout,	//RGB565输出
	output [16:0] rgb_aout, 	//picture地址
	output shift_clk_en,		//移位寄存器使能信号
	output [11:0] pixel_x,
	output [11:0] pixel_y
    );

	// wire [11:0] pixel_x,pixel_y;
	wire video_on;


	vga_driver U_vga_driver (
		.clk_25M(clk_25M),	// input clk_25M,
		.rst_p(rst_p),		// input rst_p,
		.hsync(hsync),		// output hsync,
		.vsync(vsync),		// output vsync,
		.pixel_x(pixel_x),	// output [11:0] pixel_x,
		.pixel_y(pixel_y),	// output [11:0] pixel_y,
		.video_on(video_on)	// output video_on
		);

	
	vga_display_pic U_vga_display_pic (
		.clk_25M(clk_25M),				// input 			clk_25M,			//vga_clk，25MHz
		.clk_100M(clk_100M),
		.rst_p(rst_p),					// input 			rst_p,				//高电平复位
		.pixel_x(pixel_x),				// input 	[11:0] 	pixel_x,pixel_y,	//行坐标，场坐标
		.pixel_y(pixel_y),
		.video_on(video_on),			// input			video_on,
		.rgb_din_1(rgb_din_1),				// input 	[15:0] 	rgb_din,			//RGB565输入
		.rgb_din_2(rgb_din_2),
		.rgb_din_3(rgb_din_3),
		.rgb_din_4(rgb_din_4),
		.key_x(key_x),
		.key_y(key_y),
		.key_x_begin(key_x_begin),
		.key_x_end(key_x_end),
		.key_y_begin(key_y_begin),
		.key_y_end(key_y_end),
		.rgb_aout(rgb_aout),			// output 	[16:0] 	rgb_aout,			//picture地址
		.rgb_dout(rgb_dout),			// output 	[15:0] 	rgb_dout			//RGB565输出
		.shift_clk_en(shift_clk_en)		// output			shift_clk_en		//均值滤波移位寄存器使能信号
		);


endmodule
