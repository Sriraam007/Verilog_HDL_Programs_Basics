module MUX_NX1(D,S,OUT);
    parameter N=2;
    input [((2**N)-1):0]D;
    input [(N-1):0]S;
    output OUT;
    assign OUT=D[S];
endmodule
