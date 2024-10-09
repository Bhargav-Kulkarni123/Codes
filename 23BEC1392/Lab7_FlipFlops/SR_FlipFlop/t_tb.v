module t_tb();

reg CLK,T;
wire Q,Qbar;

t uut (CLK,T,Q,Qbar);

always
begin
#50 CLK = ~CLK;
end

initial 
begin 
CLK = 0;
#100 T = 0;
#100 T = 0;
#100 T = 0;
#100 T = 0;
#finish
end
endmodule
