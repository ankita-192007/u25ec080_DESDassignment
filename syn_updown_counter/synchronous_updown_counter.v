`timescale 1ns / 1ps

module T_flipflop(
input T,
input clk,
input reset,
output reg Q
);

always @(posedge clk or posedge reset)begin
if(reset)
Q <= 1'b0;
else if(T)
Q <= ~Q;
else
Q = Q;
end
endmodule

module synchronous_updown_counter(
input clk,
input M,
input reset,
output [2:0]Q
);

wire TA, TB, TC;
assign TA = 1'b1;
assign TB = M^Q[0];
assign TC = (~M & Q[1] & Q[0])| (M & ~Q[1] & ~Q[0]);

T_flipflop ff0(
.T(TA),
.clk(clk),
.reset(reset),
.Q(Q[0])
);

T_flipflop ff1(
.T(TB),
.clk(clk),
.reset(reset),
.Q(Q[1])
);

T_flipflop ff2(
.T(TC),
.clk(clk),
.reset(reset),
.Q(Q[2])
);

endmodule
