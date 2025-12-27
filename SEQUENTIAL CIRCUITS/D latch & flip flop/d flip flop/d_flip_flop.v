module d_flip_flop ( input clk, d, output reg q, qbar);
  
  assign qbar = ~q;
  
  always@(posedge clk)
    
   q <= d;
  
endmodule