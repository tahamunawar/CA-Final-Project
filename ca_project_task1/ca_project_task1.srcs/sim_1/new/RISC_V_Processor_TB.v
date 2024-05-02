`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2024 06:31:21 PM
// Design Name: 
// Module Name: RISC_V_Processor_TB
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


module RISC_V_Processor_TB();
reg clk, reset;
wire [63:0] index1,index2,index3;
RISC_V_Processor risc_v
(
    .clk(clk),
    .reset(reset),
    .elem1(index1),
    .elem2(index2),
    .elem3(index3)
);
initial 
 begin 
  
  clk = 1'b0; 
   
  reset = 1'b1; 
   
  #10 reset = 1'b0; 
 end 
always  
 #5 clk = ~clk; 
endmodule

    