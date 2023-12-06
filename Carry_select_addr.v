module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire[15:0] r1;
    wire[15:0] r2;
    wire cout1, cout2, cout3;
    add16 add1(.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(cout1));
    add16 add2(.a(a[31:16]), .b(b[31:16]), .cin(0), .sum(r1), .cout(cout2));
    add16 add3(.a(a[31:16]), .b(b[31:16]), .cin(1), .sum(r2), .cout(cout3));
    
    always @(*)
        begin
            case(cout1)
                1'b0: sum[31:16] = r1;
                1'b1: sum[31:16] = r2;
            endcase
        end
    
endmodule

