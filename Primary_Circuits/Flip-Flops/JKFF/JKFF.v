`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: JKFF
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


module JKFF(clk,rst,J,K,q,qbar);
    input clk,J,K,rst;
    output reg q=0;
    output reg qbar;
    always @(posedge clk or posedge rst)
    begin 
        if(rst)
            q<=0;
        else
            begin
                case({J,K})
                2'b00:q<=q;
                2'b01:q<=0;
                2'b10:q<=1;
                2'b11:q<=~q;
                endcase
            end
            assign qbar= ~q;
    end
endmodule

