`timescale 1ns / 1ps

module array_multiplier_tb;
reg [3:0]a;
reg [3:0]b;
wire [7:0]out;

array_multiplier uut(
.a(a),
.b(b),
.out(out)
    );
    
  initial begin
  a=5; b=4;
  #10;
  a=6; b=5;
  #10;
  a=7; b=6;
  #10;
  $finish;
  end
 endmodule
