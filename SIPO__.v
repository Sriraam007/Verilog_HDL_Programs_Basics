module SIPO__(SI,CLK,PO,reset);
    input SI,CLK,reset;
    output [7:0]PO;
    reg [7:0]temp;
    always @(posedge CLK)
    begin
        if(~reset)
        begin
            temp=8'b00000000;
            temp={temp[6:0],SI};
        end
        else
            temp={temp[6:0],SI};
    end
    assign PO=temp;
endmodule
