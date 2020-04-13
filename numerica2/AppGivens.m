function [ H,Q ] = AppGivens(A)
%Applico le matrici di Givens ad A 
%H=matrice A trasformata in Hessemberg   
%Q=matrice di trasformazione ortogonale

n=size(A);
Q=eye(n);
for l=3:n      %da 3 per hess.
    for q=l:n
       G=MatriceGivens(l-1,q,A,l-2);   %p=l-1 q=q j=l-2
       A=G'*A*G;  %post-pre molt.
       Q=Q*G;    %Q ortog.
       
    end 
end
H=A;
end

