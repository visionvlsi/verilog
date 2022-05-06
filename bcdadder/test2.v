`timescale 1ns / 1ps
module test2;

	// Inputs
	reg [3:0] a1;
	reg [3:0] a0;
	reg [3:0] b1;
	reg [3:0] b0;
	reg cin;

	// Outputs
	wire bcd2;
	wire [3:0] bcd1;
	wire [3:0] bcd0;

	// Instantiate the Unit Under Test (UUT)
	bcdadder2digit uut (
		.a1(a1), 
		.a0(a0), 
		.b1(b1), 
		.b0(b0), 
		.cin(cin), 
		.bcd2(bcd2), 
		.bcd1(bcd1), 
		.bcd0(bcd0)
	);

	initial begin
		// Initialize Inputs
		a1 = 4;
		a0 = 2;
		b1 = 5;
		b0 = 9;
		cin = 1;

	end
      initial 
		$monitor("a1=%d,a0=%d,b1=%d,b0=%d,cin=%d, bcd2=%d,bcd1=%d,bcd0=%d",a1,a0,b1,b0,cin,bcd2,bcd1,bcd0);
endmodule

