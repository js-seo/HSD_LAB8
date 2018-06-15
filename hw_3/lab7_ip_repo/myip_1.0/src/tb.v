`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2018 06:20:17 PM
// Design Name: 
// Module Name: tb
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


module tb();
  // Data for test
  parameter MATRIX_SIZE = 64;
  parameter INPUT_FILE = "/csehome/opera5/HSD_kwJS/term_project2/templates/input_hex.txt";
  parameter OUTPUT_FILE = "/csehome/opera5/HSD_kwJS/term_project2/templates/output_sim.txt";

  // Registers for PE controller module
  reg start;
  reg clk;
  reg aresetn;
  wire done; // output

  wire [31:0] addr; // output
  wire [31:0] wrdata; // output
  wire [3:0] we; // output
  wire [31:0] rddata;
  wire bram_clk; // output
  
  initial begin
      clk <= 1;
     // aresetn <= 0;
      start <= 0;
      #400;
      #3;
      aresetn <= 1;
      #3;
      
      start <= 1;
      #5;
      start <= 0;
      #5;
      
      wait(done);
  end
  
  always #5 clk = ~clk;

  my_bram #(
  .BRAM_ADDR_WIDTH(32),
  .INIT_FILE(INPUT_FILE),
  .OUT_FILE(OUTPUT_FILE)
  ) u_bram (
    .BRAM_ADDR(addr),
    .BRAM_WRDATA(wrdata),
    .BRAM_RDDATA(rddata),
    .BRAM_CLK(bram_clk),
    .BRAM_EN(1),
    .BRAM_RST(!aresetn),
    .done(done),
    .BRAM_WE(we)
  );
  
  pe_con #(
     .VECTOR_SIZE(MATRIX_SIZE),
     .L_RAM_SIZE(6)
  ) u_con
  (
       //from axi
       .start(start),
       .aclk(clk),
       .aresetn(aresetn),
       .done(done),

       //to BRAM
       .BRAM_ADDR(addr),
       .BRAM_WRDATA(wrdata),
       .BRAM_WE(we),
       .BRAM_CLK(bram_clk), // 180 degree shifted version of S_AXI_ACLK
       .BRAM_RDDATA(rddata)
   );
endmodule
