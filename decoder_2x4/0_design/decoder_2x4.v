module decoder_2x4 ( 
  // inputs 
  input I1,
  input I2,
  input En,
  // outputs 
  output [3:0] O
  ); 
 assign O = En ? { (I1&I2), (I2& ~I1),(~I2&I1), ~(I2|I1) } : 4'b0000 ;
endmodule 
