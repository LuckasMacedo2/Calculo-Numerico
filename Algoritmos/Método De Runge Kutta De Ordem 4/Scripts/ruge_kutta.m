%ruge_kutta (0, 0.5, 0.5, 0, 1) eq 1: Esperado = 3,21875
%ruge_kutta (0, 0.5, 0.5, 0, 2) eq 2: Esperado = 3,751699
%ruge_kutta (0, 1.5, 0.25, 0, 1) eq 3: Esperado = -117.689508400696
%ruge_kutta (0, 2, 0.25, 2, 1) eq 4: Esperado = 4.65258274388599

% AED
%ruge_kutta (0, 1.1, 0.025, 0, 1) q1: 
%ruge_kutta (1, 1.5, 0.1, 1, 1) q2: Esperado = 3.49034295746184
%ruge_kutta (0, 1.4, 0.1, 0, 0) q3: Esperado = 2.31466666666667
format long;
function [rk] = ruge_kutta(a, b, h, x0, y0)
  x = x0;
  y = y0;
  n = abs(b-a)/h %numero de iteracoes
  
  for i = 1 : n
    k1 = f(x, y);
    k2 = f(x + (1.0/2)*h, y + (1.0/2)*k1*h);
    k3 = f(x + (1.0/2)*h, y + (1.0/2)*k2*h);
    k4 = f(x + h, y + k3*h);
    y_i = y + (k1 + 2*k2 + 2*k3 + k4)*(h/6.0);
    y = y_i;
    x = x + h;
  endfor
  
  y
endfunction