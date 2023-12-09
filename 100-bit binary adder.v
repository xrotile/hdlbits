module to1(input a, b, cin, output cout, sum);
	assign sum = a ^ b ^ cin;
    assign cout = (a &b) | (a & cin) | (b &cin);
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    wire [99:0] t;
    to1(a[0], b[0], cin, t[0], sum[0]);
    generate
        genvar k;
        for (k = 1; k <= 99; k++) begin : full_addr
            to1(a[k], b[k], t[k - 1], t[k], sum[k]);
        end
    endgenerate
    assign cout = t[99];
endmodule
