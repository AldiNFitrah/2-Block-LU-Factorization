function L = Lmini2L(Lm)
  n = size(Lm, 2);
  L = eye(n*2);
  
  for i = 1:n
    r = i*2;
    c = r-1;
    
    L(r, c) = Lm(i);
  endfor
