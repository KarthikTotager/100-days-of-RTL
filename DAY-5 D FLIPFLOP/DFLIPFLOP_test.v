`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2023 21:49:22
// Design Name: 
// Module Name: DFLIPFLOP_test
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


module DFLIPFLOP_test;
reg clk,rst,d;
wire q;
DFLIPFLOP uut(.clk(clk),.d(d),.rst(rst),.q(q));
initial
begin
rst=1;
clk=1'b0;
#100; rst=0; d=0;
#100; d=1;
end
always
#30 clk=~clk;
endmodule
