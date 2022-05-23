//design file

`timescale 1ns / 1ps
module genloop(a,b,cin,sum,co);
input [3:0]a,b;
input cin;
output [3:0]sum;
output co;
wire [4:0]c;
assign c[0]=cin;

genvar i;

generate
for(i=0;i<=3;i=i+1) begin: loop1
fa ins1(a[i],b[i],c[i],sum[i],c[i+1]);
end
endgenerate
assign co=c[4];
endmodule

module fa(a,b,cin,sum,co);
input a,b,cin;
output sum,co;
assign sum=a^b^cin;
assign co=(a&b)|(a&cin)|(b&cin);
endmodule

//Testbench

`timescale 1ns / 1ps

module test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	genloop uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		a = 7;
		b = 8;
		cin = 0;

		#5 a = 7;
		b = 8;
		cin = 1;

	end
      
		initial
		$monitor("simtime=%t,a=%d,b=%d,cin=%b,{co,sum}=%d",$time,a,b,cin,{co,sum});
endmodule
