module top_module (
    input clk,
    input d, 
    input ar,   // asynchronous reset
    output q);
    always @(posedge ar, posedge clk) begin
        if (ar)
            q <= 0;
        else if (clk)
            q <= d;
    end
endmodule
