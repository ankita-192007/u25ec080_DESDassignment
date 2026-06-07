`timescale 1ns / 1ps

module behavioral_encoder_4x2_tb;
reg [3:0]I;
wire [1:0]O;
behavioral_encoder_4x2 uut(
.I(I),
.O(O)
 );
 
 initial begin
$dumpfile("test.vcd");
$dumpvars(0,behavioral_encoder_4x2_tb);
end
initial begin  
      I=4'b0001; #10;
      I=4'b0010; #10;
      I=4'b0100; #10;
      I=4'b1000; #10;
      I=4'b0000; #10;
      $finish;
 end
endmodule
