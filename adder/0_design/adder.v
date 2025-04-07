/* only combinational ckt
 * Not syncronous 
 */
module adder (
input wire a,
input wire b,
input wire c_in,
output  sum,
output  c_out
);
assign sum = a^b^c_in ;
assign c_out = (a|b)&c_in | (a&b) ;
endmodule
