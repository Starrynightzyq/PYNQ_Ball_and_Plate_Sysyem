`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/07/30 11:39:01
// Design Name: 
// Module Name: median_filter_rgb888
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 中值滤波	cost 3 clk_T
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module median_filter_rgb888(
	input wire clk_100M,
	input wire rst_p,
	input wire shift_clk_en_i,
	input wire [11:0] pixel_x_i,
	input wire [11:0] pixel_y_i,
	input wire med_en,
	input wire [7:0] img_R_in,
	input wire [7:0] img_G_in,
	input wire [7:0] img_B_in,
	output wire [7:0] img_R_out,
	output wire [7:0] img_G_out,
	output wire [7:0] img_B_out,
	output wire shift_clk_en_o,
	output wire [11:0] pixel_x_o,
	output wire [11:0] pixel_y_o
    );

	//R
	median_filter R_median_filter (
		.clk_100M(clk_100M),
		.rst_p(rst_p),
		.shift_clk_en(shift_clk_en_i),	// 	input shift_clk_en,		//移位寄存器时钟使能信号
		.ctrl(med_en),
		.s_color(img_R_in),						// 	input [7:0] YCrCb_data,		//YCrCb Y input
		.dout(img_R_out)					// 	output [7:0] post_img_Y 
		);

	//G
	median_filter G_median_filter (
		.clk_100M(clk_100M),
		.rst_p(rst_p),
		.shift_clk_en(shift_clk_en_i),	// 	input shift_clk_en,		//移位寄存器时钟使能信号
		.ctrl(med_en),
		.s_color(img_G_in),						// 	input [7:0] YCrCb_data,		//YCrCb Y input
		.dout(img_G_out)					// 	output [7:0] post_img_Y 
		);

	//B
	median_filter B_median_filter (
		.clk_100M(clk_100M),
		.rst_p(rst_p),
		.shift_clk_en(shift_clk_en_i),	// 	input shift_clk_en,		//移位寄存器时钟使能信号
		.ctrl(med_en),
		.s_color(img_B_in),						// 	input [7:0] YCrCb_data,		//YCrCb Y input
		.dout(img_B_out)					// 	output [7:0] post_img_Y 
		);

	//shift_clk_en 延迟三个时钟周期
	parameter NUM_T = 3;
	reg [NUM_T-1:0] shift_clk_en_buf;
	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			shift_clk_en_buf[NUM_T-1:0] <= 0;
		end
		else if (med_en) begin
			shift_clk_en_buf[NUM_T-1:0] <= {shift_clk_en_buf[NUM_T-2:0], shift_clk_en_i};
		end
	end
	assign shift_clk_en_o = shift_clk_en_buf[NUM_T-1];

	//pixel_x_y delay 3
	reg [11:0] pixel_x_delay_1;
	reg [11:0] pixel_x_delay_2;
	reg [11:0] pixel_x_delay_3;
	reg [11:0] pixel_y_delay_1;
	reg [11:0] pixel_y_delay_2;
	reg [11:0] pixel_y_delay_3;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			pixel_x_delay_1 <= 12'b0;
			pixel_x_delay_2 <= 12'b0;
			pixel_x_delay_3 <= 12'b0;
			pixel_y_delay_1 <= 12'b0;
			pixel_y_delay_2 <= 12'b0;
			pixel_y_delay_3 <= 12'b0;
		end
		else if (med_en) begin
			pixel_x_delay_1 <= pixel_x_i;
			pixel_x_delay_2 <= pixel_x_delay_1;
			pixel_x_delay_3 <= pixel_x_delay_2;
			pixel_y_delay_1 <= pixel_y_i;
			pixel_y_delay_2 <= pixel_y_delay_1;
			pixel_y_delay_3 <= pixel_y_delay_2;
		end
	end
	assign pixel_x_o = pixel_x_delay_3;
	assign pixel_y_o = pixel_y_delay_3;

endmodule
