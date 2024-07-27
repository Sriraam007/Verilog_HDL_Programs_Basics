module Full_Adder(A,B,C,SUM,CARRY);
    input A,B,C;
    output SUM,CARRY;
    wire [2:0]w;
    Half_Adder ha(A,B,w[0],w[1]);
    Half_Adder ha1(w[0],C,SUM,w[2]);
    or o(CARRY,w[2],w[1]);
endmodule

