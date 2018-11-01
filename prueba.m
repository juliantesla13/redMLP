% Caso de prueba.
clc
clear all
close all

n = 2;
%X = rand(n,100);
%D = prod(X)+sum(X);
X = [0 1 0 1; 0 0 1 1];
D = [0 1 1 0];

alpha = 0.01;
[W,V] = creaMLP(n,4*n);
Y = operaMLP(W,V,X);
e = sum(sum(abs(D-Y)))
emax = 0.01;
dietime = 10000;
while((e > emax) && (dietime > 0))
	[W,V] = entrenaMLP(W,V,X,D,alpha);
	Y = operaMLP(W,V,X);
	e = sum(sum(abs(D-Y)));
	dietime = dietime-1;
end