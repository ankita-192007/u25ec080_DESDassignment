`timescale 1ns / 1ps

module priority_encoder_4x2_tb;
reg [3:0]I;
wire [1:0]out;

priority_encoder_4x2 uut(
.I(I),
.out(out)
  );
  
 initial begin
 $dumpfile("test.vcd");
 $dumpvars(0,priority_encoder_4x2_tb);
 end
 
 initial begin
 I=4'b1000; #10;
 I=4'b0100; #10;
 I=4'b0010; #10;
 I=4'b0001; #10;
 I=4'b1101; #10;
 I=4'b0000; #10;
 $finish;
end
endmodule
