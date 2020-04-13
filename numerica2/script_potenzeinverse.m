A=[1 -1 2; -2 0 5;6 -3 6];   %matrice A
eta=1.e-4;
[ s,w,ind]=Potenzeinverse(A,100,eta)