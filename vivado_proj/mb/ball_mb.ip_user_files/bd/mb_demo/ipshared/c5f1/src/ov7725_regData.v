`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/19 20:46:49
// Design Name: 
// Module Name: ov7725_regData
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


module ov7725_regData
	(
		input [7:0] LUT_INDEX,
		output reg [15:0] LUT_DATA,
		output [7:0] Slave_Addr
    );

    assign Slave_Addr = 8'h42;

    parameter Read_DATA = 0;
    parameter SET_OV7725 = 2;

    always @(*) begin
    	case(LUT_INDEX)
    		// SET_OV7725 + 0 : LUT_DATA = 16'h1280;	//重置寄存器
    		// SET_OV7725 + 1 : LUT_DATA = 16'h0cd0;	//设置图像输出格式
    		// SET_OV7725 + 2 : LUT_DATA = 16'h1100;	//设置时钟
    		// SET_OV7725 + 3 : LUT_DATA = 16'h1246;	//设置QVGA模式
//**************************my settings********************************************************************************//
            // SET_OV7725 + 0   :   LUT_DATA    =   16'h1280;       //COM7: 1000_0000 重置寄存器
            // SET_OV7725 + 1   :   LUT_DATA    =   16'h0cd0;   //COM3: 1101_0000 垂直翻转，水平镜像
            // SET_OV7725 + 2   :   LUT_DATA    =   16'h1100;   //CLKRC: 0000_0000 设置时钟，internal clock = input clock / 2
            // SET_OV7725 + 3   :   LUT_DATA    =   16'h1246;    //COM7: 0100_0110 QVGA，RGB565
            // SET_OV7725 + 4   :   LUT_DATA    =   16'h0d40;   //COM4: 0100_0000 整个窗口进行自动曝光
            // SET_OV7725 + 5   :   LUT_DATA    =   16'h13ff;   //COM8: 1111_1111 打开自动增益(AGC)、自动白平衡(AWB)、自动曝光(AEC)
            // SET_OV7725 + 6   :   LUT_DATA    =   16'h2440;   //AEW: 0100_0000 控制自动曝光强弱
            // SET_OV7725 + 7   :   LUT_DATA    =   16'h2515;   //AEB: 0001_0101 控制自动曝光的强弱
            // SET_OV7725 + 8   :   LUT_DATA    =   16'h2632;   //VPT: 0011_0010 快速模式工作区
            // SET_OV7725 + 9   :   LUT_DATA    =   16'ha624;   //SDE: 0010_0100 使能控制图片亮暗的寄存器
            // SET_OV7725 + 10  :   LUT_DATA    =   16'h001f;   //BRIGHT: 定义自动曝光时图片的亮度增益，此值越大，图片越亮
            // SET_OV7725 + 11  :   LUT_DATA    =   16'hab06;   //SIGN: 定义BRIGHT   的高位是正数，还是负数，如果为0x0e,则图片亮度是负的；0-255，图片越来越亮；0 ~ -127，图片越来越亮
//**************************my settings********************************************************************************//

          SET_OV7725 + 0 : 	 LUT_DATA    =   16'h1280;	//重置寄存器
          //（1）VGA/QVGA模式、图像、时钟的配置
          SET_OV7725 + 0  :   LUT_DATA    =   16'h3d03;
          SET_OV7725 + 1  :   LUT_DATA    =   16'h1500;
          SET_OV7725 + 2  :   LUT_DATA    =   16'h173f;   //deffault
          SET_OV7725 + 3  :   LUT_DATA    =   16'h1850;   //deffault
          SET_OV7725 + 4  :   LUT_DATA    =   16'h1903;   //deffault
          SET_OV7725 + 5  :   LUT_DATA    =   16'h1a78;   //deffault
          SET_OV7725 + 6  :   LUT_DATA    =   16'h3200;
          SET_OV7725 + 7  :   LUT_DATA    =   16'h2950;   //deffault
          SET_OV7725 + 8  :   LUT_DATA    =   16'h2c78;   //deffault
          SET_OV7725 + 9  :   LUT_DATA    =   16'h2a00;
          SET_OV7725 + 10 :   LUT_DATA    =   16'h1100;
          SET_OV7725 + 11 :   LUT_DATA    =   16'h1246; 
          SET_OV7725 + 12 :   LUT_DATA    =   16'h0cd0;   //50
          //（2）DSP的配置
          SET_OV7725 + 13 :   LUT_DATA    =   16'h4280;
          SET_OV7725 + 14 :   LUT_DATA    =   16'h4d0a;
          SET_OV7725 + 15 :   LUT_DATA    =   16'h63f0;
          SET_OV7725 + 16 :   LUT_DATA    =   16'h64ff;
          SET_OV7725 + 17 :   LUT_DATA    =   16'h6500;
          SET_OV7725 + 18 :   LUT_DATA    =   16'h6600;
          SET_OV7725 + 19 :   LUT_DATA    =   16'h6700;
          //（3）AGC AEC AWB的配置
          SET_OV7725 + 20 :   LUT_DATA    =   16'h13f0;
          SET_OV7725 + 21 :   LUT_DATA    =   16'h0d41;
          SET_OV7725 + 22 :   LUT_DATA    =   16'h0fc5;
          SET_OV7725 + 23 :   LUT_DATA    =   16'h1411;
          SET_OV7725 + 24 :   LUT_DATA    =   16'h227f;
          SET_OV7725 + 25 :   LUT_DATA    =   16'h2303;
          SET_OV7725 + 26 :   LUT_DATA    =   16'h2440;
          SET_OV7725 + 27 :   LUT_DATA    =   16'h2530;
          SET_OV7725 + 28 :   LUT_DATA    =   16'h26a1;
          SET_OV7725 + 29 :   LUT_DATA    =   16'h2b9e;
          SET_OV7725 + 30 :   LUT_DATA    =   16'h6baa;
          SET_OV7725 + 31 :   LUT_DATA    =   16'h13ff;
          //（4）亮度等参数的配置
          SET_OV7725 + 32 :   LUT_DATA    =   16'h900a;
          SET_OV7725 + 33 :   LUT_DATA    =   16'h9101;
          SET_OV7725 + 34 :   LUT_DATA    =   16'h9201;
          SET_OV7725 + 35 :   LUT_DATA    =   16'h9301;
          SET_OV7725 + 36 :   LUT_DATA    =   16'h945f;
          SET_OV7725 + 37 :   LUT_DATA    =   16'h9553;
          SET_OV7725 + 38 :   LUT_DATA    =   16'h9611;
          SET_OV7725 + 39 :   LUT_DATA    =   16'h971a;
          SET_OV7725 + 40 :   LUT_DATA    =   16'h983d;
          SET_OV7725 + 41 :   LUT_DATA    =   16'h995a;
          SET_OV7725 + 42 :   LUT_DATA    =   16'h9a1e;
          SET_OV7725 + 43 :   LUT_DATA    =   16'h9b15;	//Brightness Control
          SET_OV7725 + 44 :   LUT_DATA    =   16'h9c25;	//Contrast Gain
          SET_OV7725 + 45 :   LUT_DATA    =   16'h9e81;
          SET_OV7725 + 46 :   LUT_DATA    =   16'ha606;
          SET_OV7725 + 47 :   LUT_DATA    =   16'ha765;
          SET_OV7725 + 48 :   LUT_DATA    =   16'ha865;
          SET_OV7725 + 49 :   LUT_DATA    =   16'ha980;
          SET_OV7725 + 50 :   LUT_DATA    =   16'haa80;
          //（5）Gamma的配置
          SET_OV7725 + 51 :   LUT_DATA    =   16'h7e0c;
          SET_OV7725 + 52 :   LUT_DATA    =   16'h7f16;
          SET_OV7725 + 53 :   LUT_DATA    =   16'h802a;
          SET_OV7725 + 54 :   LUT_DATA    =   16'h814e;
          SET_OV7725 + 55 :   LUT_DATA    =   16'h8261;
          SET_OV7725 + 56 :   LUT_DATA    =   16'h836f;
          SET_OV7725 + 57 :   LUT_DATA    =   16'h847b;
          SET_OV7725 + 58 :   LUT_DATA    =   16'h8586;
          SET_OV7725 + 59 :   LUT_DATA    =   16'h868e;
          SET_OV7725 + 60 :   LUT_DATA    =   16'h8797;
          SET_OV7725 + 61 :   LUT_DATA    =   16'h88a4;
          SET_OV7725 + 62 :   LUT_DATA    =   16'h89af;
          SET_OV7725 + 63 :   LUT_DATA    =   16'h8ac5;
          SET_OV7725 + 64 :   LUT_DATA    =   16'h8bd7;
          SET_OV7725 + 65 :   LUT_DATA    =   16'h8ce8;
          SET_OV7725 + 66 :   LUT_DATA    =   16'h8d20;
          //（6）其他


    		default		   : LUT_DATA = 0;
    	endcase
    end
endmodule
