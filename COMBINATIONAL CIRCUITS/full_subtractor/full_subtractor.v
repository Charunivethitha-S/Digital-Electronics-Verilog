module full_subtractor ( input  a, b, bin, output reg d, b_out);
 
  wire w1, w2, w3, w4;
 
      
    xor x1 ( d, a, b, bin);
    
  not n1 ( w1,a);
  and a1 ( w2, bin, w1);
  and a2 ( w3, w1, b);
  and a3 ( w4, b, bin);
  
  or o1 ( b_out, w2, w3,w4);
      
    
endmodule
  
  