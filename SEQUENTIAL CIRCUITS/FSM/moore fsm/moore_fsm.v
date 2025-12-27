module moore_1010 (
    input clk,
    input reset,
    input in,
    output reg out
);

    // State encoding
    parameter S0 = 3'b000,
              S1 = 3'b001,
              S2 = 3'b010,
              S3 = 3'b011,
              S4 = 3'b100;

    reg [2:0] present_state, next_state;

    // State register
    always @(posedge clk or posedge reset) begin
        if (reset)
            present_state <= S0;
        else
            present_state <= next_state;
    end

    // Next state logic
    always @(*) begin
        case (present_state)
            S0: next_state = (in) ? S1 : S0;
            S1: next_state = (in) ? S1 : S2;
            S2: next_state = (in) ? S3 : S0;
            S3: next_state = (in) ? S1 : S4;
            S4: next_state = (in) ? S1 : S0;
            default: next_state = S0;
        endcase
    end

    // Output logic (Moore)
    always @(*) begin
        if (present_state == S4)
            out = 1'b1;
        else
            out = 1'b0;
    end

endmodule