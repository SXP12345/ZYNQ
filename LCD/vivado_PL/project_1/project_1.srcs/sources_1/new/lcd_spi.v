`timescale 1ns / 1ps

module lcd_spi(
    input clk,
    input rst_n,
    
    input [15:0] din,
    input din_valid,
    input is_8bit,
    input is_data,
    
    output cs,
    output dc,
    output scl,
    output sda
    );
    
    reg reg_cs;
    reg reg_dc;
    reg reg_scl;
    reg reg_sda;
    always@(posedge clk) begin
        if(!rst_n) begin
            reg_cs <= 0;
            reg_dc <= 0;
            reg_scl <= 0;
            reg_sda <= 0;
        end
        else begin
            
        end
    end

endmodule
