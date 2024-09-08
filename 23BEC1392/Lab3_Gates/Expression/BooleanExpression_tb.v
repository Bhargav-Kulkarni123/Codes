module BooleanExpression_tb;
reg A,B,C;
wire Y;

BooleanExpression ins(A,B,C,Y);

initial begin

A=0; B=0; C=0;
#100;
A=0; B=0; C=1;
#100;
A=0; B=1; C=0;
#100;
A=0; B=1; C=1;
#100;
A=1; B=0; C=0;
#100;
A=1; B=0; C=1;
#100;
A=1; B=1; C=0;
#100;
A=1; B=1; C=1;
#100;

end 
endmodule