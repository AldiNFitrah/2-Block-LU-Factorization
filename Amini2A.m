function A = Amini2A(Am)
  n2 = size(Am, 1);
  n = n2/2;
  
  A = zeros(n2, n2);
  
  for i = 1:n
    i2 = i*2;
    i1 = i2-1;
    
    A(i1:i2, i1:i2) = Am(i1:i2, 1:2);
  endfor
