`timescale 1ns / 1ps

module fulladder(input A, input B, input Cin, 
output Sum, output Cout);
wire w1, w2, w3;
xor(w1,A,B);
xor(Sum,w1,Cin);
and(w2,A,B);
and(w3,w1,Cin);
or(Cout,w2,w3);
endmodule


module structural_3bit_fulladder(
input [2:0]A,
input [2:0]B,
input Cin,
output [2:0]Sum,
output Cout
);

wire c1,c2;

fulladder FA0(
.A(A[0]),
.B(B[0]),
.Cin(Cin),
.Sum(Sum[0]),
.Cout(c1)
);

fulladder FA1(
.A(A[1]),
.B(B[1]),
.Cin(c1),
.Sum(Sum[1]),
.Cout(c2)
);

fulladder FA2(
.A(A[2]),
.B(B[2]),
.Cin(c2),
.Sum(Sum[2]),
.Cout(Cout)
);

endmodule


