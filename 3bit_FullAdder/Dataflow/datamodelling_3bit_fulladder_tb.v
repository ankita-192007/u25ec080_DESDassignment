`timescale 1ns / 1ps

module datamodelling_3bit_fulladder_tb;
reg [2:0]A;
reg [2:0]B;
reg Cin;

wire [2:0]Sum;
wire Cout;
integer i, j,k;

datamodelling_3bit_fulladder uut(
.A(A),
.B(B),
.Cin(Cin),
.Sum(Sum),
.Cout(Cout)
);
initial begin 
$dumpfile("test.vcd");
$dumpvars(0,datamodelling_3bit_fulladder_tb);
end

initial
begin

for(i=0;i<8;i=i+1) begin
for(j=0;j<8;j=j+1) begin
for(k=0;k<2;k=k+1) begin
A=i; B=j; Cin=k;
#10;
end 
end
end
$finish; 
end
endmodule

