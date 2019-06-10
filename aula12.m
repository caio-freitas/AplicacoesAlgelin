% Aula 12- Caio Victor Gouveia Freitas e Fernando Zolubas Preto
close all
clear all
%1) 
%voz =audioread("infinity_war.wav");
voz = audioread("voz.wav");
Nv=length(voz);
%fa=60000;
fa=8000
tempo=(0:Nv-1)/fa;
plot(tempo,voz)

sound(voz,fa);

%2)
ruido = sqrt(0.01)*randn(Nv,1);
mean(ruido)
var(ruido)
hist(ruido,50)

%3)
somruido = voz + ruido;

%Normalizando o vetor somruido
somruido=somruido/max(somruido);
max(abs(somruido))

%sound(somruido)

%4)
t1 = ruido(1201:1456);
size(t1)

t2 = somruido(3801:4056);
size(t2)

figure, plot(t1)
hold
figure, plot(t2)
hold
p = length(t1)-30+1;
q = 30;
H1 = zeros(p,q);
H2 = zeros(p,q);
for i=1:1:30
  H1(:,i) = t1(i:p+i-1);
  H2(:,i) = t2(i:p+i-1);
endfor
  
