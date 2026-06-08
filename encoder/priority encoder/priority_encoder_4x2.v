`timescale 1ns / 1ps

module priority_encoder_4x2 #(parameter N=4,parameter O=$clog2(N))(
input [N-1:0]I,
output reg [O-1:0]out
    );
    always @(*)begin
    casex(I) 
    4'b1???: out=2'b11;
    4'b01??: out=2'b10;
    4'b001?: out=2'b01;
    4'b0001: out=2'b00;
    default: out=2'b00;
    endcase
    
//    if (I[3] == 1'b1)
//        out = 2'b11;
//    else if (I[2] == 1'b1)
//        out = 2'b10;
//    else if (I[1] == 1'b1)
//        out = 2'b01;
//    else if (I[0] == 1'b1)
//        out = 2'b00;
//    else
//        out = 2'b00;
    end
endmodule
