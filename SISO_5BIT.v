module SISO(clk,reset,SI,SO);
    input clk,reset,SI;
    output SO;
    reg [4:0]D;
    assign SO=D[4];
    always @(posedge clk or negedge reset)
    begin
        if(~reset)
        D<=0;
        else
        D<={D[3:0],SI};
    end
endmodule
   
 