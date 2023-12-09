`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2023 22:52:13
// Design Name: 
// Module Name: tflipflop_test
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


module tflipflop_test;
reg clk,rst,t;
wire q;
tflipflop uut(.clk(clk),.rst(rst),.t(t),.q(q));
initial
begin
rst=1;
clk=0;
#100; rst=0; t=0;
#100; 
t=1;
end
always
#30clk=~clk;
endmodule
