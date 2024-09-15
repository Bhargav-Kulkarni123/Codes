module halfAdder(Sum,Carry,A,B);

input A,B;
output Sum, Carry;

xor(Sum,A,B);
and(Carry,A,B);

endmodule


module Multiplier2x2(P,C,A,B,I);

input [1:0] A;
input [1:0] B;
output [3:0] P;
output C;
output [2:0] I;

and(P[0],A[0],B[0]);

and(I[1],A[0],B[1]);
and(I[0],A[1],B[0]);
halfAdder HA1(P[1],C,I[0],I[1]);

and(I[2],A[1],B[1]);
halfAdder HA2(P[2],P[3],I[2],C);

endmodule

