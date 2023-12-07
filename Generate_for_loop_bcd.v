module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire [99 : 0] w;
    bcd_fadd(a[3:0], b[3:0], cin, w[0], sum[3:0]);
    generate 
        genvar k;
        for (k = 1; k < 100; k++) begin: full_addr
            bcd_fadd(a[4 * k + 3 : 4 * k], b[4 * k + 3 : 4 * k], w[k - 1], w[k], sum[4 *k + 3 : 4 * k]);
        end
    endgenerate
    assign cout = w[99];
endmodule

