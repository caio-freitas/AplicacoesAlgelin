% Interpolação Polinomial
% dados os vetores x e y, temos que

A = ([cos(x), sin(x);
     cos(2*x), sin(2*x)
     cos(3*x), sin(3*x)])'

%p = A\y
% Criando a matriz
for i = 1:11
  A(i, 1) = cos(x(i))
  A(i, 2) = sin(x(i))
  A(i, 1) = cos(2*x(i))
  A(i, 2) = sin(2*x(i))
  A(i, 1) = cos(3*x(i))
  A(i, 2) = sin(3*x(i))
endfor

p = A\y

t = linspace(0, 5, 50);
figure(1)
scatter(x, y)
hold


