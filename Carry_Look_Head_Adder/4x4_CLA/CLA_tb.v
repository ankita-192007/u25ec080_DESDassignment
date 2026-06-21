`timescale 1ns / 1ps

module CLA_tb;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire cout;
wire [3:0]sum;

CLA uut(
.a(a),
.b(b),
.cin(cin),
.cout(cout),
.sum(sum)
    );
    
 initial begin
 $monitor("a=%b b=%b cin=%b sum=%b cout=%b",a,b,cin,sum,cout);
 end
    
 initial begin
 a=4'b0000; b=4'b0000; cin=0;
 #10;
 a=4'b0001; b=4'b0001; cin=0;
 #10;
  a=4'b1111; b=4'b0001; cin=0;
 #10;
  a=4'b1111; b=4'b1111; cin=1;
 #10;

 $finish;
 end
endmodule
