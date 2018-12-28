`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/27 20:13:16
// Design Name: 
// Module Name: delay
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


//per_clken delay N clk
module delay #(
	parameter N = 500
	)
	(
	input clk_100M,
	input rst_p,
	input matrix_clken,
	output post_clken
    );

	reg [N-1:0] per_clken_r;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			per_clken_r <= 0;
		end
		else begin
			per_clken_r <= {per_clken_r[N-2:0],matrix_clken};
		end
	end

	assign post_clken = per_clken_r[N-1];

endmodule
