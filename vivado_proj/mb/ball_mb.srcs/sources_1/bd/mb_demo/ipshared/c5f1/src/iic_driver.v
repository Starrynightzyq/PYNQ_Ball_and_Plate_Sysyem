`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/20 17:59:31
// Design Name: 
// Module Name: iic_driver
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


module iic_driver #(
		parameter	CLK_FREQ = 27'd100_000_000,	//100MHz
		parameter	IIC_FREQ = 27'd100_000		//100KHz (<400KHz)
	)
	(
		input 				clk_100M,		//global clock
		input 				rst_p,			//global reset

		input		[1:0]	iic_cmd,		//read and write command, 10 write, 01 read
		input		[7:0]	iic_dev_addr,	//IIC device address
		input		[7:0]	iic_reg_addr,	//IIC register address
		input		[7:0]	iic_wr_data,	//IIC write data
		output	reg	[7:0]	iic_rd_data,	//IIC read data

		output				device_done,
		output 	reg 		iic_ack,

		output				iic_sclk,		//IIC SCLK
		inout				iic_sdat,		//IIC SDA

		output				write_done,
		output				read_done
    );

	//-----------------------------------
	//delay 1ms for IIC slave is steady
	localparam DELAY_TOP = CLK_FREQ/1000;	//delay 1ms
	// localparam	DELAY_TOP = 100;	//just for simulation

	reg [16:0] delay_cnt;
	wire delay_done;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			delay_cnt <= 17'b0;
		end
		else if (delay_cnt < DELAY_TOP) begin
			delay_cnt <= delay_cnt + 1;
		end else begin
			delay_cnt <= delay_cnt;
		end
	end

	assign delay_done = (delay_cnt == DELAY_TOP) ? 1'b1 : 1'b0;
	assign device_done = delay_done;
	//-----------------------------------

	//-----------------------------------
	//generate IIC control clock
	reg [16:0] clk_cnt;
	wire iic_ctrl_clk;
	wire iic_transfer_en;	//设置数据的使能信
	wire iic_capture_en;	//读IIC slave时的采样使能信号

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			clk_cnt <= 17'b0;
		end
		else if (delay_done) begin
			if (clk_cnt < (CLK_FREQ/IIC_FREQ)) begin
				clk_cnt <= clk_cnt + 1;
			end else begin
				clk_cnt <= 17'd1;
			end
		end else begin
			clk_cnt <= 17'd0;
		end
	end

	assign iic_ctrl_clk 	= ((clk_cnt >= (CLK_FREQ/IIC_FREQ)/4 + 1'b1) && (clk_cnt < ((CLK_FREQ/IIC_FREQ)/4)*3 + 1'b1)) ? 1'b1 : 1'b0;
	assign iic_transfer_en 	= (clk_cnt == 16'd1) ? 1'b1 : 1'b0;						//低电平正中间，设置数据使能
	assign iic_capture_en 	= (clk_cnt == ((CLK_FREQ/IIC_FREQ)/4)*2) ? 1'b1 : 1'b0;	//高电平正中间，读数据采样使能
	//-----------------------------------

	//-----------------------------------
	//FSM encode
	localparam 	IIC_IDLE 		= 	5'd0;
	//IIC Write encode
	localparam 	IIC_WR_START = 	5'd1;
	localparam 	IIC_WR_IDADDR 	= 	5'd2;	//device address,write(0)
	localparam 	IIC_WR_ACK1 	= 	5'd3;
	localparam 	IIC_WR_REGADDR 	= 	5'd4;	//register address
	localparam 	IIC_WR_ACK2 		= 	5'd5;
	localparam 	IIC_WR_REGDATA 	= 	5'd6;		//register data
	localparam 	IIC_WR_ACK3 	= 	5'd7;
	localparam 	IIC_WR_STOP 	= 	5'd8;
	//IIC Read encode
	localparam 	IIC_RD_START1 	= 	5'd9;
	localparam 	IIC_RD_IDADDR1 	= 	5'd10;	//device address,write(0)
	localparam 	IIC_RD_ACK1 	= 	5'd11;
	localparam 	IIC_RD_REGADDR 	= 	5'd12;	//register address
	localparam 	IIC_RD_ACK2 	= 	5'd13;
	localparam 	IIC_RD_STOP1 	= 	5'd14;
	localparam 	IIC_RD_IDLE 	= 	5'd15;
	localparam 	IIC_RD_START2 	= 	5'd16;
	localparam 	IIC_RD_IDADDR2 	= 	5'd17;
	localparam 	IIC_RD_ACK3 	= 	5'd18;
	localparam 	IIC_RD_REGDATA 	= 	5'd19;	//register data
	localparam 	IIC_RD_NACK 	= 	5'd20;
	localparam 	IIC_RD_STOP2 	= 	5'd21;
	//-----------------------------------

	//-----------------------------------
	//FSM always 1
	reg [4:0] state_current;
	reg [4:0] state_next;
	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			state_current <= IIC_IDLE;
		end
		else if (iic_transfer_en) begin
			state_current <= state_next;
		end
	end
	//-----------------------------------

	//-----------------------------------
	//FSM always 2
	reg [3:0] iic_stream_cnt;

	always @(*) begin
		state_next = IIC_IDLE;
		case(state_current)
			IIC_IDLE:begin 			//0
				if (iic_cmd == 2'b01) begin 		//01 read
					state_next <= IIC_RD_START1;
				end else if(iic_cmd == 2'b10) begin //10 write
					state_next <= IIC_WR_START;
				end else begin
					state_next <= IIC_IDLE;
				end
			end
			//IIC Write: { Device_Address(Write) + Register_Address + Write_Data }
			IIC_WR_START:begin 		//1
				if (iic_transfer_en) begin
					state_next <= IIC_WR_IDADDR;
				end else begin
					state_next <= IIC_WR_START;
				end
			end
			IIC_WR_IDADDR:begin 	//2
				if (iic_transfer_en && (iic_stream_cnt == 4'd8)) begin
					state_next <= IIC_WR_ACK1;
				end else begin
					state_next <= IIC_WR_IDADDR;
				end
			end
			IIC_WR_ACK1:begin 		//3
				if (iic_transfer_en) begin
					state_next <= IIC_WR_REGADDR;
				end else begin
					state_next <= IIC_WR_ACK1;
				end
			end
			IIC_WR_REGADDR:begin 	//4
				if (iic_transfer_en && (iic_stream_cnt == 4'd8)) begin
					state_next <= IIC_WR_ACK2;
				end else begin
					state_next <= IIC_WR_REGADDR;
				end
			end
			IIC_WR_ACK2:begin 		//5
				if (iic_transfer_en) begin
					state_next <= IIC_WR_REGDATA;
				end else begin
					state_next <= IIC_WR_ACK2;
				end
			end
			IIC_WR_REGDATA:begin 	//6
				if (iic_transfer_en && (iic_stream_cnt == 4'd8)) begin
					state_next <= IIC_WR_ACK3;
				end else begin
					state_next <= IIC_WR_REGDATA;
				end
			end
			IIC_WR_ACK3:begin 		//7
				if (iic_transfer_en) begin
					state_next <= IIC_WR_STOP;
				end else begin
					state_next <= IIC_WR_ACK3;
				end
			end
			IIC_WR_STOP:begin 		//8
				if (iic_transfer_en) begin
					state_next <= IIC_IDLE;
				end else begin
					state_next <= IIC_WR_STOP;
				end
			end
			//IIC Read: { Device_Address(Write) + Regis_Address + Device_Address(Read) + Read_Data }
			IIC_RD_START1:begin 	//9
				if (iic_transfer_en) begin
					state_next <= IIC_RD_IDADDR1;
				end else begin
					state_next <= IIC_RD_START1;
				end
			end
			IIC_RD_IDADDR1:begin 	//10
				if (iic_transfer_en && (iic_stream_cnt == 4'd8)) begin
					state_next <= IIC_RD_ACK1;
				end else begin
					state_next <= IIC_RD_IDADDR1;
				end
			end
			IIC_RD_ACK1:begin 		//11
				if (iic_transfer_en) begin
					state_next <= IIC_RD_REGADDR;
				end else begin
					state_next <= IIC_RD_ACK1;
				end
			end
			IIC_RD_REGADDR:begin 	//12
				if (iic_transfer_en && (iic_stream_cnt == 4'd8)) begin
					state_next <= IIC_RD_ACK2;
				end else begin
					state_next <= IIC_RD_REGADDR;
				end
			end
			IIC_RD_ACK2:begin 		//13
				if (iic_transfer_en) begin
					state_next <= IIC_RD_STOP1;
				end else begin
					state_next <= IIC_RD_ACK2;
				end
			end
			IIC_RD_STOP1:begin 		//14
				if (iic_transfer_en) begin
					state_next <= IIC_RD_IDLE;
				end else begin
					state_next <= IIC_RD_STOP1;
				end
			end
			IIC_RD_IDLE:begin 		//15
				if (iic_transfer_en) begin
					state_next <= IIC_RD_START2;
				end else begin
					state_next <= IIC_RD_IDLE;
				end
			end
			IIC_RD_START2:begin 	//16
				if (iic_transfer_en) begin
					state_next <= IIC_RD_IDADDR2;
				end else begin
					state_next <= IIC_RD_START2;
				end
			end
			IIC_RD_IDADDR2:begin 	//17
				if (iic_transfer_en && (iic_stream_cnt == 4'd8)) begin
					state_next <= IIC_RD_ACK3;
				end else begin
					state_next <= IIC_RD_IDADDR2;
				end
			end
			IIC_RD_ACK3:begin 		//18
				if (iic_transfer_en) begin
					state_next <= IIC_RD_REGDATA;
				end else begin
					state_next <= IIC_RD_ACK3;
				end
			end
			IIC_RD_REGDATA:begin 	//19
				if (iic_transfer_en && (iic_stream_cnt == 4'd8)) begin
					state_next <= IIC_RD_NACK;
				end else begin
					state_next <= IIC_RD_REGDATA;
				end
			end
			IIC_RD_NACK:begin 		//20
				if (iic_transfer_en) begin
					state_next <= IIC_RD_STOP2;
				end else begin
					state_next <= IIC_RD_NACK;
				end
			end
			IIC_RD_STOP2:begin 		//21
				if (iic_transfer_en) begin
					state_next <= IIC_IDLE;
				end else begin
					state_next <= IIC_RD_STOP2;
				end
			end
			default:begin
				state_next <= IIC_IDLE;
			end
		endcase
	end
	//-----------------------------------

	//-----------------------------------
	//FSM always 3
	reg iic_sdat_out;
	reg [7:0] iic_wdata;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			iic_sdat_out 	<= 1'b1;
			iic_stream_cnt 	<= 4'd0;
			iic_wdata 		<= 8'd0;
		end
		else if (iic_transfer_en) begin
			case(state_next)
				IIC_IDLE:begin 			//0
					iic_sdat_out 	<= 1'b1;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= 8'd0;
				end
				//IIC Write: { Device_Address(Write) + Register_Address + Write_Data }
				IIC_WR_START:begin 		//1
					iic_sdat_out 	<= 1'b0;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= iic_dev_addr;
				end
				IIC_WR_IDADDR:begin 	//2
					iic_sdat_out 	<= iic_wdata[3'd7 - iic_stream_cnt];
					iic_stream_cnt 	<= iic_stream_cnt + 1;
					iic_wdata 		<= iic_wdata;
				end
				IIC_WR_ACK1:begin 		//3
					iic_sdat_out 	<= 1'b0;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= iic_reg_addr;
				end
				IIC_WR_REGADDR:begin 	//4
					iic_sdat_out 	<= iic_wdata[3'd7 - iic_stream_cnt];
					iic_stream_cnt 	<= iic_stream_cnt + 1;
					iic_wdata 		<= iic_wdata;
				end
				IIC_WR_ACK2:begin 		//5
					iic_sdat_out 	<= 1'b0;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= iic_wr_data;
				end
				IIC_WR_REGDATA:begin 	//6
					iic_sdat_out 	<= iic_wdata[3'd7 - iic_stream_cnt];
					iic_stream_cnt 	<= iic_stream_cnt + 1;
					iic_wdata 		<= iic_wdata;
				end
				IIC_WR_ACK3:begin 		//7
					iic_sdat_out 	<= 1'b0;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= 8'd0;
				end
				IIC_WR_STOP:begin 		//8
					iic_sdat_out 	<= 1'b0;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= 8'd0;
				end
				//IIC Read: { Device_Address(Write) + Regis_Address + Device_Address(Read) + Read_Data }
				IIC_RD_START1:begin 	//9
					iic_sdat_out 	<= 1'b0;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= iic_dev_addr;
				end
				IIC_RD_IDADDR1:begin 	//10
					iic_sdat_out 	<= iic_wdata[3'd7 - iic_stream_cnt];
					iic_stream_cnt 	<= iic_stream_cnt + 1;
					iic_wdata 		<= iic_wdata;
				end
				IIC_RD_ACK1:begin 		//11
					iic_sdat_out 	<= 1'b0;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= iic_reg_addr;
				end
				IIC_RD_REGADDR:begin 	//12
					iic_sdat_out 	<= iic_wdata[3'd7 - iic_stream_cnt];
					iic_stream_cnt 	<= iic_stream_cnt + 1;
					iic_wdata 		<= iic_wdata;
				end
				IIC_RD_ACK2:begin 		//13
					iic_sdat_out 	<= 1'b0;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= 8'd0;
				end
				IIC_RD_STOP1:begin 		//14
					iic_sdat_out 	<= 1'b0;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= 8'd0;
				end
				IIC_RD_IDLE:begin 		//15
					iic_sdat_out 	<= 1'b1;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= 8'd0;
				end
				IIC_RD_START2:begin 	//16
					iic_sdat_out 	<= 1'b0;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= iic_dev_addr|8'h01;
				end
				IIC_RD_IDADDR2:begin 	//17
					iic_sdat_out 	<= iic_wdata[3'd7 - iic_stream_cnt];
					iic_stream_cnt 	<= iic_stream_cnt + 1;
					iic_wdata 		<= iic_wdata;
				end
				IIC_RD_ACK3:begin 		//18
					iic_sdat_out 	<= 1'b0;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= 8'd0;
				end
				IIC_RD_REGDATA:begin 	//19
					iic_sdat_out 	<= 1'b0;
					iic_stream_cnt 	<= iic_stream_cnt + 1;
					iic_wdata 		<= 8'd0;
				end
				IIC_RD_NACK:begin 		//20
					iic_sdat_out 	<= 1'b1;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= 8'd0;
				end
				IIC_RD_STOP2:begin 		//21
					iic_sdat_out 	<= 1'b0;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= 8'd0;
				end
				default:begin
					iic_sdat_out 	<= 1'b1;
					iic_stream_cnt 	<= 4'd0;
					iic_wdata 		<= 8'd0;
				end
			endcase
		end else begin
			iic_stream_cnt 	<= iic_stream_cnt;
			iic_sdat_out 	<= iic_sdat_out;
			iic_wdata 		<= iic_wdata;
		end
	end
	//-----------------------------------

	//---------------------------------------------
	//respone from slave for iic data transfer
	reg iic_ack1;
	reg iic_ack2;
	reg iic_ack3;

	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			iic_ack <= 1'b1;
			iic_ack1 <= 1'b1;
			iic_ack2 <= 1'b1;
			iic_ack3 <= 1'b1;
			iic_rd_data <= 8'd0;
		end
		else if (iic_capture_en) begin
			case(state_next)
				IIC_IDLE:begin
					iic_ack <= 1'b1;
					iic_ack1 <= 1'b1;
					iic_ack2 <= 1'b1;
					iic_ack3 <= 1'b1;
				end
				//Write IIC: {ID_Address, REG_Address, W_REG_Data}
				IIC_WR_ACK1	:	iic_ack1 <= iic_sdat;
				IIC_WR_ACK2	:	iic_ack2 <= iic_sdat;
				IIC_WR_ACK3	:	iic_ack3 <= iic_sdat;
				IIC_WR_STOP	:	iic_ack <= (iic_ack1||iic_ack2||iic_ack3);
				//IIC Read: {ID_Address + REG_Address} + {ID_Address + R_REG_Data}
				IIC_RD_ACK1	:	iic_ack1 <= iic_sdat;
				IIC_RD_ACK2	:	iic_ack2 <= iic_sdat;
				IIC_RD_ACK3	:	iic_ack3 <= iic_sdat;
				IIC_RD_STOP2:	iic_ack <= (iic_ack1||iic_ack2||iic_ack3);
				IIC_RD_REGDATA:	iic_rd_data <= {iic_rd_data[6:0],iic_sdat};
			endcase
		end else begin
			iic_ack <= iic_ack;
			iic_ack1 <= iic_ack1;
			iic_ack2 <= iic_ack2;
			iic_ack3 <= iic_ack3;
		end
	end
	//---------------------------------------------

	//-----------------------------------
	//IIC signal
	wire read_en;
	assign read_en = (
		state_current == IIC_WR_ACK1||
		state_current == IIC_WR_ACK2||
		state_current == IIC_WR_ACK3||
		state_current == IIC_RD_ACK1||
		state_current == IIC_RD_ACK2||
		state_current == IIC_RD_ACK3||
		state_current == IIC_RD_REGDATA
		) ? 1'b1 : 1'b0;				//release data bus

	assign iic_sclk = (
		state_current >= IIC_WR_IDADDR && state_current <= IIC_WR_ACK3 ||
		state_current >= IIC_RD_IDADDR1 && state_current <= IIC_RD_ACK2 ||
		state_current >= IIC_RD_IDADDR2 && state_current <= IIC_RD_NACK
		) ? iic_ctrl_clk : 1'b1;

	assign iic_sdat = (read_en) ? 1'bz : iic_sdat_out;
	//-----------------------------------


	//-----------------------------------
	//some output
	wire write_done_ack3;
	assign write_done_ack3 = (state_current == IIC_WR_ACK3); 
	reg write_done_reg;
	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			write_done_reg <= 1'b0;
		end
		else begin
			write_done_reg <= write_done_ack3;
		end
	end
	assign write_done = write_done_ack3 & (!write_done_reg);

	wire read_done_ack3;
	assign read_done_ack3 = (state_current == IIC_RD_NACK);
	reg read_done_reg;
	always @(posedge clk_100M or posedge rst_p) begin
		if (rst_p) begin
			// reset
			read_done_reg <= 1'b0;
		end
		else begin
			read_done_reg <= read_done_ack3;
		end
	end
	assign read_done = read_done_ack3 & (!read_done_reg);

	//-----------------------------------

endmodule