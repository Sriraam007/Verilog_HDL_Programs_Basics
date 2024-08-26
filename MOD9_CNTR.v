module MOD9_CNTR(clk,reset,count);
    input clk,reset;
    output reg [3:0]count;
    initial count=0;
    always @(posedge clk or negedge reset)
    begin
        if(!reset)
        count<=0;
        else if(count==4'b1000)
        count<=0;
        else
        count<=count+1;
    end
endmodule
