`timescale 1ns / 1ps

module JK_flipflop(
input clk, J, K,reset,
output reg Q
);

always @(posedge clk or posedge reset)begin
if(reset)
Q <= 1'b0;
else begin
case({J,K})
  2'b00:  Q<=Q;  //hold
  2'b01:  Q<=1'b0;  //reset
  2'b10:  Q<=1'b1;  //set
  2'b11:  Q<=~Q;  //toggle
endcase
end
end
endmodule

module asyn_updown_counter(
input clk,
input reset,
input M,  //M=0 up, M=1 down
output [2:0]Q
);

wire Y1, Y2;
assign Y1 = ~Q[0]^M;
assign Y2 = ~Q[1]^M;

JK_flipflop ff0(
.clk(clk),
.reset(reset),
.J(1'b1),
.K(1'b1),
.Q(Q[0])
);

JK_flipflop ff1(
.clk(Y1),
.reset(reset),
.J(1'b1),
.K(1'b1),
.Q(Q[1])
);

JK_flipflop ff2(
.clk(Y2),
.reset(reset),
.J(1'b1),
.K(1'b1),
.Q(Q[2])
);
endmodule
