triangle = [0, 0; 1, 0; 0.5, 1; 0, 0];
figure(1)
plot(triangle(:,1), triangle(:,2))
title("Original Triangle")
axis equal
hold 

% Agora, vamos dar uma rodadinha nesse triangulo, criando uma matriz de rotação
% e aplicando essa transformação linear ao nosso triangulo
theta=pi/4
RotM = [cos(theta), -sin(theta); sin(theta), cos(theta)]
rtr = RotM*triangle'
rtr = rtr'
figure(2)
plot(rtr(:,1), rtr(:,2), grid)
title("Rotated Triangle")
axis equal
hold

% O próximo passo é squishar nosso triangulo em um dos eixos,
% agora que eles são linearmente dependentes

SqshM = [2, 0; 0, 1];
sqtr = (SqshM*rtr')'
figure
plot(sqtr(:,1), sqtr(:,2), grid)  
title("Squished Triangle")
axis equal
hold
