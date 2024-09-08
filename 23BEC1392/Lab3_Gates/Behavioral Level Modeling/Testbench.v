module Testbench;
reg A,B;
wire Y;

NAND_GATE obj(A,B,Y);

initial begin
A=0; B=0;
#100;
A=0; B=1;
#100;
A=1; B=0;
#100;
A=1; B=1;
#100;
end
endmodule;