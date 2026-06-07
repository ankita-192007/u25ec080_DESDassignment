`timescale 1ns / 1ps
module behav_demux_1x2(
input I,S,
output reg [1:0]O
  );
always @(*)begin
if(S == 0)begin
O[0]=I;
O[1]=1'b0;
end else begin
O[0]=1'b0;
O[1]=I;
end
end
endmodule
