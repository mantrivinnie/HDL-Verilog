module Full_Adder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (Cin & (A ^ B));

endmodule


module Ripple_Carry_Adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
    );
    wire [2:0]C;
    Full_Adder FA1(A[0],B[0],Cin,S[0],C[0]),
               FA2(A[1],B[1],C[0],S[1],C[1]),
               FA3(A[2],B[2],C[1],S[2],C[2]),
               FA4(A[3],B[3],C[2],S[3],Cout);
endmodule
