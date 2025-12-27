module tb_up_down_counter;
reg clk, reset, mode;
wire [3:0] q;

   up_down_counter dut ( clk, reset, mode, q);

    always #5 clk = ~clk; 

initial
begin
  clk = 0; reset = 1; 
  #10 reset = 0;
  #50 mode = 0;
  #50 mode = 1;
  #40 $stop;

end
endmodule
