`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/10 21:20:42
// Design Name: 
// Module Name: middle_comparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 排序 cost 1 clk_T
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module middle_comparator (
	input clk_100M,
	input rst_p,

	input [7:0] pixel_1,
	input [7:0] pixel_2,
	input [7:0] pixel_3,

	output reg [7:0] pixel_med,
	output reg [7:0] pixel_max,
	output reg [7:0] pixel_min
	);



always @(posedge clk_100M or posedge rst_p)
begin
    if(rst_p)
        begin
            pixel_med <= 0;
            pixel_max <= 0;
            pixel_min <= 0;
        end
    else
    begin
        if(pixel_1 >= pixel_2)
            begin
            if(pixel_1 < pixel_3)
                begin
                    pixel_max <= pixel_3;
                    pixel_med <= pixel_1;
                    pixel_min <= pixel_2;
                end
            else
                begin
                    if(pixel_2 >= pixel_3)
                        begin
                            pixel_max <= pixel_1;
                            pixel_med <= pixel_2;
                            pixel_min <= pixel_3;
                        end
                    else
                        begin
                            pixel_max <= pixel_1;
                            pixel_med <= pixel_3;
                            pixel_min <= pixel_2;                       
                        end
                end
            end
        else
            begin
                if(pixel_1 >= pixel_3)
                    begin
                        pixel_max <= pixel_2;
                        pixel_med <= pixel_1;
                        pixel_min <= pixel_3;
                    end
                else
                    begin
                        if(pixel_2 >= pixel_3)
                            begin
                                pixel_max <= pixel_2;
                                pixel_med <= pixel_3;
                                pixel_min <= pixel_1;
                            end
                        else
                            begin
                                pixel_max <= pixel_3;
                                pixel_med <= pixel_2;
                                pixel_min <= pixel_1;
                            end
                    end
            end
    end
end

endmodule
