`timescale 1ns / 1ps

module xor_structural(input a, input b, output y);
wire n1, n2, n3;
nand g1(n1,a,b);
nand g2(n2,a,n1);
nand g3(n3,b,n1);
nand g4(y,n2,n3);

endmodule
