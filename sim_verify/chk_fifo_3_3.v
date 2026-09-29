`timescale 1ns / 1ps
// Self-checking bench for fifo_3_3.
// Spec (confirmed with the designer):
//   * a packet whose eop beat has din_err==0 is forwarded whole - every word, sop on the
//     first one, eop on the last one;
//   * a packet whose eop beat has din_err==1 is dropped ENTIRELY: not a single beat may
//     appear for it, not even a partial or repeated one;
//   * din_err on any other beat is ignored (the flag is only sampled at eop);
//   * between packets dout_vld must stay low, so any beat the checker sees that has no
//     matching expected word is an error.
module chk_fifo_3_3;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0, din_err=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_3_3 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),.din_err(din_err),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    reg [15:0] eq [0:8191]; reg es [0:8191]; reg ee [0:8191];
    integer expn=0, rdi=0, beats=0, errors=0;

    task E(input [15:0] d, input s, input e);
        begin eq[expn]=d; es[expn]=s; ee[expn]=e; expn=expn+1; end
    endtask

    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1;
            if (errors<=8) $display("ERROR t=%0t: extra beat data=%h sop=%b eop=%b - no packet word belongs here",
                                    $time, dout, dout_sop, dout_eop);
        end else begin
            if (dout     !== eq[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: beat #%0d data got %h expected %h", $time, beats, dout, eq[rdi]); end
            if (dout_sop !== es[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: beat #%0d sop got %b expected %b", $time, beats, dout_sop, es[rdi]); end
            if (dout_eop !== ee[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: beat #%0d eop got %b expected %b", $time, beats, dout_eop, ee[rdi]); end
        end
        rdi=rdi+1;
    end

    // One packet of 'len' words (base, base+1, ...). Beat 'err_pos' carries din_err=1
    // (-1 = no beat does). 'gap' idle cycles follow the packet (0 = the next packet abuts).
    task send_pkt(input integer len, input [15:0] base, input integer err_pos, input integer gap);
        integer k;
        begin
            for (k=0;k<len;k=k+1) begin
                din = base + k;
                din_sop = (k==0); din_eop = (k==len-1); din_err = (k==err_pos); din_vld = 1;
                if (err_pos != len-1) E(din, din_sop, din_eop);   // forwarded unless err is on eop
                @(posedge clk); #1;
            end
            if (gap>0) begin
                din_vld=0; din_sop=0; din_eop=0; din_err=0;
                #(CYCLE*gap);
            end
        end
    endtask

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #(CYCLE*10);
        $display("chk fifo_3_3: err-free packets whole, eop-err packets dropped, non-eop err ignored");
        send_pkt( 3, 16'h1000, -1, 40);   // good
        send_pkt( 3, 16'h2000,  2, 40);   // err on eop          -> dropped
        send_pkt( 2, 16'h3000, -1, 40);   // good
        send_pkt( 3, 16'h4000,  1, 40);   // err on a middle beat -> still forwarded
        send_pkt( 1, 16'h5000, -1, 40);   // single-word packet, good
        send_pkt( 1, 16'h6000,  0, 40);   // single word IS the eop, err -> dropped
        send_pkt( 5, 16'h7000, -1,  0);   // three abutting packets: good
        send_pkt( 5, 16'h8000,  4,  0);   //                        dropped
        send_pkt( 4, 16'h9000, -1, 40);   //                        good
        send_pkt( 4, 16'hA000,  3,  0);   // two abutting packets:  dropped
        send_pkt( 4, 16'hB000, -1, 40);   //                        good
        send_pkt(20, 16'hC000, -1, 40);   // longer good packet
        send_pkt(20, 16'hD000, 19, 40);   // longer dropped packet
        send_pkt( 3, 16'hE000, -1, 40);   // good, must still be intact after the drop
        #(CYCLE*300);
        $display("--------------------------------------------------");
        $display("chk fifo_3_3 : expected beats = %0d, observed beats = %0d", expn, beats);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0 && expn==beats)
            $display("RESULT chk fifo_3_3: PASS (err-free packets whole, eop-err packets dropped)");
        else
            $display("RESULT chk fifo_3_3: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
