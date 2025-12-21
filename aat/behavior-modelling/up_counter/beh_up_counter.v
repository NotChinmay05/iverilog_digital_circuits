module up_counter_3bit_beh (
    input clk,
    input reset,
    output reg [2:0] Q
);

    initial begin
        Q = 3'b000;
    end

    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 3'b000;
        else
            Q <= Q + 1'b1;
    end

endmodule
