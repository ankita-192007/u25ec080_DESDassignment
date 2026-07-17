`timescale 1ns / 1ps

module shift_register_tb;
reg clk;
reg reset;
reg control;
wire [3:0]Q;

shift_register uut(
.clk(clk),
.reset(reset),
.control(control),
.Q(Q)
    );
    
 initial begin
 clk = 0;
 forever #5 clk = ~clk;
 end
 
 initial begin
 reset = 1;
 control = 0;  #10;
 reset = 0;
 control = 0;  #10;
 control = 1;  #10;
 $finish;
 end
endmodule
