function [ r,c ] = Gerschgorin(A)
%Funzione di Gersghorin r=raggio c=centro A=matrice in R n*n
D=size(A);
r=zeros(D(1),1); %vettore raggi 
c=zeros(D(1),2); %vettore centri (1° colonna=x,2° colonna=y)
for i=1:D(1)
    z=0;         %inizializzo z
    for j=1:D(2)
        z=z+abs(A(i,j));   %z=sommatoria delle righe
    end
    r(i)=z-abs(A(i,i));    %r=z-elemento della diag
    c(i,1)=A(i,i);         %c=elemento della diag
end
end

