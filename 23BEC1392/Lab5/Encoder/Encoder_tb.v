module Encoder_tb;

reg[7:0] D;
wire [2:0] Y;

Encoder uut (D,Y);

initial begin

D = 8'b000000001; #100;
D = 8'b000000010; #100;
D = 8'b000000100; #100;
D = 8'b000001000; #100;
D = 8'b000010000; #100;
D = 8'b000100000; #100;
D = 8'b001000000; #100;
D = 8'b010000000; #100;
D = 8'b100000000;

end 
endmodule