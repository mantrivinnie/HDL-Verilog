`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: Mod10
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


module Mod10(clk,rst,Q);
input clk,rst;
output reg [3:0]Q;
always @(posedge clk)
begin
    if(rst)
        Q<=4'b0000;
    else if(Q<9)
        Q<=Q+1'b1;
    else
        Q<=0;
end
endmodule
