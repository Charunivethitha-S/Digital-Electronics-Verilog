module johnson_counter ( input clk, reset, output reg [3:0] q);

always@(posedge clk or posedge reset )
   if ( reset ) 
    q<=0;
else 
    q <= { ~q[0], q[3:1]}; 
endmodule
