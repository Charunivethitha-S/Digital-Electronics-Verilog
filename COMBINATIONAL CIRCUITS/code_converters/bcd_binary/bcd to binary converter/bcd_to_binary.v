module bcd_to_binary (
    input [3:0] bcd,      // BCD input (0-9)
    output reg [3:0] bin  // Binary output (0-9)
);

    always @(*) begin
        case(bcd)
            4'b0000: bin = 4'd0;
            4'b0001: bin = 4'd1;
            4'b0010: bin = 4'd2;
            4'b0011: bin = 4'd3;
            4'b0100: bin = 4'd4;
            4'b0101: bin = 4'd5;
            4'b0110: bin = 4'd6;
            4'b0111: bin = 4'd7;
            4'b1000: bin = 4'd8;
            4'b1001: bin = 4'd9;
            default: bin = 4'd0; // invalid BCD
        endcase
    end

endmodule