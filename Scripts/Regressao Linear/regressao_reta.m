%%Autor: Lucas Macedo da Silva
%% Script para: calcular a regressão e o coeficiente de correlacao
%% linear a partir de dois vetores
%%
%%      v - 1.0
%%
%% Busca calcular os coeficentes da reta y = a0 + a1x
%% Além do coeficiente de correlação r.

format long
function [a0, a1, r] = regressao_reta (x, y)
  
  if (length(x) != length(y))
    print('error');
    return
  endif
  
  media_x = media(x);
  media_y = media(y);
  
  n = length(x);
  
  %% ------------- Calculo de a1 -------------------
  %% ---- a1
  Sxy = 0;
  Sx = 0;
  Sy = 0;
  Sx2 = 0;
  %% ---- r
  Sy2 = 0;
  
  for i = 1: n
    %% ---- a1
    Sxy = Sxy+  x(i)*y(i);
    Sx = Sx + x(i);
    Sy = Sy + y(i);
    Sx2 = Sx2 + x(i)*x(i);
    
    %% ---- r
    Sy2 = Sy2 + y(i) * y(i);
  endfor
  
  Sx
  Sy
  Sxy
  Sx2
  Sy2
  
  a1 = (n*Sxy - Sx*Sy)/(n*Sx2 - (Sx)^2)
  
  a0 = media_y - a1 * media_x
  
  r = (n*Sxy - Sx*Sy)/(sqrt(n*Sx2 - (Sx)^2) * sqrt (n*Sy2 - (Sy)^2))
  
endfunction
  