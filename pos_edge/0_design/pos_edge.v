module pos_edge ( 
  // inputs 
  input clk ,
  input data ,
  input rstn , 
  // outputs 
  output pos_edge
  ); 
 
  reg curr_sense ;
  always @ (posedge clk or negedge rstn) begin //{
    if(!rstn) begin //{
      curr_sense <= 1'b0 ;
      end //}
      else begin //{
        curr_sense <= data ;
	end //}
  end //}

  assign pos_edge = ~curr_sense & data ;

endmodule


