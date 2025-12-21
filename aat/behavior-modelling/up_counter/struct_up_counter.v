module up_counter_3bit_struct (
    input clk,
    output [2:0] Q
);

    wire q0, q1, q2;

    // LSB toggles every clock
    jk_ff FF0 (1'b1, 1'b1, clk, q0);

    // Next bits toggle based on previous outputs
    jk_ff FF1 (q0, q0, clk, q1);
    jk_ff FF2 (q0 & q1, q0 & q1, clk, q2);

    assign Q = {q2, q1, q0};

endmodule
