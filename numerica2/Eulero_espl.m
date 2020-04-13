function [y] = Eulero_espl(f,t0,tf,h,y0)
%Eulero Esplicito per equaz diff

n=floor((tf-t0)/h);     %numero di intervalli
for i=1:n      
    t(i)=t0+i*h;   %vettore dell'insieme di rete
end

y=zeros(n,1);
y(1)=y0;

for i=1:n-1
    y(i+1)=y(i)+h.*f(t(i),y(i));
end

end

