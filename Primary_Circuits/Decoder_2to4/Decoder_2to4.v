`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Design Name: 
// Module Name: Decoder24_if
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Dependencies: 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


/*module Decoder24_if(S,I);
    input [1:0]S;
    output reg [3:0]I;
   
    always@ S
    begin
    if(S==00)
        I={1'b1,3'b000};

    else if(S==2'b01)
        I={1'b0,1'b1,2'b00};
    else if(S==2'b10)
        I={2'b00,1'b1,0};
    else 
        I={3'b000,1'b1};
    end
    endmodule
*/


module Decoder_2_4(a,I);
    input [1:0] a;
    output [3:0]I;
    reg [3:0]I;
 always@(a,I)
 begin
 if (a==00)
 I={1,3'b0};
 else if (a==2'b01)
 I=4'b0010;
 else if (a== 2'b10)
 I=4'b0100; 
 else
 I={3'b0,1};
 end
endmodule
