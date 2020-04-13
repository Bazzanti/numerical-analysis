%script potenze 
A=[1 -1 2; -2 0 5;6 -3 6];   %matrice A
v=[1; 1; 1];  %vettore scelto
v=v/norm(v);
ind=1;
w=A*v;  
eta=1.e-2;  %tolleranza
for k=1:10
    v=w/norm(w);   
    w=A*v;
    s=v'*w;
    if norm(A*w-s*w) < eta*abs(s)
        ind=0
        w
        s
        return;
    end
end
