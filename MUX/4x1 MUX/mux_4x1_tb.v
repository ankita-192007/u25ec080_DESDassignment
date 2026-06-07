`timescale 1ns / 1ps

module mux_4x1_tb;
reg [3:0]a;
reg [1:0]s;
wire y;

 mux_4x1 uut(
.a(a),
.s(s),
.y(y)
);
integer j;

initial begin
$dumpfile("test.vcd");
$dumpvars(0,mux_4x1_tb);
end

initial begin 

a=4'b0101;
for(j=0;j<4;j=j+1)begin
s=j;
#10;
end 
$finish;
end
endmodule




