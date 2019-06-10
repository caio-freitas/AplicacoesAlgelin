
f = 100;
dt = 0.1;
t = linspace(0, 2, 2*500);
s = sin(2*pi*f*t*dt);
r = 0.1*randn(1,1000)
noisy = s + r
figure(1)
plot(t, noisy)
title("Noisy signal")
hold
filtered = zeros(1, 1000)

for i = 3:997
  filtered(i) = (noisy(i-2) + noisy(i-1)+noisy(i)+noisy(i+1) + noisy(i+2))/5
endfor;

figure(2)
plot(t, filtered)
title("Filtered signal")

sf = filter(t, 1, noisy)
figure(3)
plot(t, sf)
title("Matlab Filter")