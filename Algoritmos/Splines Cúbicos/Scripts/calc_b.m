function [b] = calc_b(s = [])
  n = length(s) + 1;
  
  for  i = 1 : n
    if (i - 1 == 0)
      b(i) = 0;
    else
      b(i) = s(i-1)/2;
    endif
  endfor
  
  
endfunction