`timescale 1ns / 1ps

module encoder_8x3_ifelse(
input [7:0]I,
output reg [2:0]O
    );
    
    always @(*)begin
    if(I==00000001)begin
    O=3'b000;
    end else if(I==8'b00000010)begin
    O=3'b001;
     end else if(I==8'b00000100)begin
    O=3'b010;
     end else if(I==8'b00001000)begin
    O=3'b011;
     end else if(I==8'b00010000)begin
    O=3'b100;
     end else if(I==8'b00100000)begin
    O=3'b101;
     end else if(I==8'b01000000)begin
    O=3'b110;
     end else if(I==8'b10000000)begin
    O=3'b111;
   end else begin
   O=3'b000;
   end
   end
endmodule
