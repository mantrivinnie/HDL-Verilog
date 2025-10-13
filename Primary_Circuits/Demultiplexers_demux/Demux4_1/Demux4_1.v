`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Design Name: 
// Module Name: Demux41_if
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

/*
4:1 De-Multiplexer (DEMUX)

A De-Multiplexer (DEMUX) is a digital circuit that takes one input and routes it to one of many outputs, based on select lines.
A 1-to-4 DEMUX (often written as 4:1 DEMUX) has:
1 data input (D)
2 select lines (S1, S0)
4 outputs (Y0, Y1, Y2, Y3)
*/


/*module Demux41_if(O,S,D);
    input D;
    input [1:0]S;
    output reg [3:0]O;
   
    always@ (D,S)
    begin
    if(S==00)
        O={D,3'b000};

    else if(S==2'b01)
        O={1'b0,D,2'b0};
    else if(S==2'b10)
        O={2'b00,D,0};
    else 
        O={3'b000,D};
    end
    endmodule
    */


    
module Demux41_if(d,s,O);
    input d;
    input [1:0]s;
    output reg[3:0]O;
 always@(d,s)
 begin
 if (s==00)
 O={d,3'b0};
 else if (s==01)
 O={1'b0,d,2'b0}; 
 else if (s== 2'b10)
 O={2'b0,d,1'b0}; 
 else
 O={3'b0,d};
 end
 endmodule
