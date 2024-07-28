module ADD_SUB(A,B,MODE,SUM,COUT);
    input [3:0]A;
    input [3:0]B;
    input MODE;
    output [3:0]SUM;
    output COUT;
    wire [3:0]wcarry;
    wire [3:0]wB;
    assign wB[0]=B[0]^MODE;
    assign wB[1]=B[1]^MODE;
    assign wB[2]=B[2]^MODE;
    assign wB[3]=B[3]^MODE;
    Full_Adder FA1(A[0],wB[0],MODE,SUM[0],wcarry[0]);
    Full_Adder FA2(A[1],wB[1],wcarry[0],SUM[1],wcarry[1]);
    Full_Adder FA3(A[2],wB[2],wcarry[1],SUM[2],wcarry[2]);
    Full_Adder FA4(A[3],wB[3],wcarry[2],SUM[3],wcarry[3]);
    assign COUT=wcarry[3];
endmodule
        
          
    
