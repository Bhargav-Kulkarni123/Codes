module jk(J,K,CLK,Q,Qbar);
input J,K,CLK;
output reg Q,Qbar;

initial begin
Q = 0;
Qbar = 1;
end

always @(posedge CLK)
begin 
if(J==0 & K==0)
Q=Q;
else if(J==0 & K==1)
Q=0;
else if(J==1 & K==0)
Q=1;
else if(J==1 & K==1)
Q=~Q;

Qbar = ~Q;
end
endmodule