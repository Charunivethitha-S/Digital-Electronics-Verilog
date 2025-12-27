module tb_universal_shift_register;

reg clk, reset, serial_in;
reg [3:0] parallel_in;
reg [1:0] mode;

wire serial_out;
wire [3:0] parallel_out;

universal_shift_register dut ( clk, reset, serial_in, parallel_in, mode, serial_out, parallel_out);

always #5 clk = ~clk;

initial
begin
 clk = 0;
reset = 0;
serial_in = 0;
parallel_in =0;
mode = 2'b00;

#10 reset =0;

mode = 2'b00;
serial_in = 1; #10;
serial_in =0; #10;

mode = 2'b01;

serial_in = 1; #10;
serial_in = 0; #10;

mode =2'b10;
parallel_in = 4'b1010; #10;

mode = 2'b11;
parallel_in = 4'b1100; #10;

$finish;

end
endmodule

