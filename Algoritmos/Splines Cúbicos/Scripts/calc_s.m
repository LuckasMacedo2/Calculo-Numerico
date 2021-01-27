function [s] = calc_s(h = [], dy = [])
  
  %% m == s
  
  n = length(h) - 1;
  
  m = zeros(n);
  
  j = 2;
  
  %%Sistema: m*S'' = b
  
  %%Calculando a matriz m;
  for i = 1: n
    
    if (i-1 == 0);
      m(i, i) = 2 * (h(j-1) + h (j));
      m(i, i+1) = h(j);
    else
      if (i + 1 > n)
        m(i, i-1) = h(j-1);
        m(i, i) = 2 * (h(j-1) + h (j));
      else
        m(i, i) = 2 * (h(j-1) + h (j));
        m(i, i+1) = h(j);
        m(i, i-1) = h(j-1);
      endif
    endif
    j = j + 1;
  endfor
  
  %%Calculando o vetor de constantes 
  n = length(dy) - 1;
  b = [];
  j = 2;
  
  for i = 1: n
    b(i,1) = 6*(dy(j) - dy(j-1));
    j = j + 1;
  endfor
 
  %%Resolvendo o sistema
  s = inv(m) * b;
    
endfunction