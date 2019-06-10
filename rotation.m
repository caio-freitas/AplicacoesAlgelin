
theta=-pi/3;
T = [cos(theta), sin(theta); -sin(theta), cos(theta)]

figure(1)
plot(xy(1,:), xy(2,:), grid)
axis equal
hold

% Agora, vamos aplicar a matriz de rotacao a figura

rotated = T*xy;
figure(2)
plot(rotated(1,:), rotated(2,:), grid)
axis equal
hold