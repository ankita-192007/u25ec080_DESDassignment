`timescale 1ns / 1ps

module behavioural_4bit_ripplecarryadder_tb;
reg [3:0]A;
reg [3:0]B;
reg Cin;

wire [3:0]Sum;
wire Cout;
integer i, j,k;

behavioural_4bit_ripplecarryadder uut(
.A(A),
.B(B),
.Cin(Cin),
.Sum(Sum),
.Cout(Cout)
);
initial begin 
$dumpfile("test.vcd");
$dumpvars(0,behavioural_4bit_ripplecarryadder_tb);
end

initial
begin

for(i=0;i<16;i=i+1) begin
for(j=0;j<16;j=j+1) begin
for(k=0;k<2;k=k+1) begin
A=i; B=j; Cin=k;
#10;
end 
end
end
$finish; 
end
endmodule


