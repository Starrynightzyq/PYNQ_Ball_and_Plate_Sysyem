`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/25 16:11:10
// Design Name: 
// Module Name: div_clock
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


module div_clock
	#(
		parameter Baud_Rate = 115200,	//波特率，默认9600
        parameter N = 17                //计数器位宽
	)
	(
	input clk,
	input reset,
	output clk_out
    );

    localparam div_num = 'd100_000_000 / (16* Baud_Rate);	//分频数为时钟速率除以波特率									

    //信号声明
    reg [N-1:0] count_reg;
    wire [N-1:0] count_next;

    always @(posedge clk or posedge reset) begin
    	if (reset) begin
    		// reset
    		count_reg <= 0;
    	end
    	else begin
    		count_reg <= count_next;
    	end
    end

    assign count_next = (count_reg == (div_num - 1)) ? 0 : count_reg + 1;

    //输出逻辑
    assign clk_out = (count_reg == (div_num - 1));
endmodule
