`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2023 22:00:10
// Design Name: 
// Module Name: jkflipflop
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


module jkflipflop(
input clk,rst,J,K,
output reg Q 
);
always@(posedge clk)
begin
if(rst==1)
Q=0;
else
case({J,K})
2'b00:Q=Q;
2'b01:Q=0;
2'b10:Q=1;
2'B11:Q=~Q;
endcase
end
endmodule
