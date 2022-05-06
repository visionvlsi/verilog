`timescale 1ns / 1ps
module rca(a,b,cin,sum,co);
input [3:0]a,b;
input cin;
output [3:0]sum;
output co;
fa ins1(a[0],b[0],cin,sum[0],c1),
   ins2(a[1],b[1],c1,sum[1],c2),
	ins3(a[2],b[2],c2,sum[2],c3),
	ins4(a[3],b[3],c3,sum[3],co);

endmodule
