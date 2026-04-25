module top (
    input wire clk,   // onboard clock
    output reg led    // LED output
);

    reg [24:0] counter = 0;  // large counter for delay

    always @(posedge clk) begin
        counter <= counter + 1;
        led <= counter[3];   // toggle LED slowly
    end

endmodule