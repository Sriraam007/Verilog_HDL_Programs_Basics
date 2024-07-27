module MUX_4X1(D,S,OUT);
    input [3:0]D;
    input [1:0]S;
    output OUT;
    assign OUT= (S==2'b00)? D[0] : (S==2'b01)? D[1] : (S==2'b10)? D[2] : D[3];
endmodule   
        
