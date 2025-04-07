`timescale 1ns/1ns 
module comp1_tb ; 
  /* wires */ 
  wire lt ;
  wire gt ;
  wire eq ;
  /* reg */ 
  reg A ;
  reg B ;

  comp1 DUT (/* Port connections */ 
            .A(A),
	    .B(B),
	    .lt(lt),
	    .gt(gt),
	    .eq(eq) 
            ); 

  initial begin 
  A = 0 ;
  B = 0 ;
  #5 A = 1 ;
  #10 B = 1 ;
  #10 A = 0 ;
  #10 B = 0 ;
  #100 $finish; 
  end
  initial begin 
  $display("Simulation started"); 
  $dumpfile("./2_sim/comp1.vcd"); 
  $dumpvars(0, comp1_tb); 
  $display("Simulation finished"); 
  end 
endmodule
