`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2019 01:53:23 PM
// Design Name: 
// Module Name: lab1_top
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


module lab1_top(
    input[3:0] A,
    input[3:0] B,
    input[3:0] C,
    input[3:0] D,
    input[1:0] SEL,
    output[6:0] SEG,
    output[3:0] ANODE,
    output[15:0] LED
    );
    seven_seg u1(.A(A), .B(B), .C(C), .D(D), .SEL(SEL), .SEG(SEG), .ANODE(ANODE));
    assign LED[0] = A[0] & B[0];
    assign LED[1] = A[1] & B[1];
    assign LED[2] = A[2] & B[2];
    assign LED[3] = A[3] & B[3];
    assign LED[4] = A[0] ^ B[0];
    assign LED[5] = A[1] ^ B[1];
    assign LED[6] = A[2] ^ B[2];
    assign LED[7] = A[3] ^ B[3];
    assign LED[8] = 0;
    assign LED[9] = 0;
    assign LED[10] = 0;
    assign LED[11] = 1;
    assign LED[12] = 0;
    assign LED[13] = 0;
    assign LED[14] = 1;
    assign LED[15] = 0;
endmodule
