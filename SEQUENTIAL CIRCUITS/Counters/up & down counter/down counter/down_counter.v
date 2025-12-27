module down_counter ( input clk, reset, output reg [3:0]q);

always@(posedge clk or posedge reset)
   if ( reset)
       q <= 4'b1111;
    else 
        q <= q - 1;
endmodule
