function [y] = Eulero_mod(f,t0,tf,h,y0)
%Eulero Modificato per equaz diff

n=floor((tf-t0)/h);     %numero di intervalli
for i=1:n      
    t(i)=t0+i*h;   %vettore dell'insieme di rete
end

y=zeros(n,1);
y(1)=y0;

for i=1:n-1
    K1=f(t(i),y(i));
    K2=f(t(i)+h/2,y(i)+h/2*K1);    
    y(i+1)=y(i)+h*K2;
end

end
