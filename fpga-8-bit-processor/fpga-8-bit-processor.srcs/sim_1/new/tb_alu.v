`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 10:29:51 PM
// Design Name: 
// Module Name: tb_alu
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


module tb_alu;

    reg [7:0] RESULT;
    reg  ZERO;
    reg SELECT, DATA1, DATA2;
    
    // Delay time = 20 * 1 ns = 20 ns
    localparam period = 20;
    
    
    // Create instance of alu for testing
    alu uut (
        .RESULT(RESULT),
        .ZERO  ( ZERO ),
        .SELECT(SELECT),
        .DATA1 (DATA1 ),
        .DATA2 (DATA2 )
    );
    
    initial begin
    
        SELECT=1;
        DATA1 = 2;
        DATA2 = 2;
        
        #period
        SELECT=0;
    
    end
    
endmodule
