module d_latch (
    input D,
    input en,
    output reg Q
);

    always @(*) begin
        if (en)
            Q = D;
        // else: holds previous value
    end
endmodule