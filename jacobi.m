#Sistemas Lineares - Método Gauss-Jacobi
#Entradas: A (matriz quadrada m*m), b (matriz coluna m*1) e u(mx1), T, N
#Lançar as matrizes A e b, com os maiores coeficientes na diagonal principal
#nome do arquivo: jacobi.m
function x = jacobi(A,b,u,T,N)
#analisando compatibilidade A e b
n1=size(A)
n2=size(b)
n3=size(u)
#Verificar: A é quadrada; b é matriz coluna;
#A e b possuem mesmo numero de linhas;
#b e u apresentam mesmo numero de linhas e uma coluna.
#Se sim, apresentar a matriz A
if n1(1)==n1(2) & n2(2)==1 & n1(1)==n2(1) & n2(1)==n3(1) & n2(2)==n3(2) & det(A)~=0
A
else
display('inconsistência entre as matrizes ou matriz A com determinante =0.')
endif
##rotina jacobi
n=length(b);
#
for k=1:N
 for j=1:n
 x(j) = ( b(j) - A(j,[1:j-1,j+1:n])*u([1:j-1,j+1:n]) ) / A(j,j)
 end
 errox=norm(x'-u,inf)
 norm(x,inf)
 errorelx=errox/norm(x,inf)
 if errorelx < T
 disp('Jacobi converge com a tolerância desejada')
 break;
 end
 u=x';
end
sprintf('Após k=%d iterações',k)
x=x'
