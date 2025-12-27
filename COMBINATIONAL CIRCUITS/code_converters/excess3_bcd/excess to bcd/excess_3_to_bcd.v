module excess3_to_bcd (
    input [3:0] excess3,  
    output reg [3:0] bcd  
);

    always @(*) begin
        case (excess3)
            4'b0011: bcd = 4'd0;
            4'b0100: bcd = 4'd1;
            4'b0101: bcd = 4'd2;
            4'b0110: bcd = 4'd3;
            4'b0111: bcd = 4'd4;
            4'b1000: bcd = 4'd5;
            4'b1001: bcd = 4'd6;
            4'b1010: bcd = 4'd7;
            4'b1011: bcd = 4'd8;
            4'b1100: bcd = 4'd9;
            default: bcd = 4'd0; 
        endcase
    end

endmodule