module gray2bin #(parameter WIDTH=4'h4)( 
  // inputs 
  input [WIDTH-1:0] gray,
  // outputs 
  output [WIDTH-1:0] bin
 
  ); 

  genvar i ;
  assign bin[WIDTH-1] = gray[WIDTH-1] ;
  generate 
  for(i = WIDTH-2; i>=0 ; i= i-1) begin //{
    assign bin[i] = bin[i+1] ^ gray[i] ;
  end //}
  endgenerate
 
endmodule 
