`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: Full_Adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

/*
A Full Adder is a combinational logic circuit that adds three 1-bit inputs:
A (first input)
B (second input)
Cin (carry-in from previous stage)

It produces two outputs:
Sum (S)
Carry (Cout)

Truth Table
A	  B	  Cin	  Sum (S)	  Carry (Cout)
0	  0	  0      	0       	0
0	  0	  1	      1        	0
0  	1  	0  	    1        	0
0	  1  	1       0        	1
1	  0  	0	      1         0
1	  0  	1	      0        	1
1	  1  	0	      0	        1
1	  1  	1	      1        	1
*/

module Full_Adder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (Cin & (A ^ B));

endmodule
