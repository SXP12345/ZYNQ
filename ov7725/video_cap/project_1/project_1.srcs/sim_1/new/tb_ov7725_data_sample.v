`timescale 1ns / 1ps

module tb_ov7725_data_sample();

reg rst_n;
reg ov7725_pclk;//  input wire vid_io_in_clk,
reg ov7725_vsync;
reg ov7725_href;
reg [7:0] ov7725_din;

wire ov7725_rst_n;
wire ov7725_sgm_ctrl;
wire vid_io_in_clk;
wire vid_io_in_ce;
wire vid_vsync;
wire vid_active_video;
wire [23:0] vid_data;
  
initial begin
    rst_n = 0;
    ov7725_pclk = 0;
    #5000;
    rst_n = 1;
end
always #25 ov7725_pclk = ~ov7725_pclk;

reg [15:0] S;
reg [15:0] cnt;
reg [15:0] cnt_h;
reg [15:0] cnt_v;
always@(posedge ov7725_pclk) begin
    if(!rst_n) begin
        ov7725_href <= 0;
        ov7725_vsync <= 0;
        ov7725_din <= 0;
        
        S <= 0;
        cnt <= 0;
        cnt_h <= 0;
        cnt_v <= 0;
    end
    else begin
        if(S == 0) begin
            if(cnt == 1000) begin
                S <= 10;
                cnt <= 0;
                ov7725_vsync <= 1;
            end
            else begin
                cnt <= cnt + 1;
            end
        end
        else if(S == 10) begin
            if(cnt == 50) begin
                S <= 1;
                cnt <= 0;
                ov7725_vsync <= 0;
            end
            else begin
                cnt <= cnt + 1;
            end           
        end
        else if(S == 1) begin
            if(cnt == 250) begin
                S <= 2;
                cnt <= 0;
            end
            else begin
                cnt <= cnt + 1;
            end
        end
        else if(S == 2) begin
            if(cnt == 50) begin
                S <= 3;
                cnt <= 0;
            end
            else begin
                cnt <= cnt + 1;
            end
        end
        else if(S == 3) begin
            if(cnt_h == 16) begin
                S <= 4;
                cnt_h <= 0;
                ov7725_href <= 0;
                ov7725_din <= 0;
            end
            else begin
                cnt_h <= cnt_h + 1;
                ov7725_href <= 1;
                ov7725_din <= ov7725_din + 1;
            end
        end
        else if(S == 4) begin
            if(cnt == 50) begin
                cnt <= 0;
                if(cnt_v == 16) begin
                    S <= 5;
                    cnt_v <= 0;
                end
                else begin
                    S <= 1;
                    cnt_v <= cnt_v + 1;
                end
            end
            else begin
                cnt <= cnt + 1;
            end
        end
        else if(S == 5) begin
            if(cnt == 250) begin
                S <= 20;
                cnt <= 0;
                ov7725_vsync <= 1;
            end
            else begin
                cnt <= cnt + 1;
            end
        end
        else if(S == 20) begin
            if(cnt == 50) begin
                S <= 0;
                cnt <= 0;
                ov7725_vsync <= 0;
            end
            else begin
                cnt <= cnt + 1;
            end           
        end
    end 
end

ov7725_data_sample uut(
    .rst_n(rst_n),
    
    .ov7725_pclk(ov7725_pclk),
    .ov7725_vsync(ov7725_vsync),
    .ov7725_href(ov7725_href),
    .ov7725_din(ov7725_din),
    .ov7725_rst_n(ov7725_rst_n),
    .ov7725_sgm_ctrl(ov7725_sgm_ctrl),
    
    .vid_io_in_clk(vid_io_in_clk),
    .vid_io_in_ce(vid_io_in_ce),
    .vid_vsync(vid_vsync),
    .vid_active_video(vid_active_video),
    .vid_data(vid_data)
    ); 

endmodule
