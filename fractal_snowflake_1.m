function [y,T,d]=fractal_snowflake_1(x,n,N)       % n----Unit Dimension; N----Recursion Number, 0 for default
set(0,'RecursionLimit',500);
N=N+1;
A=[x(1,1),x(1,2)];
B=[x(2,1),x(2,2)];
D1=(A*2+B)/3;
D2=(A+2*B)/3;
D=[D1(1)/2+D2(1)/2+(3^(1/2)*D1(2))/2-(3^(1/2)*D2(2))/2  D1(2)/2+D2(2)/2-(3^(1/2)*D1(1))/2+(3^(1/2)*D2(1))/2];

l=D1-D;
d=sqrt(l(1)^2+l(2)^2);
y1=[A;D1];
y2=[D1;D];
y3=[D;D2];
y4=[D2;B];

if N<n
    T=N;
    y_1=fractal_snowflake_1(y1,n,T);
    T=N;
    y_2=fractal_snowflake_1(y2,n,T);
    T=N;
    y_3=fractal_snowflake_1(y3,n,T);
    T=N;
    [y_4,T,d]=fractal_snowflake_1(y4,n,T);
y=[y_1;y_2;y_3;y_4];
else
    T=N;
    y=[A;D1;D;D2;B];
end