`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2026 17:25:49
// Design Name: 
// Module Name: behavioural_4bit_ripplecarryadder
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


