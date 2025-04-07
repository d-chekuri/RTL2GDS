`timescale 1ns/100ps
module d_ff_tb ;
  
  // Inputs
  reg clk;
  reg reset;
  reg d;
  
  // Outputs
  wire q;
  
  // Instantiate the D Flip-Flop under test
  d_ff dut (
  .clk(clk),
  .reset(reset),
  .d(d),
  .q(q)
  );
  
  // Clock generation
  always begin
  #5 clk = ~clk;
  end
  
  
  // Stimulus generation
  initial begin
  // Simulation dump generation 
  $display("Simulation started");
  $dumpfile("./2_sim/d_ff.vcd");
  $dumpvars(0, d_ff_tb);
  // Initialize inputs
  clk = 0;
  reset = 1;    
 
  reset = #5 1'b0;  
  d = 1;      
  #5;
  d = 0;      
  #5;
  $display("Simulation finished");
 
  #1000 $finish;
  end
endmodule
