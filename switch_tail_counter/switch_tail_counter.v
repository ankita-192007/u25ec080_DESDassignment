`timescale 1ns / 1ps

module switch_tail_counter(
input clk,
input clr,
output reg [3:0]Q
    );
    
always @(negedge clk) begin
if(clr==0)
Q <= 4'b0000;
else
Q <= {Q[2:0] , ~Q[3]};
end
endmodule
