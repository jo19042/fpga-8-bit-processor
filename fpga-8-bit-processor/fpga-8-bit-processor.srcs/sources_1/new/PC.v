`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2022 05:11:37 PM
// Design Name: 
// Module Name: PC
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


module PC(
    input clock,
    input IFIDIR,
    output reg [31:0] PC        // 32-bit program counter
    );
    
    initial begin
        assign PC = 0;          // PC to first instruction initially
    end
    
    always @(clock) begin
    
        PC <= PC + 4;           // increase PC to next instruction
    
    end
    
endmodule
