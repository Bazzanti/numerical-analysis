y=[1 2 3 4 5];
n=5;
B=zeros(n,n);
for i=1:n
    for j=1:n
    B(i,j)=y(i)^(n-j);       %matrice B
    end
end
eta=1.e-4;
[ s,w,ind]=Potenzeinverse(B,100,eta)