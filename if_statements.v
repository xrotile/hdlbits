// synthesis verilog_input_version verilog_2001
module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 
    reg condition;
    assign out_assign = (sel_b1 && sel_b2) ?  b : a;
    always @(*)
        begin
            condition = sel_b1 && sel_b2;
            if (condition) begin
                out_always = b;
            end
            else begin
                out_always = a;
            end    
        end
endmodule

