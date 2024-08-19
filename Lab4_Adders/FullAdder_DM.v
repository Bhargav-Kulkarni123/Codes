module FullAdder_DM(A,B,C,Carry,Sum);
input A,B,C;
output Carry,Sum;

assign Sum = A^B^C;
assign Carry = (A&B) | ((A^B)&C);

endmodule  
