module EXNOR_GATE(A,B,Y);
input A,B;
output Y;
xnor(Y,A,B); //There is no gate called xnor
endmodule;
