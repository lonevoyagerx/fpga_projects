module design(
    input clk,
    output reg led
);

reg [7:0] counter = 0;

always @(posedge clk) begin
    counter <= counter + 1;
    led <= counter[2];
end

endmodule