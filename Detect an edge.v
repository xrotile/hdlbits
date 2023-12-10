module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0] prein;
    always @(posedge clk) begin
        prein <= in;
        pedge <= (~prein) & in;
    end
endmodule
