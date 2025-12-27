module up_down_counter ( input clk, reset, mode, output reg [3:0] q);

  always@(posedge clk or posedge reset )
       if (reset) 
           q <= 0;
       else if ( mode )
           q <= q + 1'b1;
        else 
           q <= q - 1'b1;
endmodule
