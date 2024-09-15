module fullAdder(A,B,C,Sum,Carry);
input A,B,C;
output Sum,Carry;

assign
Sum = A^B^C;

assign
Carry = (A&B)|((A^B)&C);

endmodule


module Adder4bit(S,C,B,A);

input [3:0] A;
input [3:0] B;
output [3:0] S;
output [3:0] C;

fullAdder FA1(A[0],B[0],0,S[0],C[0]);
fullAdder FA2(A[1],B[1],C[0],S[1],C[1]);
fullAdder FA3(A[2],B[2],C[1],S[2],C[2]);
fullAdder FA4(A[3],B[3],C[2],S[3],C[3]);

endmodule
