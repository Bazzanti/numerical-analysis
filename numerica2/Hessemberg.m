function [H,Q] = Hessemberg( A )
%H=Hessemberg Q=ortogonale A=matrice in R nxn
%Q'*A*Q=H

H=A;
n=size(A);
Q=eye(n);
for k=1:n-2
    v=H(k+1:n,k);
    v(1)=v(1)+sign(v(1))*(norm(v,2));
    v=v./(norm(v,2));
    H(k+1:n,k:n)=H(k+1:n,k:n)-2*v*(v'*H(k+1:n,k:n));
    H(1:n,k+1:n)=H(1:n,k+1:n)-2*(H(1:n,k+1:n)*v)*v';
    Q(1:n,k+1:n)=Q(1:n,k+1:n)-2*(Q(1:n,k+1:n)*v)*v';
end

