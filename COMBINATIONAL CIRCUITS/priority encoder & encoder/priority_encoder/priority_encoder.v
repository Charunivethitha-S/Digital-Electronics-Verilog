module priority_encoder_8x3 ( input [7:0] in, output reg [2:0] y, reg v);
  
  always@(*)
    begin
      v = 1'b1;
      if ( in[7] )
        y = 3'b111;
      else if (in[6])
        y = 3'b110;
      else if (in[5])
        y = 3'b101;
      else if (in[4])
        y = 3'b100;
      else if (in[3])
        y = 3'b011;
      else if ( in[2])
        y = 3'b010;
      else if ( in[1])
        y = 3'b001;
      else 
        begin
          y = 3'b000;
          v = 1'b0;
        end
    end
endmodule