`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2026 09:15:25
// Design Name: 
// Module Name: continouous_2bit_comparator
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


