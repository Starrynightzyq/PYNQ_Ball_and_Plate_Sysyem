`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/10 12:52:58
// Design Name: 
// Module Name: shift_RAM_3x3
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


module shift_RAM_3x3(
	input clk_100M,
	input rst_p,
	input shift_clk_en,		//移位寄存器时钟使能信号
	input average_filter_en,	//移位寄存器总使能信号
	input [7:0] din,
	output [7:0] matrix_p11,matrix_p12,matrix_p13,
	output [7:0] matrix_p21,matrix_p22,matrix_p23,
	output [7:0] matrix_p31,matrix_p32,matrix_p33
    );

	//两个移位寄存器用来产生3*3矩阵
	wire [7:0] row3_data;
	wire [7:0] row2_data;
	wire [7:0] row1_data;

	assign row3_data = din;
	
	shift_ram U1_shift_ram (
		.D(row3_data),		// input wire [7 : 0] D
		.CLK(clk_100M),		// input wire CLK
		.CE(shift_clk_en),  // input wire CE
		.SCLR(rst_p),  		// input wire SCLR
		.Q(row2_data)		// output wire [7 : 0] Q
		);

	shift_ram U2_shift_ram (
		.D(row2_data),		// input wire [7 : 0] D
		.CLK(clk_100M),		// input wire CLK
		.CE(shift_clk_en),  // input wire CE
		.SCLR(rst_p),		// input wire SCLR
		.Q(row1_data)		// output wire [7 : 0] Q
		);

	//生成3*3矩阵
	reg [7:0] matrix_p11,matrix_p12,matrix_p13;
	reg [7:0] matrix_p21,matrix_p22,matrix_p23;
	reg [7:0] matrix_p31,matrix_p32,matrix_p33;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			{matrix_p11,matrix_p12,matrix_p13} <= 24'h0;
			{matrix_p21,matrix_p22,matrix_p23} <= 24'h0;
			{matrix_p31,matrix_p32,matrix_p33} <= 24'h0;
		end
		else if (average_filter_en) begin
			if (shift_clk_en) begin //shift_RAM data read clock enbale 
				{matrix_p11,matrix_p12,matrix_p13} <= {matrix_p12,matrix_p13,row1_data};
				{matrix_p21,matrix_p22,matrix_p23} <= {matrix_p22,matrix_p23,row2_data};
				{matrix_p31,matrix_p32,matrix_p33} <= {matrix_p32,matrix_p33,row3_data};
			end else begin
				{matrix_p11,matrix_p12,matrix_p13} <= {matrix_p11,matrix_p12,matrix_p13};
				{matrix_p21,matrix_p22,matrix_p23} <= {matrix_p21,matrix_p22,matrix_p23};
				{matrix_p31,matrix_p32,matrix_p33} <= {matrix_p31,matrix_p32,matrix_p33};
			end
		end else begin
			{matrix_p11,matrix_p12,matrix_p13} <= 24'h0;
			{matrix_p21,matrix_p22,matrix_p23} <= 24'h0;
			{matrix_p31,matrix_p32,matrix_p33} <= 24'h0;
		end
	end

endmodule
