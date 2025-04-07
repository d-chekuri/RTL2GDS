`timescale 1ns/1ns 
module bin2gray_tb ; 
  parameter WIDTH = 4'h4;
  /* wires */ 
  wire [WIDTH-1:0] gray;
  /* reg */ 
  reg [WIDTH-1:0] bin ;
  bin2gray #(.WIDTH(WIDTH)) DUT (/* Port connections */ 
		 .bin(bin),
		 .gray(gray)
		 ); 
 
  initial begin 
  $display("Simulation started"); 
  $dumpfile("./2_sim/bin2gray.vcd"); 
  $dumpvars(0, bin2gray_tb); 
  
  
  #1 bin = 4'b1100;
  #1 bin = 4'b0010;
 
 
  $display("Simulation finished"); 
  #100 $finish; 
  end 

endmodule
