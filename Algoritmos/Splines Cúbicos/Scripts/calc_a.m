function [a] = calc_a (s = [], h = [])
  
  n = length(h);
  
  for i = 1 : n
    if (i-1 == 0)
      a(i) =  (s(i,1)) / (6*h(i));
    else
      if (i == n)
        a(i) = (-s(i-1,1)) / (6*h(i));
      else
        a(i) = (s(i,1) - s(i-1,1)) / (6*h(i));
      endif
    endif
  endfor  
endfunction