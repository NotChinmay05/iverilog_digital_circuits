module beh_jkff_tb;

    reg J, K, clk;
    wire Q, Qbar;

    jk_ff_beh op (.J(J), .K(K), .clk(clk),
                      .Q(Q), .Qbar(Qbar)
    );

    // Clock generation
    always #5 clk = ~clk;


    initial begin
        
    end

    initial begin
        $dumpfile("beh_jkff.vcd");
        $dumpvars(0, beh_jkff_tb);

        clk = 0;
        J = 0; K = 0;      // Hold
        #10 J = 0; K = 1;  // Reset
        #10 J = 1; K = 0;  // Set
        #10 J = 1; K = 1;  // Toggle
        #20 $finish;
    end

endmodule
