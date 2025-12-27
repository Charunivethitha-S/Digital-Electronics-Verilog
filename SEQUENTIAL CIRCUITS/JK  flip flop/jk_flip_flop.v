module jk_flip_flop ( input clk, j, k, output reg q, qbar);
  
  assign qbar = ~q;
  
  always@(*)
    begin
      case ( {j,k} )
        2'b00 : q <= q;
        2'b01 : q <= 1'b0;
        2'b10 : q <= 1'b1;
        2'b11 : q <= ~q;
        default : q <= 1'bx;
      endcase
    end
endmodule