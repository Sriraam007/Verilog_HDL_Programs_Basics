module FSM_SMALL(clk,rst,g0,g1,g0out,g1out);
    input clk,rst,g0,g1;
    output reg g0out,g1out;
    parameter Idle = 2'b00,
              Gr0 = 2'b01,
              Gr1 = 2'b10;
    reg [1:0]state;
    always @(posedge clk or negedge rst)
    begin
        if(!rst)
        state<=Idle;
        else
        begin
            case(state)
                Idle:
                begin
                    g0out<=1'b0;
                    g1out<=1'b0;
                    if(g0==1'b1)
                    state<=Gr0;
                    else if(g1==1'b1)
                    state<=Gr1;
                    else
                    state<=Idle;
                end
                Gr0:
                begin
                    g0out<=1'b1;
                    if(g0==1'b1)
                    state<=Gr0;
                    else
                    state<=Idle;
                end
                Gr1:
                begin
                    g1out<=1'b1;
                    if(g1==1'b1)
                    state<=Gr1;
                    else
                    state<=Idle;
                end
                default:
                state<=Idle;
        endcase
    end
end
endmodule
              
