`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: SIPOreg
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


module SIPOreg(clk,rst,sin,pout,P);
input clk,rst,sin;
output [2:0]P;
output pout;
wire [2:0]P;
        DFF d1(clk,rst,sin,P[2]),
            d2(clk,rst,P[2],P[1]),
            d3(clk,rst,P[1],P[0]),
            d4(clk,rst,P[0],pout);  
   
endmodule 
