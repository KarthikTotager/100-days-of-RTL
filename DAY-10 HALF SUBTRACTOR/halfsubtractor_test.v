`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2023 23:29:50
// Design Name: 
// Module Name: halfsubtractor_test
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


module halfsubtractor_test;
reg a;
reg b;
wire diff;
wire bor;
halfsubtractor uut(.a(a),.b(b),.diff(diff),.bor(bor));
initial
begin
a=0;
b=0;
#100;
a=0; 
b=1;
#100; 
a=1; 
b=0;
#100; 
a=1; 
b=1;
end 
endmodule
