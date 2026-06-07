`timescale 1ns / 1ps

module behavioral_mux_2x1_tb;
reg a;
reg b;
reg s;
wire y;

behavioral_mux_2x1 uut(
.a(a),
.b(b),
.s(s),
.y(y)
);
integer i, j, k;

initial begin
$dumpfile("test.vcd");
$dumpvars(0,behavioral_mux_2x1_tb);
end

initial begin 
for(i=0;i<2;i=i+1)begin
for(j=0;j<2;j=j+1)begin
for(k=0;k<2;k=k+1)begin
a=i;
b=j;
s=k;
#10;
end 
end
end
$finish;
end
endmodule
