`timescale 1ns / 1ps

module tb;
reg clk;
reg reset;
wire [3:0]Q;

synchronous_ring_counter uut(
.reset(reset),
.clk(clk),
.Q(Q)
    );
    
 initial begin
 $monitor("Time=%0t reset=%b clk=%b Q=%b",
                     $time, reset, clk, Q);
                     end
 initial begin
 clk = 0;
 forever #5 clk = ~clk;
 end
 
 initial begin
 reset = 1;
 #10;
 reset = 0;
 #60;
 $finish;
 end
endmodule
