%%A = [9 6 -3 3; 6 20 2 22; -3 2 6 2; 3 22 2 28];
%%b = [12; 64; 4; 82]

function [x] = resolucao_sistema (A = [], b = [])
  l = cholesky_decomposicao (A);

  t = length (A);
  y = [];
  x = [];
  
  n = termial (t);
  
  %i = 1;
  
  for i = 1 : t
    s = 0;
    k = 1;
    for j = 1 : i - 1
      s = s + l(i, j)*y(k);
      k = k + 1;
    endfor
    y(i,1) = (b(i) - s)/l(i,i);
    i = i + 1;
  endfor
  
  l1 = l';
  
  z = 0;
  i = t;
  while (i >= 1)
    s = 0;
    k = t;
    j = t;
    while (j > i-1 && i != j)
      s = s + x(k)*l1(i,j);
      k = k - 1;
      j = j - 1;
      
    endwhile  
    x(i,1) = (y(i,1) - s)/l1(i,i);
    i = i - 1;
  endwhile
endfunction  