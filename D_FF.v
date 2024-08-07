module D_FF(
    input Din,
    input clk,
    output reg Q);
    always @(posedge clk)
       Q=Din;
   endmodule