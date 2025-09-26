`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: DownCnt
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


module DownCnt(clk,clr,Q);
input clk,clr;
output reg [3:0]Q;
always @(posedge clk)
begin
    if(clr)
        Q<=4'b1111;
    else
        Q<=Q-1'b1;
end
endmodule
