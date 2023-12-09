module top_module (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0] q
);
    always @(posedge clk, posedge areset) begin
        if (areset)
            q <= 8'd0;
        else if (clk)
            q <= d;
    end
endmodule
