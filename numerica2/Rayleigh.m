function [ s,w,ind ] = Rayleigh( A,u,eta,kmax )
%Metodo di iterazione del quoziente di Rayleigh 
ind=1;
n=size(A,1);   %dim A
v=ones(n,1);   %inizializzo v
v=v/norm(v);
I=eye(n);
E=(A-u*I);      
w=E\v;
s=v'*w;
for i=1:kmax 
    v=w/norm(w);
    w=E\v;
    s=v'*w;
    if norm(s*(A*w)-(1+s*u)* w)<=eta*abs(s)
        ind=0;
        return;
    end
end
s
%s=u+1/s;
end


