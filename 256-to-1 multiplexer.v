module top_module( 
    input [255:0] in,
    input [7:0] sel,
    output out );
    integer k;
    always @(*) begin
        for (k = 0; k <= 255; k++) begin
            if (sel == k)
                out = in[k];
        end
    end
endmodule
