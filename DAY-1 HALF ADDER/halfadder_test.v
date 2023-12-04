`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 11:15:38
// Design Name: 
// Module Name: halfadder_test
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


module halfadder_test(

    );
    reg a;
    reg b;
    wire sum;
    wire carry;
    halfadder uut (
              .a(a),
              .b(b),
              .sum(sum),
              .carry(carry)
    );
    initial begin
    a = 0;b = 0;#100;
    a = 0;b = 1;#100;
    a = 1;b = 0;#100;
    a = 1;b = 1;#100;
    end          

endmodule
