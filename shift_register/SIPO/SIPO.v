`timescale 1ns / 1ps

module SIPO(
input Din,
input clk,
input reset,
output reg [3:0]Q
    );

always @(posedge clk)begin
if(reset)
Q <= 4'b0000;
else
Q <= {Din , Q[3:1]};  //right shift
end

endmodule
