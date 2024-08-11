module UPDOWN_CNTR(clk,reset,count,k);
    input clk,reset,k;
    output reg[3:0]count;
    initial count=0;
    always @(posedge clk or negedge reset)
    begin
        if(k==1'b1)
        count<=count+1;
        else
        count<=count-1;
    end 
endmodule
        
        
