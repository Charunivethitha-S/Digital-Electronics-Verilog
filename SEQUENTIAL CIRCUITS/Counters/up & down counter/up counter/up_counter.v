module up_counter ( input clk, input reset, output reg [3:0] q);

always@(posedge clk or posedge reset)
    if ( reset )
      q <= 0;
    else 
      q <= q + 1'b1;
endmodule

