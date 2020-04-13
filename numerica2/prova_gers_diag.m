A=eye(10);
B=A';
[a,b]=Gerschgorin(A);
[c,d]=Gerschgorin(B);
for t=1:size(A,1)
[ X,Y,C ] = cerchi(a(t),b(t,:));
plot(X,Y)
hold on
[ Z,K,U]= cerchi(c(t),d(t,:));
plot(Z,K)
hold on
end