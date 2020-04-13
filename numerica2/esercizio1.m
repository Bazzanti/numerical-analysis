A=[1 2 -1; 2 7 0; -1 0 -5];
B=A';               %uso Gersschgorin nelle colonne tramite la trasposta
[a,b]=Gerschgorin(A);     %a,c raggi   b,d centri       
[c,d]=Gerschgorin(B);  
for t=1:size(A,1)
[ X,Y,C ] = cerchi(a(t),b(t,:));    
plot(X,Y,C(1),C(2),'*') 
hold on
[ Z,K,U]= cerchi(c(t),d(t,:));
plot(Z,K,U(1),U(2),'*')
hold on
end