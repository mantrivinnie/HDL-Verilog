`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: Full_Subtractor
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
A Full Subtractor is a combinational circuit that subtracts three 1-bit inputs:

A → Minuend
B → Subtrahend
Bin → Borrow-in (from previous stage)

It produces two outputs:
Difference (D)
Borrow-out (Bout)

🔹 Logic Equations

Difference (D) = A ⊕ B ⊕ Bin
Borrow (Bout) = A'·B + A'·Bin + B·Bin

🔹 Truth Table
A	B	Bin	D	Bout
0	0	0	  0	0
0	0	1	  1	1
0	1	0  	1	1
0	1	1  	0	1
1	0	0	  1	0
1	0	1	  0	0
1	1	0	  0	0
1	1	1  	1	1
*/
module Full_Subtractor(
    input A,
    input B,
    input C,
    output Diff,
    output Borrow
    );
    assign Diff = A ^ B ^ C;
    assign Borrow = (~A & B) | (C & (~A ^ B));

endmodule
