module jk_ff_struct (
    input J,
    input K,
    input clk,
    output reg Q,
    output reg Qbar
);

    wire S, R;

    initial begin
        Q = 3'b000;
        Qbar = 3'b111;
    end

    // Logic for S and R
    and (S, J, clk, Qbar);
    and (R, K, clk, Q);

    // Cross-coupled NOR latch
    nor (Q, R, Qbar);
    nor (Qbar, S, Q);

endmodule
