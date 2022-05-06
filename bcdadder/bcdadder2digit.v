`timescale 1ns / 1ps
module bcdadder2digit(a1,a0,b1,b0,cin,bcd2,bcd1,bcd0);
input [3:0]a1,a0,b1,b0;
input cin;
output [3:0]bcd1,bcd0;
output bcd2;

bcdadder ins1(a0,b0,cin,c1,bcd0);
bcdadder ins2(a1,b1,c1,bcd2,bcd1);
endmodule
