`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
//
// Design Name: 
// Module Name: Incrementer_4bit
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


module Incrementer_4bit(S,C,A);
input [3:0]A;
output [3:0]S;
output [4:1]C;
HalfAdder HA1(A[0],1'b1,S[0],C[1]),
          HA2(A[1],C[1],S[1],C[2]),
          HA3(A[2],C[2],S[2],C[3]),
          HA4(A[3],C[3],S[3],C[4]);
endmodule
