`timescale 1ns/1ps

module tb;

reg clk = 0;
wire led;

// Instantiate DUT
top uut (
    .clk(clk),
    .led(led)
);

/////////////////////////////////////////////////
// CLOCK GENERATION (VERY IMPORTANT)
/////////////////////////////////////////////////
always #5 clk = ~clk;   // 10ns clock period

/////////////////////////////////////////////////
// SIMULATION CONTROL
/////////////////////////////////////////////////
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);

    #2000;   // run long enough
    $finish;
end

endmodule