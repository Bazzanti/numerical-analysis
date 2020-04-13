function [ s,w,ind] = Potenzeinverse( A,kmax,eta)
%Potenzeinverse   A=n*n   kmax=max_1iterazione  eta=tolleranza

ind=1;
n=size(A);   %dim A
v=ones(n,1);   %inizializzo v
v=v/norm(v);
[L,U]=lu(A);   %fattorizzazione LU di A
x=L\v;
w=U\x;
for i=1:kmax 
    v=w/norm(w);
    x=L\v;
    w=U\x; 
    s=v'*w;
    if norm(A*w-s*w)<eta*abs(s)
        ind=0;
        return;
    end
end
s=1/s;   %autoval inverso
end

