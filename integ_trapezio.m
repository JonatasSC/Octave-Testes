#Rotina: retorna o valor da integral definida, pelo método dos trapézios
#Entradas: f: função, a: limite inferior, b: limite superior,
# n:número de trapézios (subdivisões do intervalo [a,b])
#calcula y e erro (analizado entre a:0.01:b)
#salvar como integ_trapezio
#Integração regra do trapezio composta:

function [y] = integ_trapezio(func,der,a,b,n)
 h = (b-a)/n;
 x = linspace(a,b,n+1);
 y = h*(func(x(1)) + func(x(n+1)))/2;
 %calculo do erro
 m = 0;
 for i = a:0.01:b
 k = abs(der(i));
 i;
 k;
 if (m<k)
 m =abs(k);
 endif
 endfor
 m
 e = (((b - a)*h^2))/(12) * m
 %calculo de y
 for i = 2:n
 y = y + h*func(x(i));
 endfor
y
endfunction
