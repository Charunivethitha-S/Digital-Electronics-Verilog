module tb_down_counter;
reg clk, reset;
wire [3:0] q;
   down_counter dut ( clk, reset, q);

   always #5 clk = ~clk;
  
   initial
begin
   clk = 0; reset = 1;
    #10 reset = 0;
    #100;
  $stop;

end

endmodule
