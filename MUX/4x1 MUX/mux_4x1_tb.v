`timescale 1ns / 1ps

module  mux_4x1_tb;
parameter N =4; 
parameter S=2;
reg [N-1:0]a;
reg [S-1:0]s;
wire y;

 mux_4x1 uut(
.a(a),
.s(s),
.y(y)
);
integer i, j;

initial begin
$dumpfile("test.vcd");
$dumpvars(0,behavioral_mux_4x1_tb);
end

initial begin 

a=4'b0101;
for(j=0;j<N;j=j+1)begin
s=j;
#10;
end 
$finish;
end
endmodule




