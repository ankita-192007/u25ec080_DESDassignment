`timescale 1ns / 1ps

module carry_skip_adder_tb;
parameter N=16;
reg [N-1:0]a;
reg [N-1:0]b;
reg cin;
wire cout; 
wire [N-1:0]sum;

carry_skip_adder uut(
.a(a),
.b(b),
.cin(cin),
.cout(cout),
.sum(sum)
  );
  
 initial begin
    $display("Time\t a\t\t b\t\t cin\t cout sum");
    $monitor("%0t\t %h\t %h\t %b\t %b %h",
              $time, a, b, cin, cout, sum);

    // Test 1
    a = 16'h0000;
    b = 16'h0000;
    cin = 0;
    #10;

   // Test.2
    a = 16'h0001;
    b = 16'h0001;
    cin = 0;
    #10;

    // Test 3
    a = 16'h000F;
    b = 16'h0001;
    cin = 0;
    #10;

    // Test 4
    a = 16'h00FF;
    b = 16'h0001;
    cin = 0;
    #10;

    // Test 5
    a = 16'hFFFF;
    b = 16'h0001;
    cin = 0;
    #10;

    // Test 6
    a = 16'h1234;
    b = 16'h4321;
    cin = 0;
    #10;

    // Test 7
    a = 16'hAAAA;
    b = 16'h5555;
    cin = 1;
    #10;

    // Test 8
    a = 16'hF0F0;
    b = 16'h0F0F;
    cin = 0;
    #10;

    // Random Tests
    repeat (10) begin
        a   = $random;
        b   = $random;
        cin = $random;
        #10;
    end

    $finish;
end

endmodule