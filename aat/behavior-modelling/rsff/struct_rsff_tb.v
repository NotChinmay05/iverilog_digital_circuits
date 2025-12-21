module struct_rsff_tb;

    reg S, R;
    wire Q, Qbar;

    rs_ff_struct DUT (.S(S), .R(R),
                      .Q(Q), .Qbar(Qbar)
                    );

    initial begin
        $dumpfile("struct_rsff.vcd");
        $dumpvars(0, struct_rsff_tb);
        S = 0; R = 0;      // Hold
        #10 S = 1; R = 0;  // Set
        #10 S = 0; R = 0;  // Hold
        #10 S = 0; R = 1;  // Reset
        #10 S = 0; R = 0;  // Hold
        #10 $finish;
    end

endmodule
