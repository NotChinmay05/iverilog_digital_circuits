`timescale 1 ns / 1 ps
`include "sr_ff.v"
module sr_ff_tb;

    reg S, R, clk;
    wire Q;

    sr_ff uut (.S(S), .R(R), .clk(clk), .Q(Q));

    initial clk = 0;
    always #5 clk = ~clk;  // Clock

    initial begin
    $dumpfile("sr_ff.vcd");
    $dumpvars(0, sr_ff_tb);
        S=0; R=0; #10;
        S=1; R=0; #10;
        S=0; R=1; #10;
        S=0; R=0; #10;
        S=1; R=1; #10;   // Invalid
        #20 $finish;
    end

endmodule
