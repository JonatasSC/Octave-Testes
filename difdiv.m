#Interpolação por Newton - gera vetor com diferenças divididas
#Entradas: x (vetor com valores de x), y (vetor com valores de y)
#nome do arquivo: difdiv.m
#Saídas: C (vetor com as diferenças divididas a ser usada no pol interpolador

function C = difdiv(X,Y)
 d = zeros(length(X));
 d(:,1) = Y';
 for j = 2:length(X)
 for i = j:length(X)
 d(i,j) = (d(i,j-1) - d(i-1,j-1)) / (X(i) - X(i-j+1))
 end
 end
 C=transpose(diag(d))
end
