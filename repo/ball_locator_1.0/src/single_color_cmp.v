`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/15 18:18:31
// Design Name: 
// Module Name: single_color_cmp
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


module single_color_cmp(
	input clk_100M,
	input rst_p,
	input en,
	input [7:0] color_to_compare,
	input [7:0] color_sample,
	input [7:0] color_threshold,
	output bit_data
    );

	//step1 求差值
	reg [7:0] difference;
	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			difference <= 7'b0;
		end
		else if(en) begin
			if (color_to_compare > color_sample) begin
				difference <= color_to_compare - color_sample;
			end else begin
				difference <= color_sample - color_to_compare;
			end
		end
	end

	assign bit_data = (difference < color_threshold)?1'b1:1'b0;
endmodule
