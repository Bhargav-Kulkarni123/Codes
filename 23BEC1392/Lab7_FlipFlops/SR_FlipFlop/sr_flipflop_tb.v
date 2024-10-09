module sr_flipflop_tb;
reg S,R,CLK;
wire Q,Qbar;

sr_flipflop uut (Q,Qbar,S,R,CLK);

always 
#100 CLK=~CLK;

initial 
begin

CLK = 1;
#200 S=1; R=0;
#200 S=0; R=0;
#200 S=0; R=1;
#200 S=1; R=1;
end
endmodule