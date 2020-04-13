function [ X,Y,C ] = cerchi(r,c)
%r=raggio c=centro
t=[0:0.01:1];
x=c(1);
y=c(2);
X=c(1)+r*cos(2*pi*t);
Y=c(2)+r*sin(2*pi*t);
C=c;
end

