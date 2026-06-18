`timescale 1ns / 1ps

  module full_adder(
  input a,b,cin,
  output cout,sum
  );
  assign sum = a^b^cin;
  assign cout = (a&b)|(cin&a)|(cin&b);
  endmodule

module Ripple_Carry_Adder #(parameter N=4)(
   input [N-1:0]a,
   input [N-1:0]b,
   input cin,
   output cout , 
   output [N-1:0]sum
    ); 
   
   wire [N:0]C;
   assign C[0]=cin;
 
   genvar i;
   generate
   for(i=0;i<N;i=i+1)begin
   full_adder fa(
   .a(a[i]),
   .b(b[i]),
   .cin(C[i]),
   .cout(C[i+1]),
   .sum(sum[i])
    );
   end
   endgenerate
   assign cout = C[N];
  endmodule
  
  module carry_select_adder(
  input [15:0]A,
  input [15:0]B,
  input Cin,
  output cout,
  output [15:0]sum
     );
     
 wire c1, c2, c3, c4;
 
 Ripple_Carry_Adder RCA0(
   .a(A[3:0]),
   .b(B[3:0]),
   .cin(Cin),
   .sum(sum[3:0]),
   .cout(c1)
     );
     
 wire cout0;
 wire [3:0]sum0;
 
 Ripple_Carry_Adder RCA1(
   .a(A[7:4]),
   .b(B[7:4]),
   .cin(1'b0),
   .sum(sum0),
   .cout(cout0)
     );
     
  wire [3:0]sum1;
  wire cout1;
 
 Ripple_Carry_Adder RCA2(
   .a(A[7:4]),
   .b(B[7:4]),
   .cin(1'b1),
   .sum(sum1),
   .cout(cout1)
     );
     
    assign sum[7:4] = (c1)?sum1:sum0;
    assign c2 = (c1)?cout1:cout0;
     
  wire [3:0]sum2;
  wire cout2;
 
 Ripple_Carry_Adder RCA3(
   .a(A[11:8]),
   .b(B[11:8]),
   .cin(1'b0),
   .sum(sum2),
   .cout(cout2)
     );
   
  wire [3:0]sum3;
  wire cout3;
 
 Ripple_Carry_Adder RCA4(
   .a(A[11:8]),
   .b(B[11:8]),
   .cin(1'b1),
   .sum(sum3),
   .cout(cout3)
     );
 
  assign sum[11:8] = (c2)?sum3:sum2;
    assign c3 = (c2)?cout3:cout2;
     
 wire [3:0]sum4;
  wire cout4;
 
 Ripple_Carry_Adder RCA5(
   .a(A[15:12]),
   .b(B[15:12]),
   .cin(1'b0),
   .sum(sum4),
   .cout(cout4)
     );

 wire [3:0]sum5;
  wire cout5;
 
 Ripple_Carry_Adder RCA6(
   .a(A[15:12]),
   .b(B[15:12]),
   .cin(1'b1),
   .sum(sum5),
   .cout(cout5)
     );
    assign sum[15:12] = (c3)?sum5:sum4;
    assign c4 = (c3)?cout5:cout4;
       
  assign cout = c4;
  endmodule