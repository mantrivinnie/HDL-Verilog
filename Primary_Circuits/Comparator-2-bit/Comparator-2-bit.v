`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: Comp2bit
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



module Comp2bit(a,b,G,L,E
 );
 input [0:1]a,b;
 output reg G,L,E;
 always@*
  begin
   if (a==b)
     begin
      G=0;L=0;E=1;
      end
   else if(a>b)
     begin
      G=1;L=0;E=0; 
      end
   else if (a<b)
      begin 
      G=0;L=1;E=0;
      end
  else 
   begin 
     G=0;L=0;E=0; 
   end
 end
 endmodule
  
