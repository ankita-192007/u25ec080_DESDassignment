`timescale 1ns / 1ps

module full_adder(
input x,y,cin,
output cout,sum
);
assign sum = x^y^cin;
assign cout = (x&y)|(y&cin)|(x&cin);
   
endmodule

module half_adder(
input x,y,
output cout,sum
);
assign sum = x^y;
assign cout = x&y;
   
endmodule

module array_multiplier(
input [3:0]a,
input [3:0]b,
output [7:0]out
  );
  
genvar i, j;
wire pp[3:0][3:0];
generate
for(i=0;i<4;i=i+1)begin: row
for(j=0;j<4;j=j+1)begin: column
assign pp[i][j]=a[j]&b[i];
end
end
endgenerate

wire c0,s0,c1,s1,c2;
wire c3,s2,c4,s3,c5;
wire c6,s4,c7,s5,c8;
wire c9,c10;

assign out[0]=pp[0][0];

half_adder HA1(
    .x(pp[0][1]),
    .y(pp[1][0]),
    .sum(out[1]),
    .cout(c0)
    );
    
 half_adder HA2(
    .x(pp[1][1]),
    .y(pp[2][0]),
    .sum(s0),
    .cout(c1)
    );
    
 half_adder HA3(
    .x(pp[2][1]),
    .y(pp[3][0]),
    .sum(s1),
    .cout(c2)
    );
    
full_adder FA1(
    .x(pp[0][2]),
    .y(s0),
    .cin(c0),
    .sum(out[2]),
    .cout(c3)
);  
    
full_adder FA2(
    .x(pp[1][2]),
    .y(s1),
    .cin(c1),
    .sum(s2),
    .cout(c4)
);

full_adder FA3(
    .x(pp[2][2]),
    .y(pp[3][1]),
    .cin(c2),
    .sum(s3),
    .cout(c5)
);

full_adder FA4(
    .x(pp[0][3]),
    .y(s2),
    .cin(c3),
    .sum(out[3]),
    .cout(c6)
);

full_adder FA5(
    .x(pp[1][3]),
    .y(s3),
    .cin(c4),
    .sum(s4),
    .cout(c7)
);

full_adder FA6(
    .x(pp[2][3]),
    .y(pp[3][2]),
    .cin(c5),
    .sum(s5),
    .cout(c8)
);

half_adder HA4(
.x(s4),
.y(c6),
.sum(out[4]),
.cout(c9)
);

full_adder FA7(
    .x(s5),
    .y(c7),
    .cin(c9),
    .sum(out[5]),
    .cout(c10)
);

full_adder FA8(
    .x(pp[3][3]),
    .y(c8),
    .cin(c10),
    .sum(out[6]),
    .cout(out[7])
);

endmodule




