module binary_to_bcd (
    input [7:0] binary,      // 8-bit binary input
    output reg [11:0] bcd    // 3-digit BCD output
);

    integer i;
    reg [19:0] shift; // 20-bit shift register

    always @(*) begin
        shift = 0;          // initialize
        shift[7:0] = binary; // binary in lower 8 bits

        for(i=0; i<8; i=i+1) begin
            // Add 3 if BCD digit >= 5
            if(shift[11:8] >= 5) shift[11:8] = shift[11:8] + 3;
            if(shift[7:4]  >= 5) shift[7:4]  = shift[7:4] + 3;
            if(shift[3:0]  >= 5) shift[3:0]  = shift[3:0] + 3;

            shift = shift << 1; // shift left
        end

        bcd = shift[19:8]; // assign BCD output
    end

endmodule