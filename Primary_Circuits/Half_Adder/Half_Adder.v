`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: HalfAdder
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

/* A Half Adder is a combinational logic circuit that adds two 1-bit binary numbers (A and B).
It produces two outputs:

Sum (S) → The result of A ⊕ B (XOR gate).
Carry (C) → The result of A · B (AND gate).*/

module HalfAdder(
input A,B,
output Sum,Carry
    );
    assign Sum= A^B;
    assign Carry= A&B;
endmodule
