`timescale 1ns/1ps

module tb;

reg clk = 0;
wire led;

 suresh uut (
    .clk(clk),
    .led(led)
);

 
always #5 clk = ~clk;  
 
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);
    $monitor("Time  = %0t clk = %b led = %d  ",$time,clk,led);

     #500;   
    $finish;
end

endmodule