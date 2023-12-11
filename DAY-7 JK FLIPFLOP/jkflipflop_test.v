`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2023 22:09:32
// Design Name: 
// Module Name: jkflipflop_test
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


module jkflipflop_test(
   );
   reg J;
    reg K;
    reg clk;
    reg rst;
    wire Q;
    jkflipflop uut( 
    .J(J),
    .K(K),
    .rst(rst),
    .clk(clk),
    .Q(Q)
    );
    initial begin
    clk=0;
    rst=1;
    #100; rst=0; clk=1;
    #100; J=0; K=0;
    #100; J=0; K=1;
    #100; J=1; K=0;
    #100; J=1; K=1;
    end  
    always
    #50 clk=~clk;
    endmodule
