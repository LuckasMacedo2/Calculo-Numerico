function n = termial (t)
  a = t;
  n = 0;
  for u = 1: t
    n = n + a;
    a = a - 1;
  endfor
endfunction