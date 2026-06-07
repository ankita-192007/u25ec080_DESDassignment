`timescale 1ns / 1ps

module mux_4x1 #(parameter N =4, parameter S=2)(
input [N-1:0]a,
input [S-1:0]s, 
output reg y
);
always @(*)begin
y=a[s]; 
end
endmodule

