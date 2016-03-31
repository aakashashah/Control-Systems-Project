function dY = dX_NL( t,X,params )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
p1=params.p1;
p2=params.p2;
p3=params.p3;
n=params.n;
B=params.B;
Gb=params.Gb;
Ib=params.Ib;

X1=X(1);
X2=X(2);
X3=X(3);
X4=X(4);

dY=zeros(4,1);

dY(1)=-p1*(X1-Gb)-X1*X2+X4;
dY(2)=-p2*X2+p3*(X3-Ib);
dY(3)=-n*(X3-Ib)+input(t);
dY(4)=-B*X4;




end

