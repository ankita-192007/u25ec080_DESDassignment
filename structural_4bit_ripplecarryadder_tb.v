`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2026 17:19:28
// Design Name: 
// Module Name: structural_4bit_ripplecarryadder_tb
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

module structural_4bit_ripplecarryadder_tb ;

reg [3:0]A;
reg [3:0]B;
reg Cin;

wire [3:0]Sum;
wire Cout;

integer i, j,k;

structural_4bit_ripplecarryadder uut(
.A(A),
.B(B),
.Cin(Cin),
.Sum(Sum),
.Cout(Cout)
);
initial begin 
$dumpfile("test.vcd");
$dumpvars(0,structural_4bit_ripplecarryadder_tb);
end

initial
begin

for(i=0;i<16;i=i+1) begin
for(j=0;j<16;j=j+1) begin
for(k=0;k<2;k=k+1) begin
A=i; B=j; Cin=k;
#10;
end 
end
end
$finish;
end
endmodule

