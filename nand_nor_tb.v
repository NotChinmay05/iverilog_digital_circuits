module nand_nor_tb;

    reg A, B;

    wire Y_nand_struct;

    wire Y_nor_struct;

    nand_struct U2 (.A(A), .B(B), .Y(Y_nand_struct));

    nor_struct U4 (.A(A), .B(B), .Y(Y_nor_struct));

    initial begin
        $dumpfile("nand_nor.vcd");
        $dumpvars(0, nand_nor_tb);

        // Apply all input combinations
        A = 0; B = 0;
        #10 A = 0; B = 1;
        #10 A = 1; B = 0;
        #10 A = 1; B = 1;

        #10 $finish;
    end

endmodule
