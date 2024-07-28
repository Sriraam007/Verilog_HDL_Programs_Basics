module BARREL_SHIFTER(D,SHIFT,OUT);
    input [7:0]D;
    input [2:0]SHIFT;
    output [7:0]OUT;
    wire [7:0]X,Y;
    
    //4 BIT RIGHT SHIFT
    
    MUX__2X1 M7(D[7],1'b0,SHIFT[2],X[7]);
    MUX__2X1 M6(D[6],1'b0,SHIFT[2],X[6]);
    MUX__2X1 M5(D[5],1'b0,SHIFT[2],X[5]);
    MUX__2X1 M4(D[4],1'b0,SHIFT[2],X[4]);
    MUX__2X1 M3(D[3],D[7],SHIFT[2],X[3]);
    MUX__2X1 M2(D[2],D[6],SHIFT[2],X[2]);
    MUX__2X1 M1(D[1],D[5],SHIFT[2],X[1]);
    MUX__2X1 M0(D[0],D[4],SHIFT[2],X[0]);
    
    //2 BIT RIGHT SHIFT
    
    MUX__2X1 M15(X[7],1'b0,SHIFT[1],Y[7]);
    MUX__2X1 M14(X[6],1'b0,SHIFT[1],Y[6]);
    MUX__2X1 M13(X[5],X[7],SHIFT[1],Y[5]);
    MUX__2X1 M12(X[4],X[6],SHIFT[1],Y[4]);
    MUX__2X1 M11(X[3],X[5],SHIFT[1],Y[3]);
    MUX__2X1 M10(X[2],X[4],SHIFT[1],Y[2]);
    MUX__2X1 M9(X[1],X[3],SHIFT[1],Y[1]);
    MUX__2X1 M8(X[0],X[2],SHIFT[1],Y[0]);
    
    //1 BIT RIGHT SHIFT
    
    MUX__2X1 M23(Y[7],1'b0,SHIFT[0],OUT[7]);
    MUX__2X1 M22(Y[6],Y[7],SHIFT[0],OUT[6]);
    MUX__2X1 M21(Y[5],Y[6],SHIFT[0],OUT[5]);
    MUX__2X1 M20(Y[4],Y[5],SHIFT[0],OUT[4]);
    MUX__2X1 M19(Y[3],Y[4],SHIFT[0],OUT[3]);
    MUX__2X1 M18(Y[2],Y[3],SHIFT[0],OUT[2]);
    MUX__2X1 M17(Y[1],Y[2],SHIFT[0],OUT[1]);
    MUX__2X1 M16(Y[0],Y[1],SHIFT[0],OUT[0]);

endmodule
    
    
    
    
    
    
