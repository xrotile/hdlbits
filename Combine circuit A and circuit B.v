module m1(input x, input y, output z);
    assign z = (x ^ y) & x;
endmodule

module m2(input x, input y, output z);
    assign z = (~x & ~y) | (x & y);
endmodule

module top_module (input x, input y, output z);
	wire z1, z2, z3, z4;
    m1(x, y, z1);
    m2(x, y, z2);
    
    m1(x, y, z3);
    m2(x, y, z4);
    assign z = (z1 | z2) ^ (z3 & z4);
endmodule
