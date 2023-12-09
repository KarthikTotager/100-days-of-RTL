`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2023 22:44:48
// Design Name: 
// Module Name: tflipflop
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


module tflipflop(clk,rst,t,q);
input clk,rst,t;
output q;
reg q;
always@(posedge clk)
begin
if(rst==1)
q=0;
else
if(t==0)
q=q;
else
q=~q;
end
endmodule
