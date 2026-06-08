`timescale 1ns / 1ps

module gray_encoder_tb;
reg [3:0]B;
wire [3:0]G;
 
 integer i;
   
gray_encoder uut(
.B(B),
.G(G)
);
 
 initial begin
  for(i=0;i<16;i=i+1)begin
  B=i;
  #10;
  end
  $finish;
  end  
endmodule
