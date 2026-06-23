`timescale 1ns / 1ps
 
module CLA(
   input [3:0]a,
   input [3:0]b,
   input cin,
   output cout , 
   output [3:0]sum
    ); 
     
 wire [3:0]P;
 wire [3:0]G;
 wire [4:0]C;
 
 assign C[0]=cin;

genvar i;
generate
for(i=0;i<4;i=i+1)begin
assign P[i] = a[i]^b[i];
assign G[i] = a[i]&b[i];
assign sum[i] = P[i]^C[i];

end
endgenerate

assign C[1] = G[0]|(P[0]&C[0]);
assign C[2] = G[1] | (P[1]&G[0]) | (P[1]&P[0]&C[0]);
assign C[3] = G[2] | (P[2]&G[1]) | (P[2]&P[1]&G[0]) | (P[2]&P[1]&P[0]&C[0]);
assign C[4] = G[3]|(P[3]&G[2]) | (P[3]&P[2]&G[1]) | (P[3]&P[2]&P[1]&G[0]) | (P[3]&P[2]&P[1]&P[0]&C[0]);
assign cout = C[4];
endmodule
