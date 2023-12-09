module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire [3:0] ww;
    bcd_fadd(a[3:0], b[3:0], cin, ww[00], sum[3:0]);
    
    generate
        genvar k;
        for (k = 1; k <= 3; k++) begin: full_addr
            bcd_fadd(a[4 * k + 3 : 4 * k], b[4 * k + 3: 4 * k], ww[k - 1], ww[k], sum[4 * k + 3 : 4* k]);
        end
    endgenerate
    assign cout = ww[3];
endmodule
