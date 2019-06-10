L = 6*10^-6
C = 3*10^-9
% Para R=20 ohms
R=150

alpha = 1/(2*R*C)
wo = 1/sqrt(L*C)

A = [0, 1;
     -wo^2, -2*alpha]
B = [0; wo^2]

alpha^2/wo^2

[V, D] = eig(A)

% Como a tensão inicial no capacitor é v(0) = 10V
% Temos que v(0) = L * iL'(0) 
% e, portanto, iL'(0) = v(0)/L

% Y = inv(V) * [iL(0), iL'(0)]
AS = inv(V)*[1; 10/L]

y = V*[AS(1) 0;0 AS(2)]

t = linspace(0, 100, 100);
x1 = y(1,1)*exp(D(1,1)*t) + y(1,2)*exp(D(2,2)*t)

plot(t, x1)