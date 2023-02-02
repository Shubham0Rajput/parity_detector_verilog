`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2023 14:08:43
// Design Name: 
// Module Name: parity_tb
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


module parity_tb;
    reg clk,x;
    wire z;
    parity_gen PAR(x,clk,z);
    initial
        clk = 1'b0;
    always #5 clk =~clk;
    initial begin
        #2 x=0;#10 x=1;#10 x=1;#10 x=1;
        #10 x=0;#10 x=1;#10 x=1;#10 x=0;
        #10 x=0;#10 x=1;#10 x=1;#10 x=0;
        #10 $finish;
    end
endmodule
