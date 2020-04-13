f=@(x,y) (2*y+exp(-x));
y0=2/3;
t0=0;
tf=2;
h=1.e-1;
n=(tf-t0)/h; 
[y] =Eulero_espl(f,t0,tf,h,y0);
%[y] =Eulero_mod(f,t0,tf,h,y0);
%[y] =Heun(f,t0,tf,h,y0);

X=linspace(t0,tf);
SOL=@(t) (exp(2*t)-exp(-t)/3);
K=SOL(X);
plot(X,K);
hold on
Z=linspace(t0,tf,n);
plot(Z,y,'r')