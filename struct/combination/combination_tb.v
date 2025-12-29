module comb_tb;

    reg A, B, C, D;
    wire Y_df, Y_struct;

    // Instantiate structural model
    comb_struct U2 (
        .A(A), .B(B), .C(C), .D(D),
        .Y(Y_struct)
    );

    initial begin
        $dumpfile("comb.vcd");
        $dumpvars(0, comb_tb);

        // Apply valid input combinations
        A = 0; B = 0; C = 0; D = 0;
        #10 A = 1; B = 1; C = 0; D = 0;
        #10 A = 0; B = 0; C = 1; D = 1;
        #10 A = 1; B = 1; C = 1; D = 1;
        #10 A = 1; B = 0; C = 1; D = 0;
        #10 $finish;
    end
endmodule
