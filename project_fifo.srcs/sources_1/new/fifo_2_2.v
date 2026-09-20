`timescale 1ns / 1ps

module fifo_2_2(
        input                       clk     ,
        input                       rst_n   ,
        input               [9:0]   cfg_thd_0,
        input               [9:0]   cfg_thd_1,
        input               [7:0]   din     ,
        input                       din_vld ,
        output              [7:0]   dout    ,
        output      reg             dout_vld
    );

    parameter IDLE = 0;
    parameter READ = 1;

    wire            wr_en       ;
    wire            rd_en       ;
    wire            full        ;
    wire            empty       ;
    wire    [10:0]  data_count  ;

    fifo_8x2048_standard_sync u_fifo (
        .clk            (clk        ),  // input wire clk
        .srst           (~rst_n     ),  // input wire srst
        .din            (din        ),  // input wire [7 : 0] din
        .wr_en          (wr_en      ),  // input wire wr_en
        .rd_en          (rd_en      ),  // input wire rd_en
        .dout           (dout       ),  // output wire [7 : 0] dout
        .full           (full       ),  // output wire full
        .empty          (empty      ),  // output wire empty
        .data_count     (data_count )   // output wire [10 : 0] data_count
    );    

    assign wr_en = din_vld;
    
    reg                 state_c         ;
    reg                 state_n         ;
    
    wire                idle2read_start ;
    wire                read2idle_start ;

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            state_c <= IDLE;
        else
            state_c <= state_n;
    end

    always @(*) begin
        case (state_c)
            IDLE :  begin
                if(idle2read_start)
                    state_n = READ;
                else
                    state_n = state_c;
            end
            READ : begin
                if(read2idle_start)
                    state_n = IDLE;
                else
                    state_n = state_c;
            end
            default: state_n = IDLE;
        endcase
    end

    assign idle2read_start = data_count > cfg_thd_1;
    assign read2idle_start = data_count < cfg_thd_0;

    assign rd_en = state_c && empty==0;

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            dout_vld <= 0;
        else
            dout_vld <= rd_en;
    end

endmodule
