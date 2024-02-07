#Rotina: retorna o valor de y, para x dado, pelo polinômio de Lagrange
#salvar como lagrange.m
#Entradas: X: vetor de ordenadas; Y: vetor de abscissas; x: valor a interpolar.

function [y] = lagrange(x, X,Y)
 n = size(X,2);
 y = 0;
 for i=1:n
 p = 1;
 for j=1:n
 if j == i % avoiding fancy division by 0
 continue;
 endif;
 p *= (x-X(j)) / (X(i)-X(j));
 endfor;
 y += Y(i) * p;
 endfor;
endfunction;

