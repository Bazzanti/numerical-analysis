A=[33 16 72;-24 -10 -57; -8 -4 -17];   %matrice A
u=2.1;
[ s,w,ind]=Rayleigh(A,u,1.e-16,100)