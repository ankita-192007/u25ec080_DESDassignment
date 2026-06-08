`timescale 1ns / 1ps

module behavioral_mux_Nx1_tb;
parameter N =8; 
parameter S=$clog2(N);
reg [N-1:0]a;
reg [S-1:0]s;
wire y;

behavioral_MUX_Nx1 uut(
.a(a),
.s(s),
.y(y)
);
integer j;

initial begin
$dumpfile("test.vcd");
$dumpvars(0,behavioral_mux_Nx1_tb);
end

initial begin 
//for(j=0;j<N;j=j+1)begin //we are not using this it will go till 256 exhausting testing
a=8'b11100101;
for(j=0;j<N;j=j+1)begin
s=j;
#10;
end 
$finish;
end
endmodule



