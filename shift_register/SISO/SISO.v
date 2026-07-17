`timescale 1ns / 1ps

module D_flipflop(
input clk,
input reset,
input D,
output reg Q
);

always @(posedge clk)begin
if(reset)
Q <= 1'b0;
else 
Q <= D;
end 
endmodule

module SISO(
input clk,
input reset,
input Din,
output Cout,
output [3:0]Q
);

D_flipfliop ff0(
.clk(clk),
.reset(reset),
.D(Din),
.Q(Q[3])
);

D_flipfliop ff1(
.clk(clk),
.reset(reset),
.D(Q[3]),
.Q(Q[2])
);

D_flipfliop ff2(
.clk(clk),
.reset(reset),
.D(Q[2]),
.Q(Q[1])
);

D_flipfliop ff3(
.clk(clk),
.reset(reset),
.D(Q[1]),
.Q(Q[0])
);

assign Cout = Q[0];

endmodule
