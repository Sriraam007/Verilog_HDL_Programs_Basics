module MUX_8X1(D,S,OUT);
    input [7:0]D;
    input [2:0]S;
    output OUT;
    assign OUT= (S==3'b000)? D[0] : (S==3'b001)? D[1] : (S==3'b010)? D[2] : (S==3'b011)? D[3] :
                (S==3'b100)? D[4] : (S==3'b101)? D[5] : (S==3'b110)? D[6] : D[7];
endmodule
        
     

