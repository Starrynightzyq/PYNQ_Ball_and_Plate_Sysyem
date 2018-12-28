`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/16 11:16:15
// Design Name: 
// Module Name: erosion_dilation
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 腐蚀 膨胀 cost 2+2 clk_T
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module erosion_dilation(
	input clk_100M,
	input rst_p,
	input en,
	input din,
	input shift_clk_en_i,
	input wire [11:0] pixel_x_i,
	input wire [11:0] pixel_y_i,
	output shift_clk_en_o,
	output wire [11:0] pixel_x_o,
	output wire [11:0] pixel_y_o,
	output dout
    );

 	//erosion
	//3*3 矩阵
	wire matrix_p11,matrix_p12,matrix_p13;
	wire matrix_p21,matrix_p22,matrix_p23;
	wire matrix_p31,matrix_p32,matrix_p33;

 	shift_RAM_3x3_1bit e_shift_RAM_3x3_1bit (
		.clk_100M(clk_100M),
		.rst_p(rst_p),
		.shift_clk_en(shift_clk_en_i),					// input shift_clk_en,		//移位寄存器时钟使能信号
		.en(1'b1),			// input average_filter_en,	//移位寄存器总使能信号
		.din(din),	// input [7:0] din,
		.matrix_p11(matrix_p11),						// 3x3 矩阵输出
		.matrix_p12(matrix_p12),
		.matrix_p13(matrix_p13),
		.matrix_p21(matrix_p21),
		.matrix_p22(matrix_p22),
		.matrix_p23(matrix_p23),
		.matrix_p31(matrix_p31),
		.matrix_p32(matrix_p32),
		.matrix_p33(matrix_p33)
		);

 	//step1
 	reg e_p1,e_p2,e_p3;
 	always @(posedge clk_100M or posedge rst_p) begin
 		if (rst_p) begin
 			// reset
 			e_p1 <= 1'b0;
 			e_p2 <= 1'b0;
 			e_p3 <= 1'b0;
 		end
 		else if (en) begin
 			e_p1 <= (matrix_p11&matrix_p12&matrix_p13);
 			e_p2 <= (matrix_p21&matrix_p22&matrix_p23);
 			e_p3 <= (matrix_p31&matrix_p32&matrix_p33);
 		end
 	end

 	//step2
 	reg e_p;
 	always @(posedge clk_100M or posedge rst_p) begin
 		if (rst_p) begin
 			// reset
 			e_p <= 1'b0;
 		end
 		else if (en) begin
 			e_p <= (e_p1&e_p2&e_p3);
 		end
 	end

 	//dilation
	//3*3 矩阵
	wire d_p11,d_p12,d_p13;
	wire d_p21,d_p22,d_p23;
	wire d_p31,d_p32,d_p33;

 	shift_RAM_3x3_1bit d_shift_RAM_3x3_1bit (
		.clk_100M(clk_100M),
		.rst_p(rst_p),
		.shift_clk_en(shift_clk_en_i),					// input shift_clk_en,		//移位寄存器时钟使能信号
		.en(1'b1),			// input average_filter_en,	//移位寄存器总使能信号
		.din(e_p),	// input [7:0] din,
		.matrix_p11(d_p11),						// 3x3 矩阵输出
		.matrix_p12(d_p12),
		.matrix_p13(d_p13),
		.matrix_p21(d_p21),
		.matrix_p22(d_p22),
		.matrix_p23(d_p23),
		.matrix_p31(d_p31),
		.matrix_p32(d_p32),
		.matrix_p33(d_p33)
		);

 	//step1
 	reg d_p1,d_p2,d_p3;
 	always @(posedge clk_100M or posedge rst_p) begin
 		if (rst_p) begin
 			// reset
 			d_p1 <= 1'b0;
 			d_p2 <= 1'b0;
 			d_p3 <= 1'b0;
 		end
 		else if (en) begin
 			d_p1 <= (d_p11|d_p12|d_p13);
 			d_p2 <= (d_p21|d_p22|d_p23);
 			d_p3 <= (d_p31|d_p32|d_p33);
 		end
 	end

 	//step2
 	reg d_p;
 	always @(posedge clk_100M or posedge rst_p) begin
 		if (rst_p) begin
 			// reset
 			d_p <= 1'b0;
 		end
 		else if (en) begin
 			d_p <= (d_p1|d_p2|d_p3);
 		end
 	end

	//shift_clk_en 延迟4个时钟周期
	parameter NUM_T = 4;
	reg [NUM_T-1:0] shift_clk_en_buf;
	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			shift_clk_en_buf[NUM_T-1:0] <= 0;
		end
		else begin
			shift_clk_en_buf[NUM_T-1:0] <= {shift_clk_en_buf[NUM_T-2:0], shift_clk_en_i};
		end
	end
	assign shift_clk_en_o = shift_clk_en_buf[NUM_T-1];

	//pixel_x_y delay 3
	reg [11:0] pixel_x_delay_1;
	reg [11:0] pixel_x_delay_2;
	reg [11:0] pixel_x_delay_3;
	reg [11:0] pixel_x_delay_4;
	reg [11:0] pixel_y_delay_1;
	reg [11:0] pixel_y_delay_2;
	reg [11:0] pixel_y_delay_3;
	reg [11:0] pixel_y_delay_4;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			pixel_x_delay_1 <= 12'b0;
			pixel_x_delay_2 <= 12'b0;
			pixel_x_delay_3 <= 12'b0;
			pixel_x_delay_4 <= 12'b0;
			pixel_y_delay_1 <= 12'b0;
			pixel_y_delay_2 <= 12'b0;
			pixel_y_delay_3 <= 12'b0;
			pixel_y_delay_4 <= 12'b0;
		end
		else if (en) begin
			pixel_x_delay_1 <= pixel_x_i;
			pixel_x_delay_2 <= pixel_x_delay_1;
			pixel_x_delay_3 <= pixel_x_delay_2;
			pixel_x_delay_4 <= pixel_x_delay_3;
			pixel_y_delay_1 <= pixel_y_i;
			pixel_y_delay_2 <= pixel_y_delay_1;
			pixel_y_delay_3 <= pixel_y_delay_2;
			pixel_y_delay_4 <= pixel_y_delay_3;
		end
	end
	assign pixel_x_o = pixel_x_delay_4;
	assign pixel_y_o = pixel_y_delay_4;

 	//output
 	assign dout = d_p;


endmodule
