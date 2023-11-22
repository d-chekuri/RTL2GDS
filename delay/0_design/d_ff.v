module d_ff (
  input wire clk,
  input wire reset,  // Active-High Reset
  input wire d,
  output reg q
  );
  
  always @(posedge clk) begin
    if (reset) begin
      q <= 1'b0;  // Reset state
    end
    else begin
      q <= d;     // D flip-flop behavior
    end  
  end
  
endmodule
