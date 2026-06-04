`timescale 1ns / 1ps

module xor_behavioral(input a, input b, output reg y);
always @(*)begin
y = a ^ b;
end
endmodule
