`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2026 09:05:09
// Design Name: 
// Module Name: xor_structural_tb
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


module xor_structural_tb;
reg a;
reg b;
wire y;

xor_structural uut(
.a(a),
.b(b),
.y(y) 
);
initial begin
$dumpfile("y.vcd");
$dumpvars;
end

initial begin
a=0; b=0;
#10;
a=0; b=1;
#10;
a=1; b=0;
#10;
a=1; b=1;
#10;
end

endmodule





