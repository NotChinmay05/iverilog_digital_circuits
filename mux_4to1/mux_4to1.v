module mux_4to1(
    input I0, I1, I2, I3,
    input S1, S0,
    output Y
);

    wire nS1, nS0;
    wire w0, w1, w2, w3;

    not (nS1, S1);
    not (nS0, S0);

    and (w0, I0, nS1, nS0);
    and (w1, I1, nS1, S0);
    and (w2, I2, S1, nS0);
    and (w3, I3, S1, S0);

    or  (Y, w0, w1, w2, w3);

endmodule
