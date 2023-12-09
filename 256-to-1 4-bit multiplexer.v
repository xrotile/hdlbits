# https://stackoverflow.com/questions/17778418/what-is-and
module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
	integer k;
    always @(*) begin
        k = sel;
        out = in[4 *sel  +: 4];
    end
endmodule
