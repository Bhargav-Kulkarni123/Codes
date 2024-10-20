module mod_n_counter #(parameter N = 10) (
    input wire clk,           // Clock signal
    input wire rst,           // Reset signal (active high)
    output reg [15:0] count   // Output count value
);

    // Process to implement the counter logic
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 16'b0;    // Reset the count to 0
        end else if (count == N-1) begin
            count <= 16'b0;    // Reset the count if max value (N-1) is reached
        end else begin
            count <= count + 1; // Increment count
        end
    end

endmodule

