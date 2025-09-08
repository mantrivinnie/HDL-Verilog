`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: Logic_Gates
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

/* USING DATA FLOW
module Logic_Gates(
    input A,
    input B,
    output and,or.not,nand,nor,xor,xnor
    );
        assign and = A & B,
                 or= A | B,
                  not= ~A,
                  nand= ~(A & B),
                  nor= ~(A | B),
                  xor= A ^ B,
                  xnor= ~(A ^ B);

endmodule
*/


//USING DATA FLOW
module Logic_Gates(
    input A,
    input B,
    output [0:6] Q
    );
        assign Q[0] = A & B,
                 Q[1]= A | B,
                  Q[2]= ~A,
                  Q[3]= ~(A & B),
                  Q[4]= ~(A | B),
                  Q[5]= A ^ B,
                  Q[6]= ~(A ^ B);

endmodule

/* USING GATE FLOW
module Logic_Gates(
    input A,
    input B,
    output [0:6] Q
    );
        and A1= A & B,
        or O1= A | B,
        not N1= ~A,
        nand N2= ~(A & B),
        nor N3= ~(A | B),
        xor X1= A ^ B,
        xnor X2= ~(A ^ B);

endmodule
*/
