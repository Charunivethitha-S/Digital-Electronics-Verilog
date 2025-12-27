// Code your design here
module piso_shift_register (
    input  clk,
    input  reset,
    input  load,
    input  [3:0] p_in,
    output reg  s_out
);

reg [3:0] shift_reg;

always @(posedge clk) begin
    if (reset) begin
        shift_reg <= 4'b0000;
        s_out     <= 1'b0;
    end
    else if (load) begin
        shift_reg <= p_in;          
        s_out     <= p_in[3];       
    end
    else begin
        s_out     <= shift_reg[3]; 
        shift_reg <= {shift_reg[2:0], 1'b0};
    end
end

endmodule
