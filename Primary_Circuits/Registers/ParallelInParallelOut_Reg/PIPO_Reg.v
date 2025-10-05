`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2025 19:36:04
// Design Name: 
// Module Name: PIPOreg
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


module PIPOreg (
    input clk,         // Clock Signal
    input rst,         // Reset Signal
    input [3:0] D,     // 4-bit Parallel Input
    output reg [3:0] Q // 4-bit Parallel Output
);

always @(posedge clk or posedge rst) begin
    if (rst)
        Q <= 4'b0000;  // Reset Output to 0
    else
        Q <= D;        // Load Parallel Input D into Output Q
end

endmodule

