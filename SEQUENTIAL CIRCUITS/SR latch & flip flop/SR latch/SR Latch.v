module sr_latch (
    input S,
    input R,
    output reg Q
);

    always @(*) begin
        if (S && !R)
            Q = 1'b1;
        else if (!S && R)
            Q = 1'b0;
        else if (!S && !R)
            Q = Q;      
        else
            Q = 1'bx;   
    end
endmodule