module Ripple_Adder(A,B,CIN,SUM,COUT);
    input [3:0]A;
    input [3:0]B;
    input CIN;
    output [3:0]SUM;
    output COUT;
    wire [3:0]wcarry;
    Full_Adder FA1(A[0],B[0],CIN,SUM[0],wcarry[0]);
    Full_Adder FA2(A[1],B[1],wcarry[0],SUM[1],wcarry[1]);
    Full_Adder FA3(A[2],B[2],wcarry[1],SUM[2],wcarry[2]);
    Full_Adder FA4(A[3],B[3],wcarry[2],SUM[3],wcarry[3]);
    assign COUT=wcarry[3];
endmodule
    
