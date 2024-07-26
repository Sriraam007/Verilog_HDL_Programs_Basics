module Half_Adder(A,B,SUM,CARRY);
    input A,B;
    output SUM,CARRY;
    xor x(SUM,A,B);
    and a(CARRY,A,B);
endmodule
