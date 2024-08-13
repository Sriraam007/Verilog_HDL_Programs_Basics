module SIPO_8BIT(SI,clk,reset);
    input clk,reset,SI;
    wire [7:0]Q;
    reg [7:0]next_Q;
    D_FF D1(SI,clk,Q[0]);
    D_FF D2(next_Q[0],clk,Q[1]);
    D_FF D3(next_Q[1],clk,Q[2]);
    D_FF D4(next_Q[2],clk,Q[3]);
    D_FF D5(next_Q[3],clk,Q[4]);
    D_FF D6(next_Q[4],clk,Q[5]);
    D_FF D7(next_Q[5],clk,Q[6]);
    D_FF D8(next_Q[6],clk,Q[7]);
    always @(posedge clk or negedge reset)
    begin
        if(~reset)
        next_Q=8'b00000000;
        else
        next_Q=Q;
    end
endmodule
    
