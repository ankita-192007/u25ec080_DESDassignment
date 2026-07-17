`timescale 1ns / 1ps

module tb;
reg clk;
reg reset;
wire [1:0]Q;
wire [7:0]Y;

sequence_counter uut(
.clk(clk),
.reset(reset),
.Q(Q),
.Y(Y)
  );
  
initial begin
$monitor("time=%0t clk=%b reset=%b Y=%b Q=%b",
             $time,clk,reset,Y,Q);
             end
             
  initial begin
 clk = 0;
 forever #5 clk = ~clk;
 end
 initial begin
 reset = 1;
 #10;
 reset = 0;
 #100;
 $finish;
 end
 endmodule
