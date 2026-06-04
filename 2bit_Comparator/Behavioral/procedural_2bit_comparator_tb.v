`timescale 1ns / 1ps

module procedural_2bit_comparator_tb;
reg [1:0]A;
reg [1:0]B;
wire A_greater_B;
wire A_less_B;
wire A_equal_B;

integer i, j;

procedural_2bit_comparator uut(
.A(A),
.B(B),
.A_greater_B( A_greater_B),
.A_less_B(A_less_B),
.A_equal_B(A_equal_B)
);

initial begin 
$dumpfile("test.vcd");
$dumpvars(0,procedural_2bit_comparator_tb);
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
