`timescale 1 ns / 1 ps
`include "jk_ff.v"

module jk_ff_tb;

    reg J, K, clk;
    wire Q;

    jk_ff uut (.J(J), .K(K), .clk(clk), .Q(Q));

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
    $dumpfile("jk_ff.vcd");
    $dumpvars(0, jk_ff_tb);
        J=0; K=0; #10;
        J=1; K=0; #10;  // Set
        J=0; K=1; #10;  // Reset
        J=1; K=1; #20;  // Toggle
        #20 $finish;
    end

endmodule
