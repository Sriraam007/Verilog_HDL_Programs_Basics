module SEQUENCE_DECODE(clk,reset,number,locked,unlocked);
    input clk,reset;
    input [2:0]number;
    output reg locked,unlocked;
    parameter LOCKED = 2'b00,
              NUMBER1 = 2'b01,
              NUMBER3 = 2'B10,
              NUMBER5 = 2'B11;
    reg [1:0]STATE;
    always @(posedge clk or negedge reset)
    begin
        if(!reset)
        STATE<=LOCKED;
        else
        begin
            case(STATE)
                LOCKED:
                begin
                    locked<=1;
                    unlocked<=0;
                    if(number==3'b001)
                    STATE<=NUMBER1;
                    else
                    STATE<=LOCKED;
                end
                NUMBER1:
                begin
                    locked<=1;
                    unlocked<=0;
                    if(number==3'b011)
                    STATE<=NUMBER3;
                    else
                    STATE<=LOCKED;
                end
                NUMBER3:
                begin
                    locked<=1;
                    unlocked<=0;
                    if(number==3'b101)
                    STATE<=NUMBER5;
                    else
                    STATE<=LOCKED;
                end
                NUMBER5:
                begin
                    locked<=0;
                    unlocked<=1;
                end
                default:
                STATE<=LOCKED;
        endcase
    end
end
endmodule
                
                    
              
              
