%%A = [9 6 -3 3; 6 20 2 22; -3 2 6 2; 3 22 2 28];

function [l] = cholesky_decomposicao (A = [])
t = length(A);
n = termial(t);
i = 1;
j = 1;
k = 1;
l = zeros(t);
for m = 1: n
  m 
  l
  if i == k
    s = 0;
    for j = 1: k - 1
      s = s + l(k,j) * l(k,j);
    endfor
    l(k, k) = sqrt (A(k, k) - s);
    k = k + 1;
    if k == t+1
      break;
    endif
  else
    for i = 1: k
      s = 0;
      for j = 1: i - 1
        if (k <= t)
          s = s + l(i,j) * l (k, j);
        endif
      endfor
      if l(i,i) != 0
         l(k,i) = (A(k, i) - s)/l(i,i);
      endif
    endfor
  endif
endfor
l
endfunction
