`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2026 20:04:26
// Design Name: 
// Module Name: xor_behavioral_tb
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

module xor_behavioral_tb;

reg a, b;      
wire y;         


xor_behavioral uut (
    .a(a),
    .b(b),
    .y(y)
);
initial begin
$dumpfile("y.vcd");
$dumpvars;
end

initial 
begin
    a = 0; b = 0;
    #10;

    a = 0; b = 1; 
    #10;

    a = 1; b = 0; 
    #10;
    
    a = 1; b = 1; 
    #10;
    
 $finish;
end
endmodule

