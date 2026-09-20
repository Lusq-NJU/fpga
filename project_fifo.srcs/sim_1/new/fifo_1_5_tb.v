`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/09/13 13:33:30
// Design Name: 
// Module Name: fifo_1_5_tb
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


module fifo_1_5_tb(

    );

    reg             clk_in         ;
    reg             rst_n          ;
    reg             clk_out        ;
    
    reg[7:0]        data_in        ;
    reg             data_in_vld    ;
    reg             b_rdy          ;
    
    wire[31:0]      data_out       ;
	wire            data_out_vld   ;
    
    parameter CYCLE      = 20 ;
    parameter CYCLE_W    = 10 ;
    integer     i  ;
    
    parameter RST_TIME = 3 ;
    
    fifo_1_5 uut(
                .clk_in          ( clk_in      ), 
                .rst_n           ( rst_n       ),
                .data_in         ( data_in     ),
                .data_in_vld     ( data_in_vld ),
                .b_rdy           ( b_rdy       ),
                .clk_out         ( clk_out     ),
                .data_out        ( data_out    ),
                .data_out_vld    ( data_out_vld)
    );
    

    
    initial begin
		clk_in = 0;
		forever #(CYCLE/2) clk_in=~clk_in;
    end

    initial begin
		clk_out = 0;
		forever #(CYCLE_W/2) clk_out=~clk_out;
    end
    
    initial begin
        rst_n = 1;
		#2  rst_n = 0;
		#(CYCLE_W)  rst_n = 1;
    end

    initial begin
		#1;
			data_in     = 0;
			data_in_vld = 0;
			b_rdy       = 0;
		#(CYCLE*20);
		for(i=0;i<65;i=i+1) begin
			data_in= data_in + 1;
			data_in_vld =  1 ;
			b_rdy       = 0 ;
			#(1*CYCLE);    
		end

		data_in      = 0;
		data_in_vld  = 0;
		b_rdy        = 0;
		#(5*CYCLE);  
		b_rdy      = 1;
		#(70*CYCLE);
		
		for(i=0;i<65;i=i+1) begin
			data_in= data_in + 1;
			data_in_vld =  1 ;
			b_rdy       = 1 ;
			#(1*CYCLE);    
		end
		
		data_in      = 0;
		data_in_vld  = 0;
		b_rdy        = 0;
		#(10*CYCLE);  
		b_rdy      = 1;
		#(70*CYCLE);
		b_rdy      = 0;
    end
endmodule
