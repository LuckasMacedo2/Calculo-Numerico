function [c] = calc_c(s = [], dy = [], h = [])
  n = length(s) + 1;
  for i = 1: n 
    if (i-1 == 0)
      c(i) = dy(i) - (s(i,1)/6)*h(i);
    else  
      if (i == n)
         c(i) = dy(i) - (2*s(i-1,1)/6)*h(i);
      else
        
        aux = s(i,1) + 2*(s(i-1,1));
        aux = aux / 6.0;
        c(i) = dy(i) - aux*h(i);  
      endif  
    endif
  endfor
  
endfunction