module add_fa(input a, b,
              input cin, output cout, output sum);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule

      
module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
	
    add_fa(a[0], b[0], cin, cout[0], sum[0]);
    generate 
        genvar k;
        for (k = 1; k <= 99; k++) begin: full_addr
            add_fa(a[k], b[k], cout[k - 1], cout[k], sum[k]);
        end
    endgenerate
endmodule

