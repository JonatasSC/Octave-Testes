#Sistemas Lineares - Método de decomposição LU com pivoteamento parcial
#Entradas: A (matriz quadrada m*m) e b (matriz coluna m*1)
#nome do arquivo: lupivp.m
function l = lupivp(A,b)
#analisando compatibilidade A e b
n1=size(A)
n2=size(b)
#Verificar A é quadrada, b é matriz coluna, A e b possuem mesmo numero de linhas.
#Se sim, apresentar a matriz A
if n1(1)==n1(2) & n2(2)==1 & n1(1)==n2(1)
A
else
display('inconsistência entre as matrizes ou matriz A possui determinante igual a zero.')
endif
##decomposição lu
[L, U, P] = lu(A)
#resolucao do sistema LY=Pb é Y=L\P*b
 P*A;
 P*b;
if det(L)~=0
 Y=L\P*b
 else
 display('A matriz L possui determinante igual a zero.')
endif
#resolucao do sistema UX=Y é X=U\Y
if det(U)~=0
 X=U\Y
 else
 display('A matriz U possui determinante igual a zero.')
endif
endfunction

