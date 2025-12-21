module rs_ff_struct (
    input S,
    input R,
    output Q,
    output Qbar
);

    nor (Q, R, Qbar);
    nor (Qbar, S, Q);

endmodule
