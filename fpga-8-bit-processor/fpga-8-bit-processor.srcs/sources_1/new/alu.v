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


module alu(input DATA1, input DATA2, output RESULT, input SELECT, output ZERO);
    // Define inputs and outputs
    input DATA1[7:0];
    input DATA2[7:0];
    input SELECT[2:0];
    
    output wire RESULT;
    output wire ZERO;
    
    // SELECT Cases
    case(SELECT)
        // Add
        0: assign {ZERO,RESULT} = DATA1 + DATA2;
        
    endcase 
    
    
endmodule
