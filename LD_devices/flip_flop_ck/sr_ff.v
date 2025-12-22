module sr_ff (
    input  wire S,
    input  wire R,
    input  wire clk,
    output reg  Q
);

    always @(posedge clk) begin
        case ({S, R})
            2'b00: Q <= Q;    // Hold
            2'b01: Q <= 0;    // Reset
            2'b10: Q <= 1;    // Set
            2'b11: Q <= 1'bx; // Invalid condition
        endcase
    end
endmodule
