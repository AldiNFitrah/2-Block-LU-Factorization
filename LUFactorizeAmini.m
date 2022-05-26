function [Lm, Um] = LUFactorizeAmini(Am)
  n2 = size(Am, 1);
  n = n2/2

  Lm = zeros(1, n);
  Um = zeros(1, 3*n);

  for i = 1:n
    i1 = 2*i-1;
    i2 = i1+1;

    Lm(i) = Am(i2, 1) / Am(i1, 1);
    Am(i2, 1:2) = Am(i2, 1:2) - Lm(i) * Am(i1, 1:2);
    
    j = (i-1) * 3;
    Um(j+1:j+3) = [Am(i1, 1) Am(i1, 2) Am(i2, 2)];
  end
