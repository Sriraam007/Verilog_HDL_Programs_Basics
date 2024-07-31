module COM_4BIT(x,y,gre,les,eq);
    input [3:0]x,y;
    output gre,les,eq;
    wire [3:0]a,b,eu;
    wire d1,d2,d3,d4,d5,d6;
    com_1 c1(x[0],y[0],a[0],b[0],eu[0]);
    com_1 c2(x[1],y[1],a[1],b[1],eu[1]);
    com_1 c3(x[2],y[2],a[2],b[2],eu[2]);
    com_1 c4(x[3],y[3],a[3],b[3],eu[3]);
    and z1(eq,eu[0],eu[1],eu[2],eu[3]);
    and z2(d1,eu[0],a[1]);
    and z3(d2,a[2],eu[0],eu[1]);
    and z4(d3,a[3],eu[0],eu[1],eu[2]);
    and z5(d4,eu[0],b[1]);
    and z6(d5,b[2],eu[0],eu[1]);
    and z7(d6,b[3],eu[0],eu[1],eu[2]);
    or(les,a[0],d1,d2,d3);
    or(gre,b[0],d4,d5,d6);
endmodule


    
            
                   
                 
            
            
            
        
        
    
    
               
    
    
                
        
    
   
    
