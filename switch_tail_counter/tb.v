`timescale 1ns / 1ps

module tb;
reg clk;
reg clr;
wire [3:0]Q;

switch_tail_counter uut(
.clk(clk),
.clr(clr),
.Q(Q)
    );
    
initial begin
$monitor("time=%0t clk=%b clr=%b Q=%b",
             $time,clk,clr,Q);
             end
             
 initial begin
 clk = 0;
 forever #5 clk = ~clk;
 end
 initial begin
 clr = 0;
 #10;
 clr = 1;
 #100;
 $finish;
 end
endmodule
