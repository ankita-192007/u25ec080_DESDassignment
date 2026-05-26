`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2026 16:37:32
// Design Name: 
// Module Name: datamodelling_3bit_fulladder
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


module datamodelling_3bit_fulladder(
input [2:0]A,
input [2:0]B,
input Cin,
output [2:0]Sum,
output Cout
);
    assign {Cout, Sum} = A+B+Cin;
endmodule
