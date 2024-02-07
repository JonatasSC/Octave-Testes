#Rotina 1: para gerar polinômio de grau 2
#salvar como lagrange2grau
function p = lagrange2grau(x,X,Y)
pkg load symbolic
L(1,:)=poly([X(2) X(3)])/((X(1)-X(2))*(X(1)-X(3)))
L(2,:)=poly([X(1) X(3)])/((X(2)-X(1))*(X(2)-X(3)))
L(3,:)=poly([X(1) X(2)])/((X(3)-X(1))*(X(3)-X(2)))
P=Y(1)*L(1,:)+Y(2)*L(2,:)+Y(3)*L(3,:)
pretty(poly2sym(P)) #ver o polinômio de grau 2
polyval(P,x) #para ver o valor estimado pelo polinômio em x
end
#Rotina 2: para gerar polinômio de grau 3
pkg load symbolic
X=[0 3 5 8] #valores tabela x
Y=[0 225 383 623] #valores tabela y
L(1,:)=poly([X(2) X(3) X(4)])/((X(1)-X(2))*(X(1)-X(3))*(X(1)-X(4)));
L(2,:)=poly([X(1) X(3) X(4)])/((X(2)-X(1))*(X(2)-X(3))*(X(2)-X(4)));
L(3,:)=poly([X(1) X(2) X(4)])/((X(3)-X(1))*(X(3)-X(2))*(X(3)-X(4)));
L(4,:)=poly([X(1) X(2) X(3)])/((X(4)-X(1))*(X(4)-X(2)) *(X(4)-X(3)))
P=Y(1)*L(1,:)+Y(2)*L(2,:)+Y(3)*L(3,:)+Y(4)*L(4,:)
pretty(poly2sym(P)) # ver o polinômio de grau 3
Xk= 4
polyval(P,Xk) #para ver o valor estimado pelo polinômio em xk
#Rotina 3: para gerar o gráfico do polinômio P(x)
#Grafico:
function g = grafpol(P,a,b)
SP = poly2sym(P) #cria polinomio simbolico
ezplot(SP, [a b]) #plota P(x) no intervalo [a b]
end
