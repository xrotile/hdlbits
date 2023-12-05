module top_module ( input clk, input d, output q );
    wire o1, o2;
    my_dff diff1(.clk(clk), .d(d), .q(o1));
    my_dff diff2(.clk(clk), .d(o1), .q(o2));
    my_dff diff3(.clk(clk), .d(o2), .q(q));
endmodule

