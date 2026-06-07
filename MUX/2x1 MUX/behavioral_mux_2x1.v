`timescale 1ns / 1ps

module behavioral_mux_2x1(
 input a, b, s,
 output reg y);
always @(*)begin
if(s==0)begin
y=a;
end else begin
y=b; 
end
end
endmodule
