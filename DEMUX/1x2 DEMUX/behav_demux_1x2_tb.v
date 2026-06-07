`timescale 1ns / 1ps
module behav_demux_1x2_tb;
reg I;
reg S;
wire [1:0]O;

behav_demux_1x2 uut(
.I(I),
.S(S),
.O(O)
);

initial begin
$dumpfile("test.vcd");
$dumpvars(0,behav_demux_1x2_tb);
end 

initial begin
  I=0; S=0; #10;
  I=1; S=0; #10;
  I=0; S=1; #10;
  I=1; S=1; #10;
  $finish;
  end
endmodule
