`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
//
// Design Name: 
// Module Name: Mux2_1
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
////////////////////////////////////////////////////////////////////////////////

/*
2:1 Multiplexer (MUX)
A multiplexer (MUX) is a combinational circuit that selects one input from multiple inputs and forwards it to a single output line.
A 2:1 multiplexer has two data inputs (I0, I1), one select input (S), and one output (Y).
The select line (S) decides which input is passed to the output:
If S = 0, output Y = I0
If S = 1, output Y = I1

Y=S′I0+SI1
*/



module Mux2_1(
input A, B, S, 
output Y);
    assign Y = (~S&A)|(S&B);
endmodule
