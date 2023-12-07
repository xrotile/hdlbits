module top_module( 
    input [254:0] in,
    output [7:0] out );
	integer k;
    always @(*) begin
        out = 8'b00000000;
        for (k = 0; k <= 254; k++) begin
            if (in[k] == 1)
                out++;
        end
    end
    
endmodule

