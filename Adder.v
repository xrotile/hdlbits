module full_addr(input a, input b, input cin, output cout, output sum);
    assign cout = (a & b) | (a & cin) | (b & cin);
    assign sum = (a ^ b ^ cin);
endmodule

module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [3:0] cout;
    full_addr(x[0], y[0], 0, cout[0], sum[0]);
    generate 
        genvar k;
        for (k = 1; k <= 3; k++) begin : full_addrs
            full_addr(x[k], y[k], cout[k - 1], cout[k], sum[k]);
        end

    endgenerate
    assign sum[4] = cout[3];
endmodule
