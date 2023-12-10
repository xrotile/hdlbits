module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
    reg [7:0] prein;
    always @(posedge clk) begin
        prein <= in;
        anyedge = ((~prein) & in) | ((~in) & prein);
    end
endmodule
