`timescale 1ns/1ps
module adder_tb ;
/* inputs */
wire sum ;
wire c_out ;

/* outputs */
reg a ;
reg b ;
reg c_in ;

adder DUT (.a(a), .b(b), .c_in(c_in), .sum(sum), .c_out(c_out)) ;

integer i ;
initial begin
  $display("Simulation started");
  $dumpfile("./2_sim/adder.vcd");
  $dumpvars(0, adder_tb);
  a = 0;
  b = 0;
  c_in = 0;
  for (i = 0; i < 7; i = i + 1 ) begin //{
    #1 ;
    c_in = ~c_in ;
    if ( ~c_in) begin //{
      b = ~b ;
    end //}
    if ( b && c_in) begin //{
      a = ~a ;
    end//}
  end //}
  $display("Simulation finished");
  #100 $finish;
end
endmodule
