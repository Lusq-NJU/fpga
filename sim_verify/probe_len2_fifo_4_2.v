`timescale 1ns / 1ps
// Capacity probe for fifo_4_2.  One packet per case, DUT reset between cases so a lost
// eop cannot leak into the next measurement.  Words are compared one by one against the
// stimulus, so each case reports exactly how many of its words came out, where the first
// one went missing, and whether the eop word survived.  Not a pass/fail bench.
module probe_len2_fifo_4_2;
    reg  clk=0, rst_n=1, din_vld=0, din_sop=0, din_eop=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_4_2 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    integer exp_len=0; reg [15:0] exp_base=0;
    integer o_ndata=0, o_bad=0;
    reg o_hdr=0, o_cs=0;
    reg [15:0] o_hdrval=0, o_csval=0;

    always @(posedge clk) if (rst_n && dout_vld) begin
        if (dout_sop) begin
            if (o_hdr) $display("     !! header %h arrived although the previous packet never ended (%0d data beats so far)", dout, o_ndata);
            o_hdr=1; o_cs=0; o_ndata=0; o_bad=0; o_hdrval=dout;
            $display("     header=%h (sent len=%0d)", dout, exp_len);
        end else if (!o_cs) begin
            o_cs=1; o_csval=dout;
            $display("     checksum=%h (sent len=%0d)", dout, exp_len);
        end else begin
            if (dout !== (exp_base + o_ndata)) begin
                if (o_bad==0)
                    $display("     first bad data word at index %0d: got %h want %h", o_ndata, dout, exp_base+o_ndata);
                o_bad=o_bad+1;
            end
            o_ndata=o_ndata+1;
            if (dout_eop) begin
                $display("     -> eop after %0d data beats, %0d of them wrong (sent len=%0d)", o_ndata, o_bad, exp_len);
                o_hdr=0;
            end
        end
    end

    task do_reset;
        begin
            din_vld=0; din_sop=0; din_eop=0;
            rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; #(CYCLE*2);
        end
    endtask

    task send_pkt(input integer len, input [15:0] base, input integer gap);
        integer k;
        begin
            exp_len=len; exp_base=base;
            for (k=0;k<len;k=k+1) begin
                din = base + k;
                din_sop = (k==0); din_eop = (k==len-1); din_vld = 1;
                @(posedge clk); #1;
            end
            din_vld=0; din_sop=0; din_eop=0;
            #(CYCLE*gap);
        end
    endtask

    integer L;
    initial begin
        #(CYCLE*5);
        $display("probe_len2 fifo_4_2: data-FIFO capacity, one reset per case");
        for (L=125;L<=129;L=L+1) begin
            do_reset;
            $display("  === case: single packet of %0d words, isolated", L);
            send_pkt(L, 16'h1000 + L, 400);
        end
        do_reset;
        $display("  === case: 200 words (400 bytes) isolated");
        send_pkt(200, 16'h8000, 400);
        do_reset;
        $display("  === case: 258 words, then 4-word packet 20 cycles later (no reset)");
        send_pkt(258, 16'h9000, 20);
        send_pkt(4, 16'hA000, 300);
        #(CYCLE*400);
        $display("probe_len2 fifo_4_2: done");
        $finish;
    end
endmodule
