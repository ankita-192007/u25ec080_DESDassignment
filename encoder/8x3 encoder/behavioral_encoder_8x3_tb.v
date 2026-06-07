`timescale 1ns / 1ps
module behavioral_encoder_8x3_tb;
reg [7:0]I;
wire [2:0]O;
behavioral_encoder_8x3 uut(
.I(I),
.O(O)
 );
 
 initial begin
$dumpfile("test.vcd");
$dumpvars(0,behavioral_encoder_8x3_tb);
end
initial begin  
        I = 8'b00000001; #10;
        I = 8'b00000010; #10;
        I = 8'b00000100; #10;
        I = 8'b00001000; #10;
        I = 8'b00010000; #10;
        I = 8'b00100000; #10;
        I = 8'b01000000; #10;
        I = 8'b10000000; #10;
        I = 8'b00000000; #10;
        $finish;

 end
endmodule
