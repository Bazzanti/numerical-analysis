function [cont] = Sturm( A,c)
%A tridiagonale simmetrica  c appartiene [-norm(A)-1,+norm(A)+1]
%d= numero di autoval<1

n=size(A,1);
cont=0;
alfa=diag(A);
beta=diag(A,1);
q=alfa(1)-c;

if q<0
   cont=cont+1;
end

qq=q;

for k=2:n
    q=alfa(k-1)-c-((beta(k-1))^2)/qq;
    qq=q;
    if q<0
        cont=cont+1;
    end
end
end

