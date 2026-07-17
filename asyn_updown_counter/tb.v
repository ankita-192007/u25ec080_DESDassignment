`timescale 1ns / 1ps

module tb;
reg clk;
reg reset;
reg M;
wire [2:0]Q;

asyn_updown_counter uut(
.clk(clk),
.reset(reset),
.M(M),
.Q(Q)
);

initial begin
$monitor("time=%0t clk=%b reset=%b M=%b Q=%b",
             $time,clk, reset,M,Q);
             end
             
 initial begin
 clk = 0;
 forever #5 clk = ~clk;
 end
 initial begin
 reset = 1;
 M = 0;
 #50;
 
 reset = 0;
 
 #10;  M = 1;
 #50;
 $finish;
 end
endmodule