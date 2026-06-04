`timescale 1ns / 1ps

module xor_structural_tb;
reg a;
reg b;
wire y;

xor_structural uut(
.a(a),
.b(b),
.y(y) 
);
initial begin
$dumpfile("y.vcd");
$dumpvars;
end

initial begin
a=0; b=0;
#10;
a=0; b=1;
#10;
a=1; b=0;
#10;
a=1; b=1;
#10;
end

endmodule





