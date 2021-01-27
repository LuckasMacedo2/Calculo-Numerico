function [dy] = calc_dy(y = [], h = [])
  
  n = length(y) -  1;
  
  for i = 1 : n
    dy(i) = (y(i+1) - y(i)) / h(i);
  endfor
    
endfunction