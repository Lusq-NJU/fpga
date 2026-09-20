`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/09/12 20:39:53
// Design Name: 
// Module Name: fifo_1_1_tb
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


module fifo_1_1_tb(

    );

    reg                clk_in      ;
    reg                rst_n       ;
    reg                clk_out     ;
    reg                b_rdy       ;
    reg                data_in_vld ;
    reg  [15:0]        data_in     ; 
    wire [15:0]        data_out    ;
    wire               data_out_vld;


    parameter CYCLE      = 12;
    parameter CYCLE_W    = 10  ;
    integer  i;

    parameter RST_TIME = 3 ;

    fifo_1_1 uut(
        .rst_n              (rst_n       ),
        .clk_in             (clk_in      ),
        .clk_out            (clk_out     ),
        .data_in            (data_in     ),
        .data_in_vld        (data_in_vld ),
        .b_rdy              (b_rdy       ),
        .data_out           (data_out    ),
        .data_out_vld       (data_out_vld)
    );

    initial begin
        clk_in = 0;
        forever
        #(CYCLE/2)
        clk_in=~clk_in;
    end

    initial begin
        clk_out = 0;
        forever
        #(CYCLE_W/2)
        clk_out=~clk_out;
    end

    initial begin
        rst_n = 1;
        #2;
        rst_n = 0;
        #(CYCLE);
        rst_n = 1;
    end

    initial begin
        #2;
        data_in_vld = 0;
        data_in     = 0;
        data_in = 0;

        #(20*CYCLE);
        for(i=0;i<81;i=i+1)begin
            data_in_vld = 1;
            
            data_in = i;
            #(CYCLE);
        end  
        
        data_in_vld = 0;
        data_in     = 0;

        #(CYCLE*61);  
    end

    initial begin
        #1;
        b_rdy = 0;

        #(300*CYCLE_W);
        forever begin
            #CYCLE_W;
            b_rdy = $random;
        end
    end
endmodule
