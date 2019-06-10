%AULA 5
%CAIO FREITAS E FERNANDO ZOLUBAS


%palpite inicial
xo = 0.2;
%variavel booleana
entraprimeiro=1
x=xo
while x-xo > 0.00001 || x-xo < -0.00001 || entraprimeiro
    xo=x;
    w=xo^2 + 1;
    f = (10*(sqrt(w)-1)*xo/sqrt(w) - 1);
    dev = (10*(sqrt(w)*xo^2 + sqrt(w) - 1)/(w)^(3/2));
    x=xo-(f/dev)
    
    entraprimeiro=0;
end
x