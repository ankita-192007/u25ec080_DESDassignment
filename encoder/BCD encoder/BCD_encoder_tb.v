`timescale 1ns / 1ps

module BCD_encoder_tb;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire cout;
wire [3:0]sum;

BCD_encoder uut(
.a(a),
.b(b),
.cin(cin),
.cout(cout),
.sum(sum)
  );

initial begin
    a=2; b=3; cin=0; #10;   
    a=4; b=5; cin=0; #10;  
    a=5; b=5; cin=0; #10;  
    a=9; b=9; cin=1; #10;  
    $finish;
end
endmodule
