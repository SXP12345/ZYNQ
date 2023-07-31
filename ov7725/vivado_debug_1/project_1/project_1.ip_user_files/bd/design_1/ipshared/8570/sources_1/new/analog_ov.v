`timescale 1ns / 1ps

module analog_ov(
    input clk,
    input rst_n,
    
    output reg pclk,
    output reg vsync,
    output reg href,
    output reg [7:0] data
    );
    
    parameter N = 4;
    reg [31:0] cnt;
    reg [31:0] v_cnt;
    reg [7:0] S;
    always@(posedge clk) begin
        if(!rst_n) begin
            pclk <= 0;
            S <= 0;
            cnt <= 0;
            v_cnt <= 0;
            vsync <= 0;
            href <= 0;
            data <= 0;
        end
        else begin
            pclk <= ~pclk;
            if(pclk) begin
                if(S == 0) begin
                    if(cnt == 32'd10000) begin
                        S <= 1;
                        cnt <= 0;
                    end
                    else begin
                        cnt <= cnt + 1;
                    end
                end
                else if(S == 1) begin
                    if(cnt == 32'd50) begin
                        S <= 2;
                        cnt <= 0;
                        vsync <= 0;
                    end
                    else begin
                        cnt <= cnt + 1;
                        vsync <= 1;
                    end
                end
                else if(S == 2) begin
                    if(cnt == 32'd500) begin
                        S <= 3;
                        cnt <= 0;
                    end
                    else begin
                        cnt <= cnt + 1;
                    end
                end
                else if(S == 3) begin
                    if(cnt == N+N) begin
                        href <= 0;
                        data <= 0;
                        cnt <= 0;
                        if(v_cnt == N) begin
                            S <= 4;
                            v_cnt <= 0;
                        end
                        else begin
                            S <= 2;
                            v_cnt <= v_cnt + 1;
                        end
                    end
                    else begin
                        cnt <= cnt + 1;
                        href <= 1;
                        data <= data + 1;
                    end
                end
                else if(S == 4) begin
                    if(cnt == 32'd500) begin
                        S <= 5;
                        cnt <= 0;
                    end
                    else begin
                        cnt <= cnt + 1;
                    end
                end
                else if(S == 5) begin
                    if(cnt == 32'd50) begin
                        S <= 0;
                        cnt <= 0;
                        vsync <= 0;
                    end
                    else begin
                        cnt <= cnt + 1;
                        vsync <= 1;
                    end
                end
                else begin
                    S <= 0;
                end
            end
        end
    end
endmodule
