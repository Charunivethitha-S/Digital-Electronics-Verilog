// Code your design here
module asynchronous_up_counter (input clk, reset, output reg  [3:0] q);
  always@(negedge clk or posedge reset)
    if (reset)
      q[0] <= 0;
  else
    q[0] <= ~q[0];
  
  always@(negedge clk or posedge reset)
    if (reset)
      q[1] <= 0;
  else
    q[1] <= ~q[1];
  
  always@(negedge clk or posedge reset)
    if (reset)
      q[2] <= 0;
  else
    q[2] <= ~q[2];
  
  always@(negedge clk or posedge reset)
    if (reset)
      q[3] <= 0;
  else
     q[3] <= ~q[3];
  
endmodule
  