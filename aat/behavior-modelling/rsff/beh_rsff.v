module rs_ff_beh (
    input S,
    input R,
    output reg Q,
    output reg Qbar
);

    always @ (S or R) begin
        if (S == 1 && R == 0) begin
            Q    = 1;
            Qbar = 0;
        end
        else if (S == 0 && R == 1) begin
            Q    = 0;
            Qbar = 1;
        end
        else if (S == 0 && R == 0) begin
            Q    = Q;      // Hold state
            Qbar = Qbar;
        end
        // S = 1, R = 1 is invalid: not modeled
    end

endmodule
