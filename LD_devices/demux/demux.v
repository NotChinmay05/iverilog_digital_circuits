module demux1to2 (
    input  wire sel,
    input  wire [3:0] in,
    output wire [3:0] out0,
    output wire [3:0] out1
);
    assign out0 = sel ? 4'b0000 : in;
    assign out1 = sel ? in : 4'b0000;
endmodule
