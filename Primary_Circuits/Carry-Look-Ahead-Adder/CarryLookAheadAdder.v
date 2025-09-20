`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
//
// Design Name: 
// Module Name: Carry_Look_Ahead_Error
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


module Carry_Look_Ahead_Error(
input [3:0] A, B, 
input Cin, 
output [3:0] Sum, 
output Cout);
    wire [3:0] G, P, C;
    assign G[0] = A[0] & B[0],
                 G[1] = A[1] & B[1],
                 G[2] = A[2] & B[2],
                 G[3] = A[3] &B[3];

    assign P[0] = A[0] ^ B[0],
                 P[1] = A[1] ^ B[1],
                 P[2] = A[2] ^ B[2],
                 P[3] = A[3] ^ B[3];

    assign C[0] = Cin;
    assign C[1] = G[0] | (P[0] & C[0]),
                 C[2] = G[1] | (P[1] & C[1]),
                 C[3] = G[2] | (P[2] & C[2]),
                 Cout = G[3] | (P[3] & C[3]);

    assign S[0] = P[0] ^ C[0],
                 S[1] = P[1] ^ C[1],
                 S[2] = P[2] ^ C[2],
                 S[3] = P[3] ^ C[3];

endmodule

