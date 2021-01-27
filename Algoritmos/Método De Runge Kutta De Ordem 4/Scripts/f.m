function [y] = f(x0, y0)
  % Testes - Ok
  %y = -2*x0^3 + 12 * x0^2 - 20*x0 + 8.5; %eq 1
  %y = 4 * e^(0.8*x0) - 0.5*y0; %eq 2
  %y = 3 * y0 - 7; %eq 3
  %y = 5 * x0 ^ 2 - x0 ^ 2 * y0  %eq 4
  
  % AED
  %y = tan(y0) + 1; %q1
  %y = 2 * x0 * y0; %q2
  y = 1 + x0 ^ 2; %q3
endfunction