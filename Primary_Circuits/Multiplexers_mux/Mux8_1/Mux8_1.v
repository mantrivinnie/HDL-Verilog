`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: Mux8_1
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
module Mux2_1(
input A, B, S, 
output Y);
    assign Y = (~S&A)|(S&B);
endmodule



module Mux8_1(
input [7:0] I, 
input [2:0] S, 
output Out);
    wire [0:5]O;
    
    Mux2_1 M1 (I[0], I[1], S[0], O[0]),
           M2 (I[2], I[3], S[0], O[1]),
           M3 (I[4], I[5], S[0], O[2]),
           M4 (I[6], I[7], S[0], O[3]),
           M5 (O[0], O[1], S[1], O[4]),
           M6 (O[2], O[3], S[1], O[5]),
           M7 (O[4], O[5], S[2], Out);
endmodule
