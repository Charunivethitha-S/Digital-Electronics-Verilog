module tb_johnson_counter;
reg clk, reset;
wire [3:0] q;

johnson_counter dut ( clk,reset,q);

always #5 clk = ~clk;

initial
begin
   clk = 0; reset = 1;
   #10 reset = 0;

#50; $stop;

end
endmodule
