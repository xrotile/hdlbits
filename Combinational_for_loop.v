module top_module( 
    input [99:0] in,
    output [99:0] out
);
    integer k;
    always @(*) begin
        for (k = 0; k <=99; k++)
            out[99 - k] = in[k];
    end
endmodule

