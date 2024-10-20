module down_counter(
    input clk,
    input reset,
    output reg [3:0] q // 'q' should be declared as a reg because we are updating it inside always block
);

    reg [3:0] state;

    // Logic for counting down
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= 4'b1110; // Start at 14
        else begin
            case (state)
                4'b1110: state <= 4'b1100; // 14 -> 12
                4'b1100: state <= 4'b1101; // 12 -> 13
                4'b1101: state <= 4'b1010; // 13 -> 10
                4'b1010: state <= 4'b1001; // 10 -> 9
                4'b1001: state <= 4'b0110; // 9 -> 6
                4'b0110: state <= 4'b0100; // 6 -> 4
                4'b0100: state <= 4'b0010; // 4 -> 2
                4'b0010: state <= 4'b1110; // 2 -> 14 (wrap around)
                default: state <= 4'b1110; // Default to 14 on unexpected state
            endcase
        end
    end

    // Output the current state to q
    always @(state) begin
        q <= state;
    end

endmodule
