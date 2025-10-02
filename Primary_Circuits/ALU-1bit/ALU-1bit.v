`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: ALU_1bit
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

//Using behavioural modelling 

module ALU_1bit(A,B,sel,result,carry);
input A,B;
input [2:0]sel;
output reg result,carry;
always @(*)
begin
    carry=0;
    case(sel)
        3'b000: {carry,result}=A+B;
        3'b001: {carry,result}=A-B;
        3'b010: result=A|B;
        3'b011: result=A&B;
        3'b100: result=A<<1;
        3'b101: result=A>>1;
        3'b110: result=A+1;
        3'b111: result=A-1;
        default: result=0;
        endcase
end
endmodule
