`timescale 1ns / 1ps

module full_adder(
  input a,b,cin,
  output cout,sum
  );
  assign sum = a^b^cin;
  assign cout = (a&b)|(cin&a)|(cin&b);
  endmodule

module carry_skip_adder #(parameter N=16)(
   input [N-1:0]a,
   input [N-1:0]b,
   input cin,
   output cout , 
   output [N-1:0]sum
    ); 
     
   wire [N-1:0]P;

   wire [(N/4):0]OUTER_C;
   wire [(N/4)-1:0]group_P;
   assign OUTER_C[0]=cin;
 
   genvar i,j;
   generate
   for(i=0;i<(N/4);i=i+1)begin
   
     wire [4:0]INNER_C;
     assign INNER_C[0] = OUTER_C[i];
     
   for(j=0;j<4;j=j+1)begin
   full_adder fa(
   .a(a[(4*i)+j]),
   .b(b[(4*i)+j]),
   .cin(INNER_C[j]),
   .cout(INNER_C[j+1]),
   .sum(sum[(4*i)+j])
    );
   assign P[(4*i)+j] = a[(4*i)+j]^b[(4*i)+j];
   end
    assign group_P[i] = &P[(4*i)+3:4*i];
    assign OUTER_C[i+1] = group_P[i] ? OUTER_C[i] : INNER_C[4];
    end
   endgenerate
   
   assign cout = OUTER_C[N/4];
   
   endmodule
