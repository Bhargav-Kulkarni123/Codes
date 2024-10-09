module sr_flipflop(Q,Qbar,S,R,CLK);

input S,R,CLK;
output reg Q,Qbar;

always @(posedge CLK)
begin 

case({S,R})
2'b00 : Q=Q;
2'b01 : Q=1'b0;
2'b10 : Q=Q;
2'b11 : Q=1'bx;
endcase
Qbar = ~Q;
end
endmodule