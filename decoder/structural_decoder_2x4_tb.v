`timescale 1ns / 1ps

module structural_decoder_2x4_tb;
reg a;
reg b;
wire [3:0]y;


integer i, j;

structural_decoder_2x4 uut(
.a(a),
.b(b),
.y(y),
  );
   
   initial begin
  $dumpfile("test.vcd");
  $dumpvars(0,structural_decoder_2x4_tb);
  end
   
  initial begin
  for(i=0;i<2;i=i+1)begin
  for(j=0;j<2;j=j+1)begin
 
  a=i; b=j;
  #10;
  end 
  end
  
  $finish;
  end
  
endmodule
