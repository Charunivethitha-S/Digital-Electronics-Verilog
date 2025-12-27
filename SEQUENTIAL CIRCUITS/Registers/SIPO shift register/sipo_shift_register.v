module sipo_shift_register ( input clk, reset, enable, sin, output reg pout);
  
  reg [3:0] temp;
  
  always@(posedge clk)
    begin
      if(reset)
        temp <= 4'b0000;
      else if ( enable ==0)
        begin
          temp <= temp >> 1'b1;
          temp[3] <= sin;
        end
      else if (enable)
        
        pout <= temp;
    
    end
endmodule