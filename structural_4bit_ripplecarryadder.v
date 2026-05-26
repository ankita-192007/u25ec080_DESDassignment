`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2026 17:14:07
// Design Name: 
// Module Name: structural_4bit_ripplecarryadder
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

module adder(input A, input B, input Cin, 
output Sum, output Cout);
wire w1, w2, w3;
xor(w1,A,B);
xor(Sum,w1,Cin);
and(w2,A,B);
and(w3,w1,Cin);
or(Cout,w2,w3);
endmodule

module structural_4bit_ripplecarryadder(
input [3:0]A,
input [3:0]B,
input Cin,
output [3:0]Sum,
output Cout
);

wire c1,c2,c3;

adder FA0(
.A(A[0]),
.B(B[0]),
.Cin(Cin),
.Sum(Sum[0]),
.Cout(c1)
);

adder FA1(
.A(A[1]),
.B(B[1]),
.Cin(c1),
.Sum(Sum[1]),
.Cout(c2)
);

adder FA2(
.A(A[2]),
.B(B[2]),
.Cin(c2),
.Sum(Sum[2]),
.Cout(c3)
);
adder FA3(
.A(A[3]),
.B(B[3]),
.Cin(c3),
.Sum(Sum[3]),
.Cout(Cout)
);

endmodule


