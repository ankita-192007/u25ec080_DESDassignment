`timescale 1ns / 1ps

module tb;
reg clk;
reg reset;
reg Din;
wire Cout;
wire [3:0]Q;

SISO uut(
.clk(clk),
.reset(reset),
.Din(Din),
.Cout(Cout),
.Q(Q)
);

initial begin
$monitor("time=%0t clk=%b reset=%b Din=%b Cout=%b Q=%b",
             $time,clk, reset,Din,Cout,Q);
             end
             
 initial begin
 clk = 0;
 forever #5 clk = ~clk;
 end
 initial begin
 reset = 1;
 Din = 0;
 #10;
 reset = 0;

 Din = 1; #10;
 Din = 1; #10;
 Din = 1; #10;
 Din = 1; #10;
 
 
 Din = 0;
 
 #40;
 $finish;
 end
endmodule