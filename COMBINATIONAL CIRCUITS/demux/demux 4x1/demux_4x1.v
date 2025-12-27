// Code your design here
module demux_4_1 ( input a, [1:0] sel, output reg y0, y1, y2, y3);
  
  always@(*)
    begin
    case ( sel )
      2'b00 : y0 = a;
      2'b01 : y1 = a;
      2'b10 : y2 = a;
      2'b11 : y3 = a;
      default : { y0, y1, y2, y3 } = 2'b00;
    endcase
 
    end
endmodule