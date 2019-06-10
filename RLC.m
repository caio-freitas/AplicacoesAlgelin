function rlc_calc(R, L, C, N)
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
  for i=-10:1:10
     for j=-150:15:150
      AS = inv(V)*[i; j/L]

      Xt = V*diag(AS)

      %Para plotar
      t = linspace(0,100,100);
      X1 = Xt(1,1)*exp(D(1,1)*t) +Xt(1,2)*exp(D(2,2)*t);
      X2 = Xt(2,1)*exp(D(1,1)*t) +Xt(2,2)*exp(D(2,2)*t);  
      plot(X1,X2)
      endfor
  endfor
endfunction

rlc_calc(inf, 6*10^-6, 3*10^-9, 500)