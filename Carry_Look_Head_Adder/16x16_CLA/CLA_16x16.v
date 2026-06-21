`timescale 1ns / 1ps
module CLA_4x4(
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

module CLA_16x16(
input [15:0]a,
input [15:0]b,
input cin,
output cout,
output [15:0]sum
    );
    
 wire c4,c8,c12;
    
CLA_4x4 cla0(
.a(a[3:0]),
.b(b[3:0]),
.cin(cin),
.cout(c4),
.sum(sum[3:0])
   );

CLA_4x4 cla1(
.a(a[7:4]),
.b(b[7:4]),
.cin(c4),
.cout(c8),
.sum(sum[7:4])
   );  

CLA_4x4 cla2(
.a(a[11:8]),
.b(b[11:8]),
.cin(c8),
.cout(c12),
.sum(sum[11:8])
   );
   
 CLA_4x4 cla3(
.a(a[15:12]),
.b(b[15:12]),
.cin(c12),
.cout(cout),
.sum(sum[15:12])
   );
   
   endmodule
