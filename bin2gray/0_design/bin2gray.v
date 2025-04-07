module bin2gray #(
  parameter WIDTH=4'h4 )
  ( 
  // inputs 
  input [WIDTH -1:0] bin,
  // outputs 
  output [WIDTH -1:0] gray
  ); 
  genvar i ;
  generate 
      for ( i = 0 ; i < WIDTH -1 ; i = i + 1 ) begin //{
        assign gray[i] = bin[i] ^ bin[i+1] ;
	end //}
    endgenerate
	assign gray[WIDTH-1] = bin[WIDTH-1] ;
endmodule 
