module HalfAdder_GM(A,B,Carry,Sum);

input A,B;
output Sum,Carry;

//Sum 
xor(Sum,A,B);

//Carry
and(Carry,A,B);

endmodule