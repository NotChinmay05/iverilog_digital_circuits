module beh_rsff_tb;

    reg S, R;
    wire Q, Qbar;

    rs_ff_beh op (.S(S), .R(R),
                  .Q(Q), .Qbar(Qbar)
                );

    initial begin
        $dumpfile("beh_rsff.vcd");
        $dumpvars(0, beh_rsff_tb);

        S = 0; R = 0;      // Hold
        #10 S = 1; R = 0;  // Set
        #10 S = 0; R = 0;  // Hold
        #10 S = 0; R = 1;  // Reset
        #10 S = 0; R = 0;  // Hold
        #10 $finish;
    end

endmodule
