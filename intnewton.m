#Interpolação - Newton
#Entradas: X(vetor linha com abscissas),
#C(vetor linha coeficientes das diferenças divididas),
#x(vetor linha com valores para interpolar)
#Nome do arquivo: intnewton.m
#rodar antes a função difdiv para obter o vetor C
#Saída: retorna valores de y para x dados na entrada.

function p=intnewton(X,C,x)
k=length(C);
[m,n]=size(x);
p=ones(m,n)*C(k);
for i=k-1:-1:1
 p=(x-X(i)).*p+C(i);
end
