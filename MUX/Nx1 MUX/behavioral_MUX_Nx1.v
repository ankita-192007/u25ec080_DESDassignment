`timescale 1ns / 1ps

module behavioral_MUX_Nx1 #(parameter N =8, parameter S=$clog2(N))(
input [N-1:0]a,
input [S-1:0]s, 
output reg y
);
always @(*)begin
y=a[s]; 
end
endmodule

