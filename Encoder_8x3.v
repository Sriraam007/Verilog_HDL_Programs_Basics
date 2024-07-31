module Encoder_8x3(I,O);
    input [7:0]I;
    output reg [2:0]O;
    always @(I)
    begin
        if(I==8'h01)
        O<=3'b000;
        else if(I==8'h02)
        O<=3'b001;
        else if(I==8'h04)
        O<=3'b010;
        else if(I==8'h08)
        O<=3'b011;
        else if(I==8'h10)
        O<=3'b100;
        else if(I==8'h20)
        O<=3'b101;
        else if(I==8'h40)
        O<=3'b110;
        else if(I==8'h80)
        O<=3'b111;
    end
endmodule       
    
