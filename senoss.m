t = linspace(0, 2*pi, 200);
y1 = sin(t);
y2 = sin(3*t);
y3 = 0.3*sin(7*t)
figure(1)
plot(t, y1, y2, grid)
plot(t, y3, grid)
scatter(t, y2)
title("Sine function");
axis equal;
hold

figure(2)
plot(t, y1+y2+y3, grid)
title("Sum of sines");
axis equal;
hold

figure(3)
polar(5*t, y1+y2+y3)
%polar(2*t, y1+y2+y3)

[X,Y] = meshgrid(-2:0.2:4,-2:0.2:4);
Z = sin(X) - sin(Y);
figure
surf(X, Y, Z)
