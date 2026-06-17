`timescale 1ns / 1ps

module Nx1_RippleCarryAdder_tb;
parameter N=5;
reg [N-1:0]a;
reg [N-1:0]b;
reg cin;

wire [N-1:0]sum;
wire cout;
integer i, j,k;

Nx1_RippleCarryAdder uut(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)
);

initial
begin

for(i=0;i<(1<<N);i=i+1) begin
for(j=0;j<(1<<N);j=j+1) begin
for(k=0;k<2;k=k+1) begin
a=i; b=j; cin=k;
#10;
end 
end
end
$finish; 
end
endmodule


