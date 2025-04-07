`timescale 1ns/1ns 
module hello_world_tb ; 
  /* wires */ 
 
  /* reg */ 
 
  hello_world DUT (/* Port connections */ ); 
 
  initial begin 
  
 
 
 
  #100 $finish; 
  end 
  initial begin 
  $display("Simulation started"); 
  $dumpfile("./2_sim/hello_world.vcd"); 
  $dumpvars(0, hello_world_tb);  
  $display("Simulation finished"); 
  end 
endmodule
