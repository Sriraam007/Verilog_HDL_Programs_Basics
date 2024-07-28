module BCD_Adder(A,B,CIN,SUM,COUT);
    input [3:0]A,B;
    input CIN;
    output COUT;
    output [3:0]SUM;
    reg [4:0]SUM_TEMP;
    reg COUT;
    reg [3:0]SUM;
    always @(A,B,CIN)
    begin
        SUM_TEMP=A+B+CIN;
        if(SUM_TEMP>9)
        begin
            SUM_TEMP=SUM_TEMP+6;
            COUT=1;
            SUM=SUM_TEMP[3:0];
        end
        else
        begin
            COUT=0;
            SUM=SUM_TEMP[3:0];
        end
    end
endmodule
    
    
