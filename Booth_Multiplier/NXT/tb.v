`timescale 1ns / 1ps
module tb;
parameter N=4;
 parameter T=3;
reg signed [N-1:0] a;
reg signed [T-1:0] b;
wire signed [(N+T)-1:0] out;

booth_multiplier #(4,3) uut(
    .a(a),
    .b(b),
    .out(out)
);

initial begin
    a = 7;  b = 3;  #10;
    a = -8; b = 3;  #10;
    a = 7;  b = -4; #10;
    a = -8; b = -4; #10;
    $finish;
end

endmodule
