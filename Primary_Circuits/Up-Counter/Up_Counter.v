`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: UpCnt
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


module UpCnt(clk,clr,Q);
input clk,clr;
output reg [3:0]Q;
always @(posedge clk)
begin
    if(clr)
        Q<=4'b0000;
    else
        Q<=Q+1'b1;
end
endmodule
