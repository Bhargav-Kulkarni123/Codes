module Demux(S, Y);
    input [3:0] S;  // 4-bit select lines
    output [15:0] Y;  // 16-bit output lines

    assign Y[0] = ~S[3] & ~S[2] & ~S[1] & ~S[0];
    assign Y[1] = ~S[3] & ~S[2] & ~S[1] &  S[0];
    assign Y[2] = ~S[3] & ~S[2] &  S[1] & ~S[0];
    assign Y[3] = ~S[3] & ~S[2] &  S[1] &  S[0];
    assign Y[4] = ~S[3] &  S[2] & ~S[1] & ~S[0];
    assign Y[5] = ~S[3] &  S[2] & ~S[1] &  S[0];
    assign Y[6] = ~S[3] &  S[2] &  S[1] & ~S[0];
    assign Y[7] = ~S[3] &  S[2] &  S[1] &  S[0];
    assign Y[8] =  S[3] & ~S[2] & ~S[1] & ~S[0];
    assign Y[9] =  S[3] & ~S[2] & ~S[1] &  S[0];
    assign Y[10] =  S[3] & ~S[2] &  S[1] & ~S[0];
    assign Y[11] =  S[3] & ~S[2] &  S[1] &  S[0];
    assign Y[12] =  S[3] &  S[2] & ~S[1] & ~S[0];
    assign Y[13] =  S[3] &  S[2] & ~S[1] &  S[0];
    assign Y[14] =  S[3] &  S[2] &  S[1] & ~S[0];
    assign Y[15] =  S[3] &  S[2] &  S[1] &  S[0];

endmodule
