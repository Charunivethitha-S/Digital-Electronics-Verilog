module universal_shift_register ( input clk,
  input reset, 
input serial_in,
input [3:0] parallel_in,
input [1:0] mode,
output reg serial_out,
output reg [3:0] parallel_out );

always@(posedge clk or posedge reset )
begin
if(reset)
begin
parallel_out <= 4'b0000;
serial_out <= 1'b0;
end

else 
   begin
case (mode)
  2'b00 : begin
    serial_out <= parallel_out[0];
    parallel_out <= { serial_in, parallel_out[3:1]};
           end

  2'b01 : begin
    parallel_out <= parallel_out[0];
    parallel_out <= parallel_in;
          end

  2'b10 : begin
    serial_out <= parallel_out[0];
    parallel_out <= parallel_in;
         end

  2'b11 : begin
     parallel_out <= parallel_in;
      serial_out <= 1'b0;
          end
endcase
  end
end
endmodule