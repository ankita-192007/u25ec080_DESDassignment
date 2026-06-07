`timescale 1ns / 1ps

//module behavioral_encoder_4x2 #(parameter In=4, parameter Op=2)
module behavioral_encoder_4x2(
input [3:0]I,
output reg [1:0]O
  );
  always @(*)begin
  case(I)
        4'b0001: O = 2'b00;
        4'b0010: O = 2'b01;
        4'b0100: O = 2'b10;
        4'b1000: O = 2'b11;
        default: O = 2'b00;
  endcase
  end
endmodule
