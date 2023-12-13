`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2023 23:53:51
// Design Name: 
// Module Name: Decoder_test
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



module Decoder_test(

    );
    reg a;
    reg b;
    wire y1;
    wire y2;
    wire y3;
    wire y4;
    Decoder uut (
            .a(a),
            .b(b),
            .y1(y1),
            .y2(y2),
            .y3(y3),
            .y4(y4)
    );
    initial begin
    $monitor("time=$g,a=%b,b=%b,y1=%b,y2=%b,y3=%b,y4=%b",$time,a,b,y1,y2,y3,y4);
    end
    initial begin
    a = 0;
    b = 0;
    #100;
    a = 0;
    b = 1;
    #100;
    a = 1;
    b = 0;
    #100;
    a = 1;
    b = 1;
    end   
endmodule
