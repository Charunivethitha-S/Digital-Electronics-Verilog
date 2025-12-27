module full_adder ( input a, b, cin, output reg sum, carry);
  
  always@ (*)
    begin
      sum = a ^ b ^ cin;
      carry = ( a & b ) | ( a & cin ) | ( b & cin );
    end
 
  
endmodule