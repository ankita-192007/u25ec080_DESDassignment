`timescale 1ns / 1ps

module tb;
reg clk;
reg reset;
reg [3:0]D;
wire [3:0]Q;

PIPO uut(
.clk(clk),
.reset(reset),
.D(D),
.Q(Q)
);

initial begin
$monitor("time=%0t clk=%b reset=%b D=%b Q=%b",
             $time,clk, reset,D,Q);
             end
             
 initial begin
 clk = 0;
 forever #5 clk = ~clk;
 end
 initial begin
 reset = 1;
 D = 4'b0000;
 #10;
 reset = 0;
 #5;
D = 4'b1101;
 #10;
 $finish;
 end
endmodule