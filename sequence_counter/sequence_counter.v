`timescale 1ns / 1ps

module D_flipflop(
input D,
input clk,
input reset,
output reg Q
);

always @(posedge clk or posedge reset)begin
if(reset)
Q <= 1'b0;
else
Q <= D;
end
endmodule

module decoder(
input [1:0]I,
output [3:0]O
);

wire c1, c2;

not(c1,I[0]);
not(c2,I[1]);
and(O[0],c1,c2);
and(O[1],c2,I[0]);
and(O[2],I[1],c1);
and(O[3],I[0],I[1]);

endmodule

module sequence_counter(
input clk,
input reset,
output [1:0]Q,
output [7:0]Y
    );
    
wire DA, DB;
wire [3:0]O;
assign DA = ~Q[0];
assign DB = Q[1]^Q[0];

D_flipflop ff0(
.clk(clk),
.reset(reset),
.D(DA),
.Q(Q[0])
);

D_flipflop ff1(
.clk(clk),
.reset(reset),
.D(DB),
.Q(Q[1])
);

decoder d1(
.I(Q),
.O(O)
);

assign Y[0] = O[0];   // 1
assign Y[1] = 1'b0;
assign Y[2] = 1'b0;
assign Y[3] = 1'b0;
assign Y[4] = 1'b0;
assign Y[5] = O[1];   // 32
assign Y[6] = O[2];   // 64
assign Y[7] = O[3];   // 128

endmodule
