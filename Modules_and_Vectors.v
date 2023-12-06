module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    reg[7:0] r1, r2, r3;
    my_dff8 d1(.clk(clk), .d(d), .q(r1));
    my_dff8 d2(.clk(clk), .d(r1), .q(r2));
    my_dff8 d3(.clk(clk), .d(r2), .q(r3));
    
    always @(*)
       begin
           case(sel)
               2'b00: q = d;
               2'b01: q = r1;
               2'b10: q = r2;
               2'b11: q = r3;
           endcase
       end
endmodule

