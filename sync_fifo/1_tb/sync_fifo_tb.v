module sync_fifo_tb ; 
  /* wires */ 
 
  /* reg */ 
 
  sync_fifo DUT (/* Port connections */ ); 
 
  initial begin 
  $display("Simulation started"); 
  $dumpfile("./2_sim/sync_fifo.vcd"); 
  $dumpvars(0, sync_fifo_tb); 
 
 
 
 
  $display("Simulation finished"); 
  #100 $finish; 
  end 
endmodule
