module parity_odd ( input [3:0] in, output reg x );
  
  assign x = in[3] ^ in[2] ^ in[1] ^ in[0] ;
  
endmodule

module parity_even ( input [3:0] in, output reg y);
  
  assign y = ~( in[3] ^ in[2] ^ in[1] ^ in[0] );
  
endmodule