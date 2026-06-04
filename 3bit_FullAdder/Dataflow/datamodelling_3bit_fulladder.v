`timescale 1ns / 1ps

module datamodelling_3bit_fulladder(
input [2:0]A,
input [2:0]B,
input Cin,
output [2:0]Sum,
output Cout
);
    assign {Cout, Sum} = A+B+Cin;
endmodule
