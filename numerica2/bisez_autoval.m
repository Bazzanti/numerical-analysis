function [aut,ind] = bisez_autoval(A,j,a,b,kmax,tolla,tollr)
%Algoritmo che calcolo il j-esimo autovalore partendo dal piu' piccolo
%Dato j,  
%a,b estremi in cui è presente l autoval 
%kmax 
%tolla tolleranza assoluta
%tollr tolleranza relativa

for k=1:kmax
    c=(a+b)/2;
    s=Sturm(A,c);
    if s>=j
        b=c;
    else
        a=c;
    end
    if (b-a)<=tolla+tollr*abs(b)
        aut=c;
        ind=0;
        return
    end
end
ind=1;
aut=c;       
        
end

