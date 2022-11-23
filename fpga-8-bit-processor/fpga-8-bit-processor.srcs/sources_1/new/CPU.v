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
    wire [31:0] IDEXA, IDEXB, IDEXIR, EXMEMALUOut, EXMEMIR; // pipeline registers
    reg [10:0] i; // register to initialize registers
    //reg [31:0] Regs[0:31], IMemory[0:1023], DMemory[0:1023];// registers, instruction memory, data memory

    EX uut(
        .clk(clock),
        .IDEXA(IDEXA),              // ID/EX pipeline register value A
        .IDEXB(IDEXB),              // ID/EX pipeline register value B
        .IDEXIR(IDEXIR),            // ID/EX pipeline register instruction
        .EXMEMALUOut(EXMEMALUOut),  // EX/MEM pipeline register ALU value
        .EXMEMIR(EXMEMIR)           // EX/MEM pipeline register instruction
        );
    
    initial begin
        #1;//wait for input ports to initialize
    end
    
    assign IDEXIR = 32'b00000000_10000010_01000000_00100000;
    assign IDEXA =  32'b00000000_00000000_00000000_00000001;
    assign IDEXB =  32'b00000000_00000000_00000000_00000001;
    

endmodule
