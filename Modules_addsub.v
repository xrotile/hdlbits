module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire[31:0] nb;
    assign nb = {32{sub}} ^ b;
    wire cout1, cout2;
    add16 add1(.a(a[15:0]), .b(nb[15:0]), .cin(sub), .cout(cout1), .sum(sum[15:0]));
    add16 add2(.a(a[31:16]), .b(nb[31:16]), .cin(cout1), .cout(cout2), .sum(sum[31:16]));
endmodule

