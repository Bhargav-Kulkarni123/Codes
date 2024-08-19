module EXNOR_GATE(A,B,Y);
input A,B;
output Y;
assign Y = ~(A^B);
endmodule;

