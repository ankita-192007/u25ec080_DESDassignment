`timescale 1ns / 1ps

module demux_1x4(
input I,
input [1:0]sel,
output reg [3:0]O
    );

always @(*)begin

O[0] = (sel==2'b00)?I:1'b0;
O[1] = (sel==2'b01)?I:1'b0;
O[2] = (sel==2'b10)?I:1'b0;
O[3] = (sel==2'b11)?I:1'b0;

//O=4'b0000;
//O[sel]=I;

 end   
endmodule
