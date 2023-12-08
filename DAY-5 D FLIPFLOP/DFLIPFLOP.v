`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2023 21:43:41
// Design Name: 
// Module Name: DFLIPFLOP
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


module DFLIPFLOP(clk,rst,d,q);
input clk,rst,d;
output q;
reg q;
always@(posedge clk)
begin
if(rst==1)
q=1'b0;
else
case(d)
1'b0:q=q;
1'b1:q=1'b1;
endcase
end
endmodule
