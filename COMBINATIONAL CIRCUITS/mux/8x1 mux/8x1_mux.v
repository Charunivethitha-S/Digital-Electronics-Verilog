// Code your design here
module mux_4_1 ( input i0,i1,i2,i3, [1:0] sel, output reg y);
  
  always@(*)
    begin
    case (sel)
      2'b00: y = i0;
      2'b01: y = i1;
      2'b10: y = i2;
      2'b11: y = i3;
      default: y = 2'b00;
    endcase
    end
endmodule


module mux_2_1 ( input a,b, sel, output reg y);
  
  always@(*)
    assign y = sel ? b : a;
endmodule

module mux_8_1 ( input  d0, d1, d2,d3, d4, d5, d6, d7, [3:0] sel, output y);
  
  wire y0, y1;
  
  mux_4_1 mux1 ( .i0(d0), .i1(d1), .i2(d2), .i3(d3), .sel(sel[1:0]), .y(y0) );
           
  mux_4_1 mux2 ( .i0(d4), .i1(d5), .i2(d6), .i3(d7), .sel(sel[1:0]), .y(y1));
                              
  mux_2_1 mux3 ( .a(y0), .b(y1), .sel(sel[2]), .y(y) ) ;
                              
         
endmodule