module hdl_mux_4to1_tb;

    reg I0, I1, I2, I3;
    reg S1, S0;
    wire Y;

    hdl_mux_4to1 op (
        .I0(I0), .I1(I1), .I2(I2), .I3(I3),
        .S1(S1), .S0(S0),
        .Y(Y)
    );

    initial begin
        $dumpfile("hdl_mux_4to1.vcd");
        $dumpvars(0, hdl_mux_4to1_tb);
        I0 = 0; I1 = 1; I2 = 0; I3 = 1;

        S1 = 0; S0 = 0;  // Select I0
        #10 S1 = 0; S0 = 1;  // Select I1
        #10 S1 = 1; S0 = 0;  // Select I2
        #10 S1 = 1; S0 = 1;  // Select I3

        #10 $finish;
    end

endmodule
