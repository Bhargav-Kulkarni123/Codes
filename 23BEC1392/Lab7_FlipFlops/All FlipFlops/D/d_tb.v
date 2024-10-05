module d_tb();

wire Q, Qbar;
reg D, CLK;

d uut (CLK,D,Q,Qbar);

always 
#50 CLK = ~CLK;

initial 
begin
CLK = 0;
D = 1;

#50; D=1;
#50; D=0;
#50; D=1;
#50; D=0;
#50; D=1;
#50; D=0;

end
endmodule