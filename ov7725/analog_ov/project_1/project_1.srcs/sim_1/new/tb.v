`timescale 1ns / 1ps

module tb();

reg clk;
reg rst_n;

wire pclk;
wire vsync;
wire href;
wire [7:0] data;

initial begin
    clk = 0;
    rst_n = 0;
    #5000;
    rst_n = 1;
end

always #10 clk = ~clk; 
    
analog_ov uut0(
    .clk(clk),
    .rst_n(rst_n),
    
    .pclk(pclk),
    .vsync(vsync),
    .href(href),
    .data(data)
    );
endmodule
