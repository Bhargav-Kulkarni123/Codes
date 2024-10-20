module up_down_counter (
    input wire clk,           // Clock signal
    input wire rst,           // Reset signal (active high)
    input wire up_down,       // Up/Down control signal (1 = up, 0 = down)
    output reg [15:0] count   // Output count value
);

    // Process to implement the counter logic
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 16'b0;     // Reset count to 0
        end else if (up_down) begin
            count <= count + 1; // Increment count
        end else begin
            count <= count - 1; // Decrement count
        end
    end

endmodule

