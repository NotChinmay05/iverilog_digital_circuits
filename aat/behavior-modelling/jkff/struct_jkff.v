module jk_ff_struct (
    input J,
    input K,
    input clk,
    output Q,
    output Qbar
);

    wire S, R;

    // Logic for S and R
    and (S, J, clk, Qbar);
    and (R, K, clk, Q);

    // Cross-coupled NOR latch
    nor (Q, R, Qbar);
    nor (Qbar, S, Q);

endmodule
