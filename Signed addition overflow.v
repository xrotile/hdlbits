# signed
module full_addr(input a, input b, input cin, output cout, output sum);
    assign cout = (a & b) | (a & cin) | (b & cin);
    assign sum = (a ^ b ^ cin);
endmodule

module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
	
    wire[7:0] cout;
    full_addr(a[0], b[0], 0, cout[0], s[0]);
    generate
        genvar k;
        for (k = 1; k <= 7; k++) begin : full_addrs
            full_addr(a[k], b[k], cout[k - 1], cout[k], s[k]);
        end
    endgenerate
    assign overflow = a[7] & b[7] & ~s[7] | ~a[7] & ~b[7] & s[7];
endmodule
