`timescale 1ns / 1ps

module structural_decoder_2x4(
input a,
input b,
output [3:0]y
    );
    wire c1, c2;
    not(c1,a);
    not(c2,b);
    and(y[0],c1,c2);
    and(y[1],c1,b);
    and(y[2],a,c2);
    and(y[3],a,b);
endmodule
