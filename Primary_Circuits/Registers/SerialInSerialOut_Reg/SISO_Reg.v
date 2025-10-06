`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// Design Name: 
// Module Name: SISOreg
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

module DFF(clk,rst,D,q,qbar);
    input clk,D,rst;
    output reg q;
    output reg qbar;
    always @(posedge clk or posedge rst)
    begin 
        if(rst)
            q<=0;
        else
            begin
                q<=D;
            end
                qbar<= ~q;
    end
endmodule

module SISOreg(clk,rst,sin,sout);
input clk,rst,sin;
output sout;
wire [2:0]Q;
        DFF d1(clk,rst,sin,Q[0]),
            d2(clk,rst,Q[0],Q[1]),
            d3(clk,rst,Q[1],Q[2]),
            d4(clk,rst,Q[2],sout);  
   
endmodule
