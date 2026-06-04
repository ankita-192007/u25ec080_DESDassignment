`timescale 1ns / 1ps

module xor_behavioral_tb;

reg a, b;      
wire y;         


xor_behavioral uut (
    .a(a),
    .b(b),
    .y(y)
);
initial begin
$dumpfile("y.vcd");
$dumpvars;
end

initial 
begin
    a = 0; b = 0;
    #10;

    a = 0; b = 1; 
    #10;

    a = 1; b = 0; 
    #10;
    
    a = 1; b = 1; 
    #10;
    
 $finish;
end
endmodule

