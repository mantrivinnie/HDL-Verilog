`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Design Name: 
// Module Name: Encoder_83
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

//without priority 
module Encoder_83(I,Y);
input[7:0]I;
output reg [2:0]Y;
always @*
case (I)
  8'b00000001: Y = 3'b000;
  8'b00000010: Y = 3'b001;
  8'b00000100: Y = 3'b010;
  8'b00001000: Y = 3'b011;
  8'b00010000: Y = 3'b100;
  8'b00100000: Y = 3'b101;
  8'b01000000: Y = 3'b110;
  8'b10000000: Y = 3'b111;
  endcase
  endmodule
  
  
  //with priority
 /* module Encoder_83(I,Y);
input[7:0]I;
output reg [2:0]Y;
always @*
casex (I)
  8'b00000001: Y = 3'b000;
  8'b0000001x: Y = 3'b001;
  8'b000001xx: Y = 3'b010;
  8'b00001xxx: Y = 3'b011;
  8'b0001xxxx: Y = 3'b100;
  8'b001xxxxx: Y = 3'b101;
  8'b01xxxxxx: Y = 3'b110;
  8'b1xxxxxxx: Y = 3'b111;
  endcase
  endmodule
  */
  
 
 
