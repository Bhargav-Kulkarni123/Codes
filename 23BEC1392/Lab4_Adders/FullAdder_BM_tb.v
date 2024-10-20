module FullAdder_BM_tb;
reg A,B,C;
wire Sum,Carry;

FullAdder_BM FA(A,B,C,Carry,Sum);

initial 
begin 

A=0;B=0;C=0;
#100; 
A=0;B=0;C=1;
#100; 
A=0;B=1;C=0;
#100; 
A=0;B=1;C=1;
#100; 
A=1;B=0;C=0;
#100; 
A=1;B=0;C=1;
#100; 
A=1;B=1;C=0;
#100; 
A=1;B=1;C=1;
#100;

end
endmodule;