`timescale 1ns / 1ps



module shift_register(
input clk,
input reset,
input control,
output reg [3:0]Q
    );
    
always @(posedge clk)
begin
if(reset)
Q <= 4'b0000;
else if(control == 0)
Q <= {1'b0 , Q[2:0]}; // right shift
else
Q <= {Q[2:0] , 1'b0}; // left shift
end
endmodule
