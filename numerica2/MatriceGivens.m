function [ G ] = MatriceGivens( p,q,A,j)
%p,q<n 
%G=matrice di givens n*n  
%A matrice input n*n

n=size(A);
G=eye(n);
%costruzione c,s
if A(q,j)==0
    return
end

if A(p,j)==0  %se A(p,j)==0 definisco c,s
     c=1;
     s=0;
%     s=A(q,j)/(sqrt(A(q,j)^2+A(p,j)^2));
%     c=A(p,j)/(sqrt(A(q,j)^2+A(p,j)^2));
%end
else
    t=A(q,j)/A(p,j);
    if  abs(t)<=1
        c=1/sqrt(1+t^2);
        s=c*t;
    else
        T=A(p,j)/A(q,j);
        s=1/sqrt(1+T^2);
        c=s*T;
    end
end

%costruzione Givens
G(p,p)=c;
G(p,q)=-s;
G(q,p)=s;
G(q,q)=c;
end

