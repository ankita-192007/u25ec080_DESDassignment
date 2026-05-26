`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2026 16:25:11
// Design Name: 
// Module Name: behavioural_3bit_fulladder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
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


