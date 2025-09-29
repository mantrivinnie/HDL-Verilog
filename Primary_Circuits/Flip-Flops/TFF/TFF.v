`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: TFF
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


module TFF(clk,rst,T,q,qbar);
    input clk,T,rst;
    output reg q;
    output reg qbar;
    always @(posedge clk or posedge rst)
    begin 
        if (rst)
        q<= 0;       // Reset Q to 0
    else if (T)
        q<= ~q;      // Toggle Q when T = 1
    else
        q<=q;  // Retain the previous state when T = 0
         qbar<=q;    
    end
endmodule
