`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/15 18:12:14
// Design Name: 
// Module Name: color_comparator
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


module color_comparator(
	input clk_100M,
	input rst_p,
	input en,
	input [15:0] color_to_compare,
	input [15:0] color_sample,
	input [15:0] color_threshold,
	input wire shift_clk_en_i,
	input wire [11:0] pixel_x_i,
	input wire [11:0] pixel_y_i,
	output wire shift_clk_en_o,
	output wire [11:0] pixel_x_o,
	output wire [11:0] pixel_y_o,
	output bit_data
    );

	//Cr channel
	wire bit_cr;
	single_color_cmp cr_color_cmp (
		.clk_100M(clk_100M),
		.rst_p(rst_p),
		.en(en),
		.color_to_compare(color_to_compare[15:8]),
		.color_sample(color_sample[15:8]),
		.color_threshold(color_threshold[15:8]),
		.bit_data(bit_cr)
		);

	//Cb channel
	wire bit_cb;
	single_color_cmp cb_color_cmp (
		.clk_100M(clk_100M),
		.rst_p(rst_p),
		.en(en),
		.color_to_compare(color_to_compare[7:0]),
		.color_sample(color_sample[7:0]),
		.color_threshold(color_threshold[7:0]),
		.bit_data(bit_cb)
		);

	//shift_clk_en 延迟1个时钟周期
	parameter NUM_T = 1;
	reg [NUM_T-1:0] shift_clk_en_buf;
	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			shift_clk_en_buf[NUM_T-1:0] <= 0;
		end
		else begin
			shift_clk_en_buf[NUM_T-1:0] <= shift_clk_en_i;
		end
	end
	assign shift_clk_en_o = shift_clk_en_buf[NUM_T-1];

	//pixel_x_y delay 1
	reg [11:0] pixel_x_delay_1;
	reg [11:0] pixel_y_delay_1;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			pixel_x_delay_1 <= 12'b0;
			pixel_y_delay_1 <= 12'b0;
		end
		else if (en) begin
			pixel_x_delay_1 <= pixel_x_i;
			pixel_y_delay_1 <= pixel_y_i;
		end
	end
	assign pixel_x_o = pixel_x_delay_1;
	assign pixel_y_o = pixel_y_delay_1;


	assign bit_data = (bit_cr&&bit_cb);


endmodule
