`timescale 1ns / 1ps

module continuous_2bit_comparator_tb;
reg [1:0]A;
reg [1:0]B;
wire Greater;
wire Less;
wire Equal;

integer i, j;

continuous_2bit_comparator uut(
.A(A),
.B(B),
.Greater(Greater),
.Equal(Equal),
.Less(Less)
);

initial begin
$dumpfile("text.vcd");
$dumpvars(0,continuous_2bit_comparator_tb);
end

initial begin
for(i=0;i<4;i=i+1)begin
for(j=0;j<4;j=j+1)begin
A=i;  B=j;
#10;
end 
end
$finish;
end

endmodule
