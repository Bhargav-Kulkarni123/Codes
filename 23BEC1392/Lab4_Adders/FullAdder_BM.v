module FullAdder_BM(A,B,C,Carry,Sum);
input wire A,B,C;
output reg Carry,Sum;

//for always block outputs should always be declared as reg type
always @(A,B,C) //always @(*) its better practice.
begin 
Sum = A^B^C;

Carry = (A&B) | ((A^B)&C);
end
endmodule
