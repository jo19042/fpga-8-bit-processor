`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 09:42:07 PM
// Design Name: 
// Module Name: alu
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


module alu(DATA1, DATA2, RESULT, SELECT, ZERO);
    // Define inputs and outputs
    input [7:0] DATA1;
    input [7:0] DATA2;
    input [2:0] SELECT;
    
    output reg [7:0] RESULT;
    output reg ZERO;
    
    always @ (SELECT) begin
    
        // SELECT Cases
        case(SELECT)
            // Add
            0       : {ZERO,RESULT} = DATA1 + DATA2;
            default : {ZERO,RESULT} = 0;
        endcase 
    
    end
    

    
    
endmodule
