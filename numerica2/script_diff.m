f=@(x,y) (-y-5*exp(-x).*sin(5*x));
y0=1;
t0=0;
tf=1;
h=1.e-1;
n=(tf-t0)/h; 
[y] =Eulero_espl(f,t0,tf,h,y0);
%[y] =Eulero_mod(f,t0,tf,h,y0);
%[y] =Heun(f,t0,tf,h,y0);

X=linspace(t0,tf);
SOL=@(t) (exp(-t).*cos(5*t));
K=SOL(X);
plot(X,K);
hold on
Z=linspace(t0,tf,n);
plot(Z,y,'r')

for i=1:n
    err=abs(SOL(i)-y(i));
end
max(err)