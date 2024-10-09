module t_tb();

reg CLK,T;
wire Q,Qbar;

t uut (CLK,T,Q,Qbar);

always
#100 CLK = ~CLK;

initial 
begin 
CLK = 0;
T = 0;
#100; T = 0;
#100; T = 1;
#100; T = 0;
#100; T = 1;

end
endmodule
