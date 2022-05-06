`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:13:26 05/06/2022
// Design Name:   bcdadder
// Module Name:   D:/bhoj/bcdadder/test1.v
// Project Name:  bcdadder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcdadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test1;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire bcd1;
	wire [3:0] bcd0;

	// Instantiate the Unit Under Test (UUT)
	bcdadder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.bcd1(bcd1), 
		.bcd0(bcd0)
	);

	initial begin
		// Initialize Inputs
		a = 9;
		b = 9;
		cin = 1;

		end
		initial
		$monitor("a=%d,b=%d,cin=%d,bcd1=%d,bcd0=%d",a,b,cin,bcd1,bcd0);
      
endmodule

