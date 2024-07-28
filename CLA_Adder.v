module CLA_Adder(A,B,SUM,CIN,COUT);
    input [3:0]A,B;
    input CIN;
    output COUT;
    output [3:0]SUM;
    wire [3:0]p,g;
    wire [4:0]c;
    assign p[0]=(A[0]^B[0]), 
           p[1]=(A[1]^B[1]),
           p[2]=(A[2]^B[2]),
           p[3]=(A[3]^B[3]);
    assign g[0]=(A[0]&B[0]), 
           g[1]=(A[1]&B[1]),
           g[2]=(A[2]&B[2]),
           g[3]=(A[3]&B[3]);
    assign c[0]=CIN,
           c[1]=g[0]|(p[0]&CIN),
           c[2]=g[1]|(g[0]&p[1])|(p[1]&p[0]&CIN),
           c[3]=g[2]|(g[1]&p[2])|(g[0]&p[2]&p[1])|(p[2]&p[1]&p[0]&CIN),
           c[4]=g[3]|(g[2]&p[3])|(g[1]&p[3]&p[2])|(g[0]&p[3]&p[2]&p[1])|(p[3]&p[2]&p[1]&p[0]&CIN);
    assign SUM[0]=p[0]^c[0],
           SUM[1]=p[1]^c[1],
           SUM[2]=p[2]^c[2],
           SUM[3]=p[3]^c[3],
           COUT=c[4];
   endmodule
    
