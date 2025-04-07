`timescale 1ns/1ns 
module mult_bin_tb ; 
  /* wires */ 
 
  /* reg */ 
 
  mult_bin DUT (/* Port connections */ ); 
 
  initial begin 
  $display("Simulation started"); 
  $dumpfile("./2_sim/mult_bin.vcd"); 
  $dumpvars(0, mult_bin_tb); 
 
 
 
 
  $display("Simulation finished"); 
  #100 $finish; 
  end 
endmodule
