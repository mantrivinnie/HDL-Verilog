`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: SRFF
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


module SRFF(clk,rst,S,R,q,qbar);
    input clk,S,R,rst;
    output reg q;
    output reg qbar;
    always @(posedge clk or posedge rst)
    begin 
        if(rst)
            q<=0;
        else
            begin
                case({S,R})
                2'b00:q<=q;
                2'b01:q<=0;
                2'b10:q<=1;
                2'b11:q<=1'bx;
                endcase
            end
            assign qbar= ~q;
    end
endmodule
