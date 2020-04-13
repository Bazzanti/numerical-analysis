%script potenze 
y=[1 2 3 4 5];
n=5;
B=zeros(n,n);
for i=1:n
    for j=1:n
    B(i,j)=y(i)^(n-j);       %matrice B
    end
end
v=[1; 1; 1; 1; 1];  %vettore scelto
v=v/norm(v);
ind=1;
w=B*v;  
eta=1.e-2;  %tolleranza
for k=1:100
    v=w/norm(w);   
    w=B*v;
    s=v'*w;
    if norm(B*w-s*w) < eta*abs(s)
        ind=0
        w
        s
        return;
    end
end
