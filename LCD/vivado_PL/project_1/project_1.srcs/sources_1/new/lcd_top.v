`timescale 1ns / 1ps

module lcd_top(
    input clk,
    input rst_n,
    
    output lcd_cs,
    output lcd_reset,
    output lcd_dc,
    output lcd_sdi,
    output lcd_sck,
    output lcd_led
    );
    
    assign lcd_reset = rst_n;
    
    always@(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            
        end
        else begin
            
        end
    end
endmodule
