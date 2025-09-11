`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: Mux4_1
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
4:1 Multiplexer (MUX)
A multiplexer (MUX) is a digital circuit that selects one of several inputs and forwards it to a single output line.
A 4:1 multiplexer has:
4 data inputs: 𝐼0,𝐼1,𝐼2,𝐼3​
2 select lines: 𝑆1,𝑆0
1 output: Y

The select lines determine which input is connected to the output.

Y=S1′​S0′​I0​+S1′​S0​I1​+S1​S0′​I2​+S1​S0​I3​
*/


module Mux4_1(Y,S,A);
input [3:0]A;
input [1:0]S;
output Y;
assign Y=S[0]?(S[1]?A[3]:A[1]):(S[1]:A[2]:A[0]);
endmodule
