`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2024 07:38:55 PM
// Design Name: 
// Module Name: blink
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module blink(
    input clk,
    output led_d3
    );
   
   localparam WAIT_CLKS = 50000000;
   reg [31:0] clk_counter = 20'd0;
   reg state = 1'b1;
   
   assign led_d3 = state;
   always @ (posedge clk) begin
       clk_counter <= clk_counter + 1;
       if (clk_counter == WAIT_CLKS) begin
           clk_counter <= 0;
           
           if (state == 1) begin
            state <= 0;
           end
           else begin
            state <= 1;
           end 
       end
   end
    
endmodule
