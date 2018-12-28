`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/10 13:34:58
// Design Name: 
// Module Name: median_filter
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


module median_filter(
	input clk_100M,
	input rst_p,
	input shift_clk_en,		//移位寄存器时钟使能信号
	input ctrl,
	input [7:0] s_color,		//single color input
	output [7:0] dout 
    );

	//3*3 矩阵
	wire [7:0] matrix_p11,matrix_p12,matrix_p13;
	wire [7:0] matrix_p21,matrix_p22,matrix_p23;
	wire [7:0] matrix_p31,matrix_p32,matrix_p33;

 	shift_RAM_3x3 median_shift_RAM_3x3 (
 		.clk_100M(clk_100M),
 		.rst_p(rst_p),
 		.shift_clk_en(shift_clk_en),					// input shift_clk_en,		//移位寄存器时钟使能信号
 		.average_filter_en(1'b1),			// input average_filter_en,	//移位寄存器总使能信号
 		.din(s_color),	// input [7:0] din,
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

 	//	排序算法
	// （1）	对窗内的每行像素按降序排序，得到最大值、中间值和最小值；
	// （2）	把三行的最小值相比较，取其中的最大值；
	// （3）	把三行的最大值相比较，取其中的最小值；
	// （4）	把三行的中间值相比较，再取一次中间值；
	// （5）	把前面的到的三个值再做一次排序，获得的中值即该窗口的中值。

	//step1
	wire [7:0] max1,med1,min1;
	middle_comparator p1_middle_comparator (
		.clk_100M(clk_100M),
		.rst_p(rst_p),
		.pixel_1(matrix_p11),
		.pixel_2(matrix_p12),
		.pixel_3(matrix_p13),
		.pixel_max(max1),
		.pixel_med(med1),
		.pixel_min(min1)
		);

	wire [7:0] max2,med2,min2;
	middle_comparator p2_middle_comparator (
		.clk_100M(clk_100M),
		.rst_p(rst_p),
		.pixel_1(matrix_p21),
		.pixel_2(matrix_p22),
		.pixel_3(matrix_p23),
		.pixel_max(max2),
		.pixel_med(med2),
		.pixel_min(min2)
		);

	wire [7:0] max3,med3,min3;
	middle_comparator p3_middle_comparator (
		.clk_100M(clk_100M),
		.rst_p(rst_p),
		.pixel_1(matrix_p31),
		.pixel_2(matrix_p31),
		.pixel_3(matrix_p31),
		.pixel_max(max3),
		.pixel_med(med3),
		.pixel_min(min3)
		);

	//step2
	wire [7:0] min_of_max;
	middle_comparator max_middle_comparator (
	.clk_100M(clk_100M),
	.rst_p(rst_p),
	.pixel_1(max1),
	.pixel_2(max2),
	.pixel_3(max3),
	.pixel_max(),
	.pixel_med(),
	.pixel_min(min_of_max)
	);

	wire [7:0] med_of_med;
	middle_comparator med_middle_comparator (
	.clk_100M(clk_100M),
	.rst_p(rst_p),
	.pixel_1(med1),
	.pixel_2(med2),
	.pixel_3(med3),
	.pixel_max(),
	.pixel_med(med_of_med),
	.pixel_min()
	);

	wire [7:0] max_of_min;
	middle_comparator min_middle_comparator (
	.clk_100M(clk_100M),
	.rst_p(rst_p),
	.pixel_1(min1),
	.pixel_2(min2),
	.pixel_3(min3),
	.pixel_max(max_of_min),
	.pixel_med(),
	.pixel_min()
	);

	//step3
	wire [7:0] med_of_all;
	middle_comparator last_middle_comparator (
	.clk_100M(clk_100M),
	.rst_p(rst_p),
	.pixel_1(min_of_max),
	.pixel_2(med_of_med),
	.pixel_3(max_of_min),
	.pixel_max(),
	.pixel_med(med_of_all),
	.pixel_min()
	);

	//output
	assign dout = ctrl?med_of_all:s_color;

endmodule
