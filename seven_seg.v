`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2019 09:03:06 AM
// Design Name: 
// Module Name: seven_seg
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


module seven_seg(
    input[3:0] A,
    input[3:0] B,
    input[3:0] C,
    input[3:0] D,
    input[1:0] SEL,
    output reg[6:0] SEG,
    output reg[3:0] ANODE
    );
    
    reg[3:0] chosenSwitches;
    always @(SEL)   
        begin
            case(SEL)
                0: chosenSwitches = A;
                1: chosenSwitches = B;
                2: chosenSwitches = C;
                3: chosenSwitches = D;
            endcase
            case(SEL)
                0: ANODE = 4'b1110;
                1: ANODE = 4'b1101;
                2: ANODE = 4'b1011;
                3: ANODE = 4'b0111;
            endcase
        end
    always@(chosenSwitches)
        begin
            case(chosenSwitches)
                0: SEG=7'b0000001;
                1: SEG=7'b1001111;
                2: SEG=7'b0010010;
                3: SEG=7'b0000110;
                4: SEG=7'b1001100;
                5: SEG=7'b0100100;
                6: SEG=7'b0100000;
                7: SEG=7'b0001111;
                8: SEG=7'b0000000;
                9: SEG=7'b0000100;
                10: SEG=7'b0001000;
                11: SEG=7'b1100000;
                12: SEG=7'b0110001;
                13: SEG=7'b1000010;
                14: SEG=7'b0110000;
                15: SEG=7'b0111000;
            endcase
        end
                
endmodule
