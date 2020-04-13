function [ Q ] = house ( x )
%Q di householder, x vettore 1,n

n=size(x,1); %inizializzazione n=numero colonne di x
I=eye(n);
u=zeros(n,1); 
u(1)= x(1) + sign(x(1)) * norm(x,2); %primo elemento di u (secondo house)
for i=2:n
       u(i)=x(i);      %da 2:n elementi di u invariate
end
v=u/norm(u,2);   %normalizzo
Z=v*(v');        
Q=I-2*Z;
end

