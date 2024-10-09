module d_tb();

wire Q, Qbar;
reg D, CLK;

d uut (CLK,D,Q,Qbar);

always 
begin 
#50 CLK = ~CLK;
end

initial 
begin
CLK = 0;

#50; D=1;
#50; D=0;

$finish;
end
endmodule