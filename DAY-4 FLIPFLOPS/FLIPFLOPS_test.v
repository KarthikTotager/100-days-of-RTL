`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2023 22:57:06
// Design Name: 
// Module Name: FLIPFLOPS_test
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


module FLIPFLOPS_test;
reg s,r,clk,rst;
wire q;
FLIPFLOPS uut(.s(s),.r(r),.clk(clk),.rst(rst),.q(q));
initial
begin
rst=1;
clk=1'b0;
#100; rst=0;
#100; s=0; r=0;
#100; s=0; r=1;
#100; s=1; r=0;
#100; s=1; r=1;
end 
always
#30 clk=~clk;
endmodule
