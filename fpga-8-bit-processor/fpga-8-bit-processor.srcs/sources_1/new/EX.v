`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2022 12:17:16 PM
// Design Name: 
// Module Name: EX
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


module EX(
    input clk,
    input [31:0] IDEXA, // input A from instruction decode (ID stage)
    input [31:0] IDEXB, // input B from isntruction decode (ID stage)
    input [31:0] IDEXIR, // input C from instruction decode (ID stage)
    output reg [31:0] EXMEMALUOut,  // result of ALU operation
    output reg [31:0] EXMEMIR       // intermediate register EX/MEM
    );
    
    `include "parameters.v"
    
    wire [31:0] Ain;    // rs
    wire [31:0] Bin;    // rt
    wire [5:0 ] IDEXop; // opcode

    assign IDEXop = IDEXIR[31:26];  // get the instruction type out of DE/EX reg
    
    initial begin
        EXMEMALUOut = 0;
        EXMEMIR = 0;
    end
    
    always @ (posedge clk)begin     // sequential logic of EX stage, this is the ALU        
        if (IDEXop == ALUop)begin   // EX stage given ALU instruction
            case(IDEXIR[5:0])       // cases of opcodes
                32: begin           // ADD (20hex)
                    EXMEMALUOut <= IDEXA + IDEXB;
                end
                37: begin           // OR (25hex)
                    EXMEMALUOut <= Ain | Bin;
                end
                36: begin           // AND (24hex)
                    EXMEMALUOut <= Ain & Bin;
                end
            endcase
            EXMEMIR <= IDEXIR;      // pass along IR register
        end
    end
    
endmodule
