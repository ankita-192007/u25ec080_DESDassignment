`timescale 1ns / 1ps

module CSA_tb;
reg  [15:0] A;
reg  [15:0]B;
reg  Cin;
wire [15:0] sum;
wire cout;

carry_select_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .sum(sum),
    .cout(cout)
);

initial begin
 
  $display("Time\t A\t\t B\t\t Cin\t cout sum");
    $monitor("%0t\t %h\t %h\t %b\t %b %h",
              $time, A, B, Cin, cout, sum); 
              
    A = 16'h0000;
    B = 16'h0000;
    Cin = 0;
    #10;

   
    A = 16'h0001;
    B = 16'h0001;
    Cin = 0;
    #10;

  
    A = 16'h000F;
    B = 16'h0001;
    Cin = 0;
    #10;

  
    A = 16'h00FF;
    B = 16'h0001;
    Cin = 0;
    #10;

  
    A = 16'hFFFF;
    B = 16'h0001;
    Cin = 0;
    #10;

  
    A = 16'h1234;
    B = 16'h4321;
    Cin = 0;
    #10;

    A = 16'hAAAA;
    B = 16'h5555;
    Cin = 1;
    #10;
    
    A = 16'hF0F0;
    B = 16'h0F0F;
    Cin = 0;
    #10;

    repeat (10) begin
        A   = $random;
        B   = $random;
        Cin = $random;
        #10;
    end

    $finish;
end

endmodule

  
