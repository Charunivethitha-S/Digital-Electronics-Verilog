module bcd_to_excess3 ( input [2:0] bcd, output reg excess3);
  
  
  
  assign excess3 = bcd + 4'b0011;
  
endmodule