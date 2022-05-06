`timescale 1ns / 1ps
module bcdadder(a,b,cin,bcd1,bcd0);
input [3:0]a,b;
input cin;
output bcd1;
output [3:0]bcd0;
wire [3:0]sum;
rca ins1(a,b,cin,sum,co);
and(w1,sum[3],sum[2]),
   (w2,sum[3],sum[1]);
or(bcd1,co,w1,w2);
rca ins2(sum,{1'b0,bcd1,bcd1,1'b0},1'b0,bcd0,);

endmodule
