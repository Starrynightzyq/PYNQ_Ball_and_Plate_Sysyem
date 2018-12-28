`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/16 11:29:41
// Design Name: 
// Module Name: shift_RAM_3x3_1bit
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


module shift_RAM_3x3_1bit(
	input clk_100M,
	input rst_p,
	input shift_clk_en,		//移位寄存器时钟使能信号
	input en,	//移位寄存器总使能信号
	input din,
	output matrix_p11,matrix_p12,matrix_p13,
	output matrix_p21,matrix_p22,matrix_p23,
	output matrix_p31,matrix_p32,matrix_p33
    );

	//两个移位寄存器用来产生3*3矩阵
	wire row3_data;
	wire row2_data;
	wire row1_data;

	assign row3_data = din;
	
	shift_ram_1bit U1_shift_ram_1bit (
		.D(row3_data),		// input wire D
		.CLK(shift_clk_en),	// input wire CLK
		.SCLR(rst_p),  		// input wire SCLR
		.Q(row2_data)		// output wire Q
		);

	shift_ram_1bit U2_shift_ram_1bit (
		.D(row2_data),		// input wire D
		.CLK(shift_clk_en),	// input wire CLK
		.SCLR(rst_p),		// input wire SCLR
		.Q(row1_data)		// output wire Q
		);

	//生成3*3矩阵
	reg matrix_p11,matrix_p12,matrix_p13;
	reg matrix_p21,matrix_p22,matrix_p23;
	reg matrix_p31,matrix_p32,matrix_p33;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			{matrix_p11,matrix_p12,matrix_p13} <= 3'h0;
			{matrix_p21,matrix_p22,matrix_p23} <= 3'h0;
			{matrix_p31,matrix_p32,matrix_p33} <= 3'h0;
		end
		else if (en) begin
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
			{matrix_p11,matrix_p12,matrix_p13} <= 3'h0;
			{matrix_p21,matrix_p22,matrix_p23} <= 3'h0;
			{matrix_p31,matrix_p32,matrix_p33} <= 3'h0;
		end
	end

endmodule
