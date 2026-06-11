`timescale 1ns / 1ps

module booth_multiplier #(parameter N=4)(
input signed [N-1:0]a,
input signed [N-1:0]b,
output reg signed [(2*N)-1:0]out
    );
    
    integer i;
 
 reg signed [N:0]A;
 reg signed [N:0]M;
 reg signed [N-1:0]Q;
 reg Q_1;
 
 reg signed [(2*N)+1:0]temp;
 
 always @(*)begin
 A=0;
 M={a[N-1],a};
 Q=b;
 Q_1=0;
 for(i=0;i<N;i=i+1)begin
 if(Q[0]==1 && Q_1==0)begin
 A=A-M;
 temp={A,Q,Q_1};
 temp=temp>>>1;
 {A,Q,Q_1}=temp;
 end else if(Q[0]==0 && Q_1==1)begin
 A=A+M;
 temp={A,Q,Q_1};
 temp=temp>>>1;
 {A,Q,Q_1}=temp;
 end else begin
 temp={A,Q,Q_1};
 temp=temp>>>1;
 {A,Q,Q_1}=temp;
 end
 end 
   out = {A[N-1:0], Q};
 end
 endmodule
 
 
    
    
    




 