`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2023 23:50:23
// Design Name: 
// Module Name: Decoder
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
module Decoder(
    input a,b,
    output y1,y2,y3,y4
    );
    assign y1 = ~a&~b;
    assign y2 = ~a&b;
    assign y3 = a&~b;
    assign y4 = a&b;
    
endmodule

   
