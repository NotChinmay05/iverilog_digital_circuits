`timescale 1 ns / 1 ps
`include "jk_latch.v"

module jk_latch_tb;

    reg J, K, En;
    wire Q;

    jk_latch uut (.J(J), .K(K), .En(En), .Q(Q));

    initial begin
    $dumpfile("jk_latch.vcd");
    $dumpvars(0, jk_latch_tb);
        En = 1;

        J=0; K=0; #10;
        J=1; K=0; #10;  // Set
        J=0; K=1; #10;  // Reset
        J=1; K=1; #10;  // Toggle
        J=0; K=0; #10;

        En = 0;         // Latch closed
        J=1; K=1; #10;  // Should NOT toggle
        
        #20 $finish;
    end

endmodule
