`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/25 13:14:34
// Design Name: 
// Module Name: axi_pwm
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


module axi_pwm(
    input clk_100M,
    input rst_n,
    output pwm_out,
    input [31:0] width
    );
	
	localparam low_thres = 32'd50000;
	localparam high_thres = 32'd250000;
	localparam t_length = 32'd2000000;

	wire [31:0] comp;
	wire en_low;
	wire en_high;
	wire pwm_en;

	reg [31:0] counter;
	
	assign comp = width + low_thres;
	assign en_low = counter > low_thres;
	assign en_high = counter < high_thres;

	assign pwm_en = counter < comp;

	assign pwm_out = (~en_low) || (pwm_en && en_high);

	always @(posedge clk_100M or negedge rst_n) begin
		if (~rst_n) begin
			// reset
			counter <= 32'd0;
		end
		else if (counter == t_length) begin
			counter <= 32'd0;
		end
		else begin
			counter <= counter + 1;
		end
	end
endmodule
