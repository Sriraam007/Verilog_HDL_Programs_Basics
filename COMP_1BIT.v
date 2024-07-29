module COMP_1BIT(A,B,OUT3,OUT2,OUT1);
    input A,B;
    output OUT1,OUT2,OUT3;
    //assigning 1st bit for A>B ; 2nd bit for A=B ;  3rd bit for A<B
    assign OUT3 = (A&(~B)); 
    assign OUT2 = (~(A^B));
    assign OUT1 = ((~A)&B);
endmodule
