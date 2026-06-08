`timescale 1ns / 1ps

module demux_1x4_tb;
reg I;
reg [1:0]sel;
wire [3:0]O;

integer i, j;

demux_1x4 uut(
.I(I),
.sel(sel),
.O(O)
  );
  
 initial begin
 for(i=0;i<2;i=i+1)begin
 for(j=0;j<4;j=j+1)begin
 I=i;  
 sel=j; 
 #10;
 end
 end
 $finish;
 end
 endmodule
