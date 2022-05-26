function Am = A2Amini(A)
  n2 = size(A, 1);
  n = n2/2;

  for i = 1:n
    j = 2*i-1;
    Am(j:j+1, 1:2) = A(j:j+1, j:j+1);
  end
