`timescale 1ns / 1ps

module BCD_encoder(
input [3:0]a,
input [3:0]b,
input cin,
output reg cout,
output reg [3:0]sum
  );
  reg [4:0]S;
  always @(*)begin
  S=a+b+cin;
  if(S>9)begin
  sum=S+6;
  cout=1;
  end else begin
  sum=S;
  cout=0;
  end
  end
endmodule
