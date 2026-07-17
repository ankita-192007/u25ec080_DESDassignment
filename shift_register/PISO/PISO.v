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

module PISO(
input [3:0]B,
input M,
input clk,
input reset,
output [3:0]Q,
output Cout
);

wire D0, D1, D2, D3;
assign D0 = (M==0) ? B[0] : 1'b0;
assign D1 = (M==0) ? B[1] : Q[0];
assign D2 = (M==0) ? B[2] : Q[1];
assign D3 = (M==0) ? B[3] : Q[2]; 

//always @(posedge clk)begin
//if(reset)
//Q <= 4'b0000;
//else if(M == 0)
//Q <= B; 
//else
//Q <= {Q[2:0] , 1'b0};
//end

D_flipflop ff0(
.clk(clk),
.reset(reset),
.D(D0),
.Q(Q[0])
);

D_flipflop ff1(
.clk(clk),
.reset(reset),
.D(D1),
.Q(Q[1])
);
 
 D_flipflop ff2(
.clk(clk),
.reset(reset),
.D(D2),
.Q(Q[2])
);

D_flipflop ff3(
.clk(clk),
.reset(reset),
.D(D3),
.Q(Q[3])
);
 
assign Cout = Q[3];

endmodule
