`timescale 1ns / 1ps

module tb;
reg clk;
reg M;
reg reset;
wire [2:0]Q;

synchronous_updown_counter uut(
.clk(clk),
.M(M),
.reset(reset),
.Q(Q)
    );
    
initial begin
$monitor("time=%0t clk=%b M=%b reset=%b Q=%b",
             $time,clk,M,reset,Q);
             end
             
 initial begin
 clk = 0;
 forever #5 clk = ~clk;
 end
 initial begin
 reset = 1;
 M=0;
 #10;
 reset = 0;
 #50;
 M = 1;
 
 #80;
 $finish;
 end
endmodule


