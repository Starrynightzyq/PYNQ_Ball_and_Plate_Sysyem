`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/16 14:31:34
// Design Name: 
// Module Name: uart_rx
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


module uart_rx
    #(
    parameter   DBIT = 8,       //����λ������ 16��32��24 λ
                SB_TICK = 16,   //��Ӧֹͣλ�Ĳ�����������16��24��32����ӦֹͣλΪ1��1.5��2λ
                Addr_Max = 76800    //320*240
    )
    (
    input wire clk,reset,
    input wire rx,s_tick,
    output reg rx_done_tick,
    output wire [7:0] dout,
    output wire [16:0] addr
    );
    
    //״̬��״̬����
    localparam [1:0]
        idle = 2'b00,
        start = 2'b01,
        data = 2'b10,
        stop = 2'b11;
        
    //�ź�����
    reg [1:0] state_reg,state_next;
    reg [3:0] s_reg,s_next;			//����ʱ�Ӽ�����
    reg [2:0] n_reg,n_next;			//����λ�������
    reg [7:0] b_reg,b_next;			//��ȡ���ݴ洢��
    reg [16:0] addr_reg,addr_next;  //��ַ
    
    //FSMD״̬�����ݼĴ���
    always@(posedge clk,posedge reset) begin
        if(reset) begin
            state_reg <= idle;
            s_reg <= 0;
            n_reg <= 0;
            b_reg <= 0;
            addr_reg <= 0;
        end else begin
            state_reg <= state_next;
            s_reg <= s_next;
            n_reg <= n_next;
            b_reg <= b_next;
            addr_reg <= addr_next;
        end
    end
    
    //FSMD��һ״̬�߼�
    always@(*) begin
        state_next = state_reg;
        rx_done_tick = 1'b0;
        s_next = s_reg;
        n_next = n_reg;
        b_next = b_reg;
        addr_next = addr_reg;
        case(state_reg) 
            idle:
                if(~rx) begin
                    state_next = start;
                    s_next = 0;
                end
            start:
                if(s_tick) begin
                    if(s_reg == 7) begin
                        state_next = data;
                        s_next = 0;
                        n_next = 0;
                    end else begin
                   		s_next = s_reg + 1;
                	end
                end
            data:
                if(s_tick) begin
                    if(s_reg == 15) begin
                        s_next = 0;
                        b_next = {rx,b_reg[7:1]};
                        if(n_reg == (DBIT - 1)) begin
                            state_next = stop;
                        end else begin
                            n_next = n_reg + 1;
                        end
                    end else begin
                    	s_next = s_reg + 1;
                	end 
                end
            stop:
                if(s_tick) begin
                    if(s_reg == (SB_TICK - 1)) begin
                        state_next = idle;
                        rx_done_tick = 1'b1;
                        if (addr_reg == (Addr_Max - 1)) begin
                            addr_next = 0;
                        end else begin
                            addr_next = addr_reg + 1;
                        end
                    end else begin
                    	s_next = s_reg + 1;
                	end
                end
        endcase
    end
    
    //���
    assign dout = b_reg;
    assign addr = addr_reg;
    
endmodule
