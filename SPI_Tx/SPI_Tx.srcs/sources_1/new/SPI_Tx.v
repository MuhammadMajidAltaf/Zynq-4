`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2015 02:40:09 PM
// Design Name: 
// Module Name: SPI_Tx
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


module SPI_Tx(
    input clk,
    input miso,
    input [7:0] ctrl_reg,
    output mosi,
    output cs,
    input [7:0] mem_out,
    output [7:0] mem_in
    );
endmodule
