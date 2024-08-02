module MULTIPLIER_4X4(A,B,PRODUCT);
    input [3:0]A,B;
    output [7:0]PRODUCT;
    wire [14:0]W;
    wire [5:0]sum;
    wire [10:0]carry;
    assign PRODUCT[0]=A[0]&B[0],
           W[0]=A[1]&B[0], 
           W[1]=A[0]&B[1],
           W[2]=A[2]&B[0],
           W[3]=A[0]&B[2],
           W[4]=A[1]&B[1],
           W[5]=A[3]&B[0],
           W[6]=A[2]&B[1],
           W[7]=A[1]&B[2],
           W[8]=A[0]&B[3],
           W[9]=A[3]&B[1],
           W[10]=A[2]&B[2],
           W[11]=A[1]&B[3],
           W[12]=A[3]&B[2],
           W[13]=A[2]&B[3],
           W[14]=A[3]&B[3];
    Half_Adder ha1(W[0],W[1],PRODUCT[1],carry[0]); //carry0 = HA1'S carry
    Half_Adder ha2(W[2],W[4],sum[0],carry[1]); //carry1= HA2'S carry, sum0=HA2'S sum
    Half_Adder ha3(W[5],W[6],sum[1],carry[2]); //carry2=HA3'S=sum1
    Full_Adder fa1(W[3],sum[0],carry[0],PRODUCT[2],carry[3]); //carry3=FA1'S
    Full_Adder fa2(W[7],sum[1],carry[1],sum[2],carry[4]);//sum2=carry4=FA2'S
    Full_Adder fa3(W[9],W[10],carry[2],sum[3],carry[5]);//sum3=carry5=FA3'S
    Full_Adder fa4(W[8],sum[2],carry[3],PRODUCT[3],carry[6]);//carry6=FA4'S
    Full_Adder fa5(W[11],sum[3],carry[4],sum[4],carry[7]);//sum4=carry7=FA5'S
    Full_Adder fa6(W[12],W[13],carry[5],sum[5],carry[8]);//sum5=carry8=FA6'S
    Half_Adder ha4(sum[4],carry[6],PRODUCT[4],carry[9]);//carry9=HA4'S
    Full_Adder fa7(sum[5],carry[7],carry[9],PRODUCT[5],carry[10]);//carry10=FA7'S
    Full_Adder fa8(carry[10],W[14],carry[8],PRODUCT[6],PRODUCT[7]);
    
endmodule
    
    
    
    