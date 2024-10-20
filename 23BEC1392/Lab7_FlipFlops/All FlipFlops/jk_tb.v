module jk_tb;

wire Q,Qbar;
reg J,K,CLK;

jk uut (J,K,CLK,Q,Qbar);

always 
#100 CLK= ~CLK;

initial 
begin

CLK = 0;
J = 0;
K = 0;

#100; J = 1; K = 1; 
#100; J = 1; K = 1; 
#100; J = 0; K = 0; 
#100; J = 0; K = 1; 
#100; J = 1; K = 0; 
$finish;
end
endmodule