function [h] = calc_h (x = [])
  n = length (x) - 1;
  
  for i = 1 : n
    h(i) = x(i+1) - x(i);
   endfor
   
endfunction
  
  
  
  