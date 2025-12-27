// Code your design here
module fsm_1010 ( input clk, reset, din, output reg detected );
  
  parameter idle = 2'b00;
  parameter s1 = 2'b01;
  parameter s2 = 2'b10;
  parameter s3 = 2'b11;
  
  reg [1:0] ps, ns;
  
  always@(posedge clk) 
    begin
      if(reset)
       begin
          ps <= idle;
       end
     else 
       ps <= ns;
  
    end
  
  always@(*)
    begin
      case(ps)
        idle : begin
          if ( din == 1'b1)
            ns = s1;
          else 
            ns = idle;
        end
      
        
        s1: begin
          if ( din == 1'b0)
            ns = s2;
          else 
            ns = s1;
        end
     
        
        s2: begin
          if ( din == 1'b1)
            ns = s3;
          else
            ns = idle;
        end
        
        s3: begin
          if ( din == 1'b0)
            ns = s1;
          else 
            ns = idle;
        end
        
        default : ns = idle;
        
      endcase 
    end
  
  always@(posedge clk)
    begin
      if(reset)
        detected <= 1'b0;
      else
        case (ps)
          idle : detected <= 0;
          s1 : detected <= 0;
          s2 : detected <=0;
          s3 : 
            begin
            if ( din == 1'b1 )
              detected <= 1'b0;
            else 
              detected <= 1'b1;
          end
        
       default : detected <=1'b0;
        endcase
    end
      endmodule