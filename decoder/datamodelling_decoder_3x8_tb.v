`timescale 1ns / 1ps

module datamodelling_decoder_3x8_tb;
reg a;
reg b;
reg c;
wire [7:0]y;

integer i, j, k;

datamodelling_decoder_3x8 uut(
.a(a),
.b(b),
.c(c),
.y(y)
   );
   
   initial begin
  $dumpfile("test.vcd");
  $dumpvars(0,datamodelling_decoder_3x8_tb);
  end
   
  initial begin
  for(i=0;i<2;i=i+1)begin
  for(j=0;j<2;j=j+1)begin
  for(k=0;k<2;k=k+1)begin
 
  a=i; b=j; c=k;
  #10;
  end 
  end
  end
  $finish;
  end
  
endmodule

