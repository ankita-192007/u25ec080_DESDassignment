`timescale 1ns / 1ps

module behav_Nx1 #(parameter N = 5)(
    input  [N-1:0] a,
    input  [N-1:0] b,
    input  cin,
    output reg [N-1:0] sum,
    output reg cout
);

always @(*) begin
    {cout, sum} = a + b + cin;
end

endmodule


