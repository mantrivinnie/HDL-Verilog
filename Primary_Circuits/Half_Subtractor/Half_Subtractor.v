`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: Half_Subtractor
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
A Half Subtractor is a combinational logic circuit that subtracts one 1-bit binary number (B) from another (A).
It produces two outputs:

Difference (D) → Result of subtraction.
Borrow (Bo) → Indicates if a borrow is needed.

🔹 Logic Equations

Difference (D) = A ⊕ B (XOR gate)
Borrow (Bo) = A' · B (NOT gate + AND gate)

🔹 Truth Table
A	B	D	Bo
0	0	0	0
0	1	1	1
1	0	1	0
1	1	0	0
*/

module Half_Subtractor(
    input A,
    input B,
    output Diff,
    output Borrow
    );
    assign Diff= A^B;
    assign Borrow=(~A)&B;
endmodule
