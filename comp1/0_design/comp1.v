module comp1 ( 
  // inputs 
 input A, //primary input
 input B,
  // outputs 
 output lt,
 output gt,
 output eq 
); 
  assign eq = (A===B) ;
  assign gt = (A>B) ;
  assign lt = (A<B) ; 
endmodule 
