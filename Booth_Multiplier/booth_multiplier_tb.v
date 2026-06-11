`timescale 1ns / 1ps

module booth_multiplier_tb;
parameter N=4;
reg signed [N-1:0]a;
reg signed [N-1:0]b;
wire signed [(2*N)-1:0]out;

 booth_multiplier uut(
 .a(a),
 .b(b),
 .out(out)
    );
    
  initial begin
  a=6;  b=5;
  #10;
  a=-5;  b=4;
  #10;
  a=-4;  b=-7;
  #10;
  $finish;
  end
  endmodule
