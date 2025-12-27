module siso_shift_register (input clk, reset, sin, enable, output reg sout);
  
  reg [3:0] temp;
  
  always@(posedge clk)
    begin
    if (reset)
      temp <= 4'b0000;
  else if (enable)
    begin
    temp <= temp >> 1'b1;
      temp [3] <= sin;
      sout <= temp[0];
    end
/*else 
    if (enable) 
      begin
        temp <= {sin, temp[2:0]};
        temp[3] <= temp[0];
        sout <= temp[0];
      end */ 
    end
  
endmodule