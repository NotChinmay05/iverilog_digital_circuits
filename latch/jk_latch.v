module jk_latch (
    input  wire J,
    input  wire K,
    input  wire En,     // Enable (latch open)
    output reg  Q
);

    always @(*) begin
        if (En) begin
            case ({J, K})
                2'b00: Q = Q;        // Hold
                2'b01: Q = 0;        // Reset
                2'b10: Q = 1;        // Set
                2'b11: Q = ~Q;       // Toggle
            endcase
        end
    end
endmodule
