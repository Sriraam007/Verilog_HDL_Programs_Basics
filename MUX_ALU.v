module MUX_ALU(A,B,S,OUT);
    
    input [7:0]A;
    input [7:0]B;
    input [2:0]S;
    output [8:0]OUT;
    assign OUT = (S==3'b000)? A + B : (S==3'b001)? A - B : (S==3'b010)? A*B : (S==3'b011)? A/B : (S==3'b100)? A%B :
                   (S==3'b101)? A&B : (S==3'b110)? A|B : A^B;
    endmodule
