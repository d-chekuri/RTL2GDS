module div_2 ( 
  // inputs 
  input clk,
  input rst_n,
  // outputs 
  output reg clk_d
  ); 

always @(posedge clk) begin
  if (~rst_n) begin
    clk_d = 0 ;
  end
  else begin
    clk_d <= ~clk_d ;
  end
end
 
endmodule 
