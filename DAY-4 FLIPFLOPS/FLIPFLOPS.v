`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2023 22:42:58
// Design Name: 
// Module Name: FLIPFLOPS
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


module FLIPFLOPS(s,r,rst,clk,q);
input s,r,rst,clk;
output q;
reg q;
always@(posedge clk)
begin
if(rst==1)
q=1'b0;
else
case({s,r})
2'b00:q=q;
2'b01:q=1'b0;
2'b10:q=1'b1;
2'b11:q=1'bz;
endcase
end
endmodule
