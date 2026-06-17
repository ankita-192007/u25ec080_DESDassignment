`timescale 1ns / 1ps

module full_adder(
  input a,b,cin,
  output cout,sum
  );
  assign sum = a^b^cin;
  assign cout = (a&b)|(cin&a)|(cin&b);
  endmodule

module Nx1_RippleCarryAdder #(parameter N = 5)(
   input [N-1:0]a,
   input [N-1:0]b,
   input cin,
   output cout,
   output [N-1:0]sum
    );
      
  wire [N:0]c;
  assign c[0]=cin;
  assign cout=c[N];
 
 genvar i;
 generate
 for(i=0;i<N;i=i+1)begin
 full_adder FA(
 .a(a[i]),
 .b(b[i]),
 .cin(c[i]),
 .cout(c[i+1]),
 .sum(sum[i])
    );
  end
  endgenerate
  endmodule
  
 