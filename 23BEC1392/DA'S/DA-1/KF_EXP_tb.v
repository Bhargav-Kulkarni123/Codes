module KF_EXP_tb;

reg A,B,C,D;
wire Y;

KF_EXP ins(A,B,C,D,Y);

initial begin

A=0; B=0; C=0; D=0;
#100;
A=0; B=0; C=0; D=1;
#100;
A=0; B=0; C=1; D=0;
#100;
A=0; B=0; C=1; D=1;
#100;
A=0; B=1; C=0; D=0;
#100;
A=0; B=1; C=0; D=1;
#100;
A=0; B=1; C=1; D=0;
#100;
A=0; B=1; C=1; D=1;
#100;
A=1; B=0; C=0; D=0;
#100;
A=1; B=0; C=0; D=1;
#100;
A=1; B=0; C=1; D=0;
#100;
A=1; B=0; C=1; D=1;
#100;
A=1; B=1; C=0; D=0;
#100;
A=1; B=1; C=0; D=1;
#100;
A=1; B=1; C=1; D=0;
#100;
A=1; B=1; C=1; D=1;
#100;

end 
endmodule