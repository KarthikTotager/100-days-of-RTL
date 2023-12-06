`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2023 22:55:11
// Design Name: 
// Module Name: Fulladder_test
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


module Fulladder_test;
reg a;
reg b;
reg cin;
wire s;
wire cout;
Fulladder uut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial begin
 a=0;
 b=0;
 cin=0;
 #100; a=0; b=0; cin=1;
 #100; a=0; b=1; cin=0;
 #100; a=0; b=1; cin=1;
 #100; a=1; b=0; cin=0;
 #100; a=1; b=0; cin=1;
 #100; a=1; b=1; cin=0;
 #100; a=1; b=1; cin=1;
 end 
 endmodule
