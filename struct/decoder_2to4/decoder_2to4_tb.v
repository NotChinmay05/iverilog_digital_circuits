module decoder_2to4_tb;

    reg D0, D1;
    wire Y0, Y1, Y2, Y3;

    decoder_2to4 dut (
        .D0(D0), .D1(D1),
        .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3)
    );

    initial begin
        $dumpfile("decoder_2to4.vcd");
        $dumpvars(0, decoder_2to4_tb);

        D0 = 0; D1 = 0; #10;
        D0 = 0; D1 = 1; #10;
        D0 = 1; D1 = 0; #10;
        D0 = 1; D1 = 1; #10;

        $finish;
    end

endmodule
