`timescale 1ns / 1ps

module ov7725_data_sample(
    input rst_n,
    
    input ov7725_pclk,
    input ov7725_vsync,
    input ov7725_href,
    input [7:0] ov7725_din,
    output ov7725_rst_n,
    output ov7725_sgm_ctrl,
    
    output vid_io_in_clk,
    output vid_io_in_ce,
    output vid_vsync,
    output vid_active_video,
    output [23:0] vid_data
    ); 
    reg ov7725_vsync_d1;
    reg ov7725_vsync_d2;
    reg ov7725_href_d1;
    reg ov7725_href_d2;
    reg ov7725_href_d3;
    reg ov7725_href_d4;
    reg [7:0] ov7725_din_d1;
    reg [7:0] ov7725_din_d2; 
    reg [7:0] ov7725_din_d3; 
    always@(posedge ov7725_pclk or negedge rst_n) begin
        if(!rst_n) begin
            ov7725_vsync_d1 <= 1'b0;
            ov7725_vsync_d2 <= 1'b0;
            ov7725_href_d1 <= 1'b0;
            ov7725_href_d2 <= 1'b0;
            ov7725_href_d3 <= 1'b0;
            ov7725_href_d4 <= 1'b0;
            ov7725_din_d1 <= 8'd0;
            ov7725_din_d2 <= 8'd0;
            ov7725_din_d3 <= 8'd0;
        end
        else begin
            ov7725_vsync_d1 <= ov7725_vsync;
            ov7725_vsync_d2 <= ov7725_vsync_d1;
            ov7725_href_d1 <= ov7725_href;
            ov7725_href_d2 <= ov7725_href_d1;
            ov7725_href_d3 <= ov7725_href_d2;
            ov7725_href_d4 <= ov7725_href_d3;
            ov7725_din_d1 <= ov7725_din;
            ov7725_din_d2 <= ov7725_din_d1;
            ov7725_din_d3 <= ov7725_din_d2;
        end
    end
 
    reg [7:0] wait_cnt;
    reg wait_done;
    wire ov7725_vsync_flag;
    assign ov7725_vsync_flag = ov7725_vsync_d1 & (~ov7725_vsync_d2);
    always@(posedge ov7725_pclk or negedge rst_n) begin
        if(!rst_n) begin
            wait_done <= 8'd0;
            wait_cnt <= 1'b0;
        end
        else begin
            if(ov7725_vsync_flag) begin
                if(wait_cnt == 8'd30) begin
                    wait_cnt <= 8'd0;
                    wait_done <= 1'b1;
                end
                else begin
                    wait_cnt <= wait_cnt + 8'd1;
                end
            end
        end
    end
    
    reg byte_flag;
    reg [15:0] RGB565;
    always@(posedge ov7725_pclk or negedge rst_n) begin
        if(!rst_n) begin
            byte_flag <= 1'b0;
            RGB565 <= 16'd0;
        end
        else begin
            if(ov7725_href_d2) begin
                if(byte_flag) begin
                    byte_flag <= 1'b0;
                    RGB565 <= {ov7725_din_d3, ov7725_din_d2};
                end
                else begin
                    byte_flag <= 1'b1;
                end
            end
            else begin
                byte_flag <= 1'b0;
//                RGB565 <= 16'd0;
            end
        end
    end
    
    reg vid_clk;
    always@(posedge ov7725_pclk or negedge rst_n) begin
        if(!rst_n) begin
            vid_clk <= 1'b0;
        end
        else begin
            vid_clk <= ~vid_clk;
        end
    end
    
    assign ov7725_rst_n = 1'b1;
    assign ov7725_sgm_ctrl = 1'b1;
    assign vid_io_in_clk = vid_clk;
    assign vid_io_in_ce = wait_done;
    assign vid_vsync = wait_done?ov7725_vsync_d2:0;
    assign vid_active_video = wait_done?ov7725_href_d4:0;
    assign vid_data = {RGB565[15:11],3'd0,RGB565[10:5],2'd0,RGB565[4:0],3'd0};
endmodule
