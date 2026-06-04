`timescale 1ns / 1ps

module continouous_2bit_comparator(
    input [1:0] A,
    input [1:0] B,
    output Greater,
    output Equal,
    output Less
);

assign Greater = (A > B);
assign Equal = (A == B);
assign Less = (A < B);

endmodule


