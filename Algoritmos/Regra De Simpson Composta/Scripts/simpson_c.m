format long
function [integral] = regra_integral(a, b, m)
  h = (b - a) / (2*m);
  
  x = a:h:b;
  
  s = (h/3) * (f(a) + f(b));
  
  for k = 1 : m
    s = s + ((2*h)/3)*f(x(2*k));
  endfor  

  for k = 2 : m
    s = s + ((4*h)/3)*f(x(2*k - 1));
  endfor
  
  s
endfunction