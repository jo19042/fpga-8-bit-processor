`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2022 10:08:20 PM
// Design Name: 
// Module Name: cpu_tb
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


module cpu_tb;
    reg clock;
    CPU cpu(clock);
    initial begin
        clock = 0;
        #2200
        $finish;
    end
    always begin
        #5
        clock = ~clock;
    end
endmodule
