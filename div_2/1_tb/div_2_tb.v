`timescale 1ns/1ps
module div_2_tb ; 
  /* wires */ 
  wire clk_d ; 
  /* reg */ 
  reg clk ;
  reg rst_n ;
  reg d ;
  div_2 DUT (/* Port connections */ .clk(clk),
                                    .rst_n(rst_n),
				    .clk_d(clk_d)); 
 
  initial begin 
  $display("Simulation started"); 
  $dumpfile("./2_sim/div_2.vcd"); 
  $dumpvars(0, div_2_tb); 
  
  rst_n = 0 ; clk = 1 ; 
  #1  rst_n = 1 ; 
 
  $display("Simulation finished"); 
  #100 $finish; 
  end 
always #5 clk = ~clk ;

endmodule
