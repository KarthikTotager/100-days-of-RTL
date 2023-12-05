`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2023 22:10:27
// Design Name: 
// Module Name: MUX_test
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


module MUX_test;
reg a,b,s;
wire y;
MUX uut(.a(a),.b(b),.s(s),.y(y));
initial
begin
a=0;
b=0;
s=0;
#100 
a=0;
 b=0;
  s=1;
  #100
  a=0;
  b=1;
  s=0;
#100
 a=0;
 b=1;
 s=1;
#100 
a=1;
b=0;
s=0;
#100
 a=1;
 b=0;
 s=1;
#100 
a=1;
 b=1;
  s=0;
#100
 a=1;
 b=1;
  s=1;
  end
  endmodule
