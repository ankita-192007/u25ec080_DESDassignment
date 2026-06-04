`timescale 1ns / 1ps

module behavioural_4bit_ripplecarryadder(
input [3:0]A,
input [3:0]B,
input Cin,
output reg [3:0]Sum,
output reg Cout
);
always @(*)begin
{Cout, Sum} = A + B + Cin;
end
endmodule


