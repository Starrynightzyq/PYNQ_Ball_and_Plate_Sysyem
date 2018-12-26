`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/15 19:09:48
// Design Name: 
// Module Name: take_color
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


module take_color #(
	parameter MIDX = 160,
	parameter MIDY = 120
	)
	(
	input clk_100M,
	input rst_p,
	input en,
	input [15:0] CrCb,
	input shift_clk_en,
	input [11:0] pixel_x,
	input [11:0] pixel_y,
	output reg [15:0] color_sample
    );

 	//求中间像素均值
 	wire average_filter_en;
 	assign average_filter_en = 1'b1;	//just for test
 	wire [7:0] cr_average_dout;
 	average_filter cr_average (
 		.clk_100M(clk_100M),
 		.rst_p(rst_p),
 		.shift_clk_en(shift_clk_en),
 		.average_filter_en(average_filter_en),
 		.ctrl(1'b1),
 		.din(CrCb[15:8]),
 		.dout(cr_average_dout)
 		);

 	wire [7:0] cb_average_dout;
 	average_filter cb_average (
 		.clk_100M(clk_100M),
 		.rst_p(rst_p),
 		.shift_clk_en(shift_clk_en),
 		.average_filter_en(average_filter_en),
 		.ctrl(1'b1),
 		.din(CrCb[7:0]),
 		.dout(cb_average_dout)
 		);

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			color_sample <= 24'b0;
		end
		else if ((pixel_x == MIDX)&&(pixel_y == MIDY)&&en) begin 	//(rgb_addr == MIDPOINT)&&en
			color_sample <= {cr_average_dout,cb_average_dout};
			// color_sample <= CrCb;
		end
	end

	
endmodule
