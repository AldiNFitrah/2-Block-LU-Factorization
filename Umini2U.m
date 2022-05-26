function U = Umini2U(Um)
  n3 = size(Um, 2);
  n = n3/3;
  
  U = zeros(n*2);
  
  for i = 0:n-1
    j = i*3;
    i1 = i*2+1;
    i2 = i*2+2;
    
    U(i1, i1) = Um(j+1);
    U(i1, i2) = Um(j+2);
    U(i2, i2) = Um(j+3);
  endfor
