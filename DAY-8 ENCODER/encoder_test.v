`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2023 23:52:15
// Design Name: 
// Module Name: encoder_test
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


module encoder_test(

    );
    reg [7:0]din;
    reg en;
    wire [2:0]y;
    encoder uut (
            .din(din),
            .en(en),
            .y(y)
    );
    initial begin
    $monitor("time=$g,din,y,en",$time,din,y,en);
    end
    initial begin
    en = 0;
    #100;din = 8'b00000001;
    en = 1;
    #100;din = 8'b00000010;
    #100;din = 8'b00001000;
    #100;din = 8'b00010000;
    #100;din = 8'b00100000;
    #100;din = 8'b01000000;
    #100;din = 8'b10000000;
    
    end
endmodule

