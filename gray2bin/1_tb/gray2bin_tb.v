`timescale 1ns/1ps 
module gray2bin_tb ; 
  parameter WIDTH = 4'h4;
  /* wires */ 
  wire [WIDTH-1:0] bin ;
  /* reg */ 
  reg [WIDTH-1:0] gray ;
 
  gray2bin #(.WIDTH(4'h4)) DUT (/* Port connections */ 
                             .bin(bin),
			     .gray(gray)
			     ); 
 
  initial begin 
  $display("Simulation started"); 
  $dumpfile("./2_sim/gray2bin.vcd"); 
  $dumpvars(0, gray2bin_tb); 
 
#1  gray = 4'hC ;
#2  gray = 4'h0;
#3  gray = 4'hF ;
 
 
  $display("Simulation finished"); 
  #100 $finish; 
  end 
endmodule
