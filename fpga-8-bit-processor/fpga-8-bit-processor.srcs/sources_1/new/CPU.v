`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2022 10:10:04 AM
// Design Name: 
// Module Name: CPU
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


module CPU(clock);
    input clock;
    wire [31:0] IDEXA,                  //
                IDEXB,                  //
                IDEXIR,                 // ID/EX intermediate register
                EXMEMALUOut,            // EX/MEM ALU result interediate register
                EXMEMIR,                // EX/MEM intermediate register
                IFIDIR;                 // IF/ID intermediate register
                
    reg [10:0] i;                       // register to initialize registers
    
    reg [31:0] Regs[0:31],              // 32, 32-bit registers
               IMemory[0:1023],         // 1024, 23-bit instruction memory registers (1024 x 32)
               DMemory[0:1023];         // registers, instruction memory, data memory (1024 x 32)
               
    wire [31:0] PC;                     // 32-bit program counter

    PC uut(
        .clock(clock),
        .PC(PC)
            );
            
    IF uut(
        .clock(clock),
        .PC(PC),
        .IFIDIR(IFIDIR),
        .IMemory(IMemory)
        );
        
    DE uut();

    EX uut(
        .clock(clock),
        .IDEXA(IDEXA),              // ID/EX pipeline register value A
        .IDEXB(IDEXB),              // ID/EX pipeline register value B
        .IDEXIR(IDEXIR),            // ID/EX pipeline register instruction
        .EXMEMALUOut(EXMEMALUOut),  // EX/MEM pipeline register ALU value
        .EXMEMIR(EXMEMIR)           // EX/MEM pipeline register instruction
        );
        
    MEM uut();
    WB uut();
    
    initial begin
        #1;//wait for input ports to initialize
    end
    
    assign IDEXIR = 32'b00000000_10000010_01000000_00100000;
    assign IDEXA =  32'b00000000_00000000_00000000_00000001;
    assign IDEXB =  32'b00000000_00000000_00000000_00000001;
    

endmodule
