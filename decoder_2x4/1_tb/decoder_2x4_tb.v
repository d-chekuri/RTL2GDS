`timescale 1ns/1ns 
module decoder_2x4_tb ; 
  /* wires */ 
  wire [3:0] O ; 
  /* reg */ 
  reg I1 ;
  reg I2 ;
  reg En ;
 
  decoder_2x4 DUT (/* Port connections */ 
                   .I1(I1),
		   .I2(I2),
		   .En(En),
		   .O(O)
                  ); 
 
  initial begin 
  En = 0 ;
  #1 En = 1;
   $monitor ("I2I1 --> %b%b : O --> %b", I2,I1,O) ;
   repeat(5) begin 
     I2 = $random ;
     #1 I1 = $random ; 
     end
  #100 $finish; 
  end
  initial begin 
  $display("Simulation started"); 
  $dumpfile("./2_sim/decoder_2x4.vcd"); 
  $dumpvars(0, decoder_2x4_tb);  
  $display("Simulation finished"); 
  end 
endmodule
