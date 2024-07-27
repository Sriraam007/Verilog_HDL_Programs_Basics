module MUX__2X1(D0,D1,S,OUT);
    input D0,D1;
    input S;
    output OUT;
    assign OUT=(S)? D1 : D0;
endmodule
