`timescale 1 ns / 1 ps
`include "sr_latch.v"

module sr_latch_tb;

    reg S, R;
    wire Q, Qbar;

    sr_latch uut (.S(S), .R(R), .Q(Q), .Qbar(Qbar));

    initial begin
    $dumpfile("sr_latch.vcd");
    $dumpvars(0, sr_latch_tb);
        S = 0; R = 0; #10;
        S = 1; R = 0; #10;  // Set
        S = 0; R = 0; #10;  // Hold
        S = 0; R = 1; #10;  // Reset
        S = 0; R = 0; #10;  // Hold
        S = 1; R = 1; #10;  // Invalid
        #20 $finish;
    end

endmodule
