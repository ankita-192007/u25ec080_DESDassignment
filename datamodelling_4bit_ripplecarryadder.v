`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2026 17:42:14
// Design Name: 
// Module Name: datamodelling_4bit_ripplecarryadder
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
module datamodelling_4bit_ripplecarryadder(
input [3:0]A,
input [3:0]B,
input Cin,
output [3:0]Sum,
output Cout
);
    assign {Cout, Sum} = A+B+Cin;
endmodule

