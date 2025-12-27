module demux_2x1 ( input a, sel, output reg y0, y1 );
  
  always@(*)
    begin
    if ( sel == 0 )
      y0 = a;
  else 
      y1 = a;
    end
endmodule

module demux_4x1 ( input a, [1:0]sel, output reg y0, y1, y2, y3);
  always@(*)
    begin
    case (sel)
      2'b00 : y0 = a;
      2'b01 : y1 = a;
      2'b10 : y2 = a;
      2'b11 : y3 = a;
      default : {y0, y1, y2, y3} = 2'b00;
    endcase
    end
endmodule 

module demux_8x1 ( input a, [2:0] sel, output d0, d1, d2, d3, d4, d5, d6, d7);
  
  wire w1, w2;
  
  demux_2x1 demux1 ( .a(a), .sel(sel[2]), .y0(w1), .y1(w2) );
  
  demux_4x1 demux2 ( .a(w1), .sel(sel[1:0]), .y0(d0), .y1(d1), .y2(d2), .y3(d3) );
  
  demux_4x1 demux3 ( .a(w2), .sel(sel[1:0]), .y0(d4), .y1(d5), .y2(d6), .y3(d7) );
  
endmodule
      