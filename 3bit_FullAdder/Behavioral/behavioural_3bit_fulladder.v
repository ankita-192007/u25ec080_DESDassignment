`timescale 1ns / 1ps

module behavioural_3bit_fulladder(
input [2:0]A,
input [2:0]B,
input Cin,
output reg [2:0]Sum,
output reg Cout
);
always @(*)begin
{Cout, Sum} = A + B + Cin;
end
endmodule


