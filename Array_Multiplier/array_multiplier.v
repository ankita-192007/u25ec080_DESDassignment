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

wire s1,c1;
wire s2,c2,s3,c3;
wire s4,c4,s5,c5,s6,c6;
wire s7,c7,s8,c8,s9,c9;
wire s10,c10,s11,c11;

assign out[0] = pp[0][0];

half_adder HA1(
    .x(pp[0][1]),
    .y(pp[1][0]),
    .sum(out[1]),
    .cout(c1)
);

full_adder FA1(
    .x(pp[0][2]),
    .y(pp[1][1]),
    .cin(pp[2][0]),
    .sum(s1),
    .cout(c2)
);

half_adder HA2(
    .x(s1),
    .y(c1),
    .sum(out[2]),
    .cout(c3)
);

full_adder FA2(
    .x(pp[0][3]),
    .y(pp[1][2]),
    .cin(pp[2][1]),
    .sum(s2),
    .cout(c4)
);

full_adder FA3(
    .x(s2),
    .y(pp[3][0]),
    .cin(c2),
    .sum(s3),
    .cout(c5)
);

half_adder HA3(
    .x(s3),
    .y(c3),
    .sum(out[3]),
    .cout(c6)
);

full_adder FA4(
    .x(pp[1][3]),
    .y(pp[2][2]),
    .cin(pp[3][1]),
    .sum(s4),
    .cout(c7)
);

full_adder FA5(
    .x(s4),
    .y(c4),
    .cin(c5),
    .sum(s5),
    .cout(c8)
);

half_adder HA4(
    .x(s5),
    .y(c6),
    .sum(out[4]),
    .cout(c9)
);

full_adder FA6(
    .x(pp[2][3]),
    .y(pp[3][2]),
    .cin(c7),
    .sum(s6),
    .cout(c10)
);

full_adder FA7(
    .x(s6),
    .y(c8),
    .cin(c9),
    .sum(out[5]),
    .cout(c11)
);

full_adder FA8(
    .x(pp[3][3]),
    .y(c10),
    .cin(c11),
    .sum(out[6]),
    .cout(out[7])
);

endmodule





