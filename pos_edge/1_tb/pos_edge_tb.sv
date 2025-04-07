`timescale 1ns/1ns 
module pos_edge_tb ; 
  /* wires */ 
  reg clk ;
  reg data ;
  reg rstn ; 
  /* reg */ 
  wire pos_edge ; 
  pos_edge DUT (/* Port connections */ 
                .clk(clk) ,
		.data(data) ,
		.rstn(rstn) ,
		.pos_edge(pos_edge)
		); 
  initial begin 
  clk = 1'b0 ;
  rstn = 1'b1 ;

  forever begin //{ 
    #5 clk = ~clk ;
    // $display("clk after toggle: %b", clk);
    end //}

  repeat (9) begin //{
  #4 rstn = ~rstn ;
  $display("rstn after toggle: %b", rstn);
  end //}

  end 

  initial begin 
  data = 1'b0 ;

  #100 $finish; 
  end
  //  always #5 clk = ~clk ;
  initial begin 
  $display("Simulation started"); 
  $dumpfile("./2_sim/pos_edge.vcd"); 
  $dumpvars(0, pos_edge_tb);  
  $display("Simulation finished"); 
  end 
endmodule
