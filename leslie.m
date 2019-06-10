% Experiencia 8 - Autovetores e autovalores pt.2


L1 = [0, 0, 1; (2/3), 0, 0; 0, (2/3), 0]
L2 = [0, 0, 3/2; 2/3, 0, 0; 0, 1, 0]
L3 = [0, 1/100, 3/2; 2/3, 0, 0; 0, 1, 0]
% Item 1
estavel=ones(1,3);
lambda1 = eig(L1);
lambda2 = eig(L2);
lambda3 = eig(L3);
[V1,D1] = eig(L1);
[V2,D2] = eig(L2);
[V3,D3] = eig(L3);

for i = 1:1:size(lambda1)
  if(abs(lambda1(i))>1)
    estavel(1)=0;
  endif
endfor

for i = 1:1:size(lambda2)
  if(abs(lambda2(i))>1)
    estavel(2)=0;
  endif
endfor

for i = 1:1:size(lambda3)
  if(abs(lambda3(i))>1)
    estavel(3)=0;
  endif
endfor
%respostas do ex1
lambda1
lambda2
lambda3
V1
V2
V3
estavel

% Item 2
% Xn = A*Xn-1 + b
X0 = randi([0, 100], 3, 1);
N=100;
%L1
Xm = X0;
Xs = zeros(N, 3);
for i=1:1:N
  Xn = L1*Xm;
  Xm=Xn;
  Xs(i,:) = Xm;
endfor
XNs = zeros(3,3);
XNs(1,:)=Xn;
%L2

Xm = X0;
Xs = zeros(N, 3);
for i=1:1:N
  Xn = L2*Xm;
  Xm=Xn;
  Xs(i,:) = Xm;
endfor
XNs(2,:)=Xn;
%L3

Xm = X0;
Xs = zeros(N, 3);
for i=1:1:N
  Xn = L3*Xm;
  Xm=Xn;
  Xs(i,:) = Xm;
endfor
XNs(3,:)=Xn;
%respostas do ex2
Respostado2 = XNs

% Item 3
[V1,D1] = eig(L1);
eigenvalues = eig(L1);
maior = D1(1,1);
%autovalordominante = max(eigenvalues)

%CALCULANDO O AUTOVALOR DOMINANTE
[row,col]=find(imag(D1)==0 & (real(D1)~=0))
posicaodominante= row;
%FIM DO CALCULO

autovetordominante=V1(posicaodominante,:);
autovalordominante=D1(posicaodominante,posicaodominante);

alpha = real(inv(V1)*X0);
Xk = alpha(posicaodominante)*(autovalordominante^N)*autovetordominante(posicaodominante);
%reposta do ex3
respostado3= Xk

% Item 4
% Gráficos de X(n)
figure,plot(linspace(1, 100, 100), Xs(:,1))
ylabel('L1')
figure,plot(linspace(1, 100, 100), Xs(:,2))
ylabel('L2')
figure,plot(linspace(1, 100, 100), Xs(:,3))
ylabel('L3')

% Gráficos da aproximação de X(n) usando o autovetor dominante
Xa = zeros(N:3);
for i =1:1:100
  Xa(i,:) = alpha(posicaodominante)*(autovalordominante^i)*autovetordominante(posicaodominante);
endfor
figure,plot(linspace(1, 100, 100), Xa(:,1))
ylabel('Aproximação de X(n)')

