module hdl_encoder_4to2_tb;

    reg D0, D1, D2, D3;
    wire Y0, Y1;

    hdl_encoder_4to2 op (
        .D0(D0), .D1(D1), .D2(D2), .D3(D3),
        .Y0(Y0), .Y1(Y1)
    );

    initial begin
        $dumpfile("hdl_encoder_4to2.vcd");
        $dumpvars(0, hdl_encoder_4to2_tb);
            D3=0; D2=0; D1=0; D0=1;  // 00
        #10 D3=0; D2=0; D1=1; D0=0;  // 01
        #10 D3=0; D2=1; D1=0; D0=0;  // 10
        #10 D3=1; D2=0; D1=0; D0=0;  // 11
        #10 $finish;
    end

endmodule
