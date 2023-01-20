`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2022 05:21:30 PM
// Design Name: 
// Module Name: IF
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


module IF(
    input [31:0] clock,
    input [31:0] PC,
    output reg [31:0] IFIDIR
    );
    
    initial begin
        assign IFIDIR = 0;            
    end
    
    always @(clock) begin
    
        IFIDIR <= CPU.IMemory[PC>>2]; // divide PC by 4 to get next instruction
    
    end
       
endmodule
