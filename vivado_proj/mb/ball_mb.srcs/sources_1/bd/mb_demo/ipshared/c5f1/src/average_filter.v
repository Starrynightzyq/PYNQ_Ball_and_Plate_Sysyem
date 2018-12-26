`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/02 16:45:11
// Design Name: 
// Module Name: average_filter
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


module average_filter(
	input clk_100M,
	input rst_p,
	input shift_clk_en,		//移位寄存器时钟使能信号
	input average_filter_en,	//移位寄存器总使能信号
	input ctrl,
	input [7:0] din,		// input
	output [7:0] dout 
    );

	//3*3 矩阵
	wire [7:0] matrix_p11,matrix_p12,matrix_p13;
	wire [7:0] matrix_p21,matrix_p22,matrix_p23;
	wire [7:0] matrix_p31,matrix_p32,matrix_p33;

 	shift_RAM_3x3 average_shift_RAM_3x3 (
 		.clk_100M(clk_100M),
 		.rst_p(rst_p),
 		.shift_clk_en(shift_clk_en),					// input shift_clk_en,		//移位寄存器时钟使能信号
 		.average_filter_en(average_filter_en),			// input average_filter_en,	//移位寄存器总使能信号
 		.din(din),										// input [7:0] din,
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

	//step1 行求和
	reg [10:0] mean_value1,mean_value2,mean_value3;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			mean_value1 <= 11'd0;
			mean_value2 <= 11'd0;
			mean_value3 <= 11'd0;
		end
		else begin
			mean_value1 <= matrix_p11 + matrix_p12 + matrix_p13;
			mean_value2 <= matrix_p21 + matrix_p22 + matrix_p23;
			mean_value3 <= matrix_p31 + matrix_p32 + matrix_p33;
		end
	end

	//step2 列求和
	reg [11:0] mean_value4;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			mean_value4 <= 12'd0;
		end
		else begin
			mean_value4 <= mean_value1 + mean_value2 + mean_value3;
		end
	end

	//step3 求均值   均值=累加和×(64+32+16+1)÷1024
	//step3.1 累加和 * 133 （133 = 1024/9）
	reg [17:0] mean_value_expend;
	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			mean_value_expend <= 18'b0;
		end
		else begin
			mean_value_expend <= {mean_value4,6'b0} + {mean_value4,5'b0} + {mean_value4,4'b0} + mean_value4;
		end
	end

	//step3.2 除以1024
	wire [7:0] post_img_Y;
	assign post_img_Y = mean_value_expend[17:10];	//求平均值，除以1024，右移10位

	//output
	assign dout = ctrl?post_img_Y:din;

endmodule
