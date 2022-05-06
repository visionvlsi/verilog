`timescale 1ns / 1ps
module fa(a,b,cin,sum,co);
input a,b,cin;
output sum,co;
assign sum=a^b^cin,
       co=(a&b)|(b&cin)|(cin&a);

endmodule
