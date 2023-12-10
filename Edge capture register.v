module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0] rin;
    always @(posedge clk) begin
        if (reset) begin
            out <= 0;
            rin <= in;
        end
        else begin
            rin <= in;
            out <= (~in) & rin | out;
        end
    end
endmodule
