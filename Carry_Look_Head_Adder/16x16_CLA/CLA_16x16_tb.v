`timescale 1ns / 1ps
module CLA_16x16_tb;
reg [15:0]a;
reg [15:0]b;
reg cin;
wire cout;
wire [15:0]sum;

CLA_16x16 uut(
.a(a),
.b(b),
.cin(cin),
.cout(cout),
.sum(sum)
    );
    
 initial begin
 $monitor("a=%h b=%h cin=%b sum=%h cout=%b",a,b,cin,sum,cout);
 end
    
 initial begin
 a=16'h0000; b=16'h0000; cin=0;
 #10;
 a=16'h0001; b=16'h0001; cin=0;
 #10;
  a=16'hffff; b=16'h0001; cin=0;
 #10;
  a=16'h1234; b=16'hffff; cin=1;
 #10;

 $finish;
 end
endmodule


