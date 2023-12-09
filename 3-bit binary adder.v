module mod1(input a, b, input cin, output cout, output sum);
    assign sum = (a ^ b ^ cin);
    assign cout = (a & b) | (cin & a) | (cin & b);
endmodule

module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    mod1(a[0], b[0], cin, cout[0], sum[0]);
	generate
    	genvar k;
        for (k = 1; k < 3; k++) begin : full_addrs
            mod1(a[k], b[k], cout[k - 1], cout[k], sum[k]);
        end
    endgenerate
endmodule
