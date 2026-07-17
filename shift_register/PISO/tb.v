`timescale 1ns / 1ps

module tb;
reg clk;
reg reset;
reg [3:0]B;
reg M;
wire [3:0]Q;
wire Cout;

PISO uut(
.clk(clk),
.reset(reset),
.B(B),
.M(M),
.Q(Q),
.Cout(Cout)
);

initial begin
$monitor("time=%0t clk=%b reset=%b B=%b M=%b Q=%b Cout=%b",
             $time,clk,reset,B,M,Q,Cout);
             end

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
reset = 1;
M = 0;
B = 4'b1101;

#10;
reset = 0;
M=0;
#10;
M=1;
#40;
$finish;
end
endmodule
