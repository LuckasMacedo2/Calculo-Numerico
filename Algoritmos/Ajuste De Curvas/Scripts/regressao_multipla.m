%%Autor: Lucas Macedo da Silva
%% Script para: calcular a regressÃ£o multipla
%% a partir dos vetores x1, x2 e y
%%
%%      v - 2.0
%%
%% Busca calcular os coeficentes da reta y = a0 + a1x1 + a2x2 + a3x3
%% 


%%Dados
%%
%%y = [25.5 31.2 25.9 38.4 18.4 26.7 26.4 25.9 32.0 25.2 39.7 35.7 26.5]
%%x = [1.74 6.32 6.22 10.52 1.19 1.22 4.10 6.32 4.08 4.15 10.15 1.72 1.70; 5.30 5.42 8.41 4.63 11.60 5.85 6.62 8.72 4.42 7.60 4.83 3.12 5.30 ; 10.80 9.40 7.20 8.50 9.40 9.90 8.00 9.10 8.70 9.20 9.40 7.60 8.20]

format long
function [a0, a1, a2, a3] = regressao_multipla (xi, y)
  n  = length(xi); %%n, quantidade de elementos
  
  %%Determina a quantidade de linhas da matriz
  k = size(xi);
  a = k(1) + 1; %%Números linhas da matriz M
  c = k(2); 
  
  %%Matriz que conterá os coeficientes
  M = [];
  
  %%Vetor dos coeficentes constantes
  b = [];
  
  %%Preenchendo x1,i com 1's
  x = [];
  for i = 1: a
    for j = 1: c
      if i == 1
         x(i, j) = 1;
      else 
         x(i, j) = xi(i-1,j);
      endif 
    endfor   
  endfor
    
  for i = 1: a
    for j = 1: i
      S = 0;
      for l = 1: n
        S = S + x(i,l)*x(j,l); %%Calculo dos termos da matriz M
      endfor 
      M(i, j) = S;
      M(j,i) = S;
    endfor
    S = 0;
    for k = 1: n
      S = S + y(k) * x(i,k); %%Calculo do vetor de constantes
    endfor
    b(i) = S;
  endfor
  
  %%Calculo dos coeficentes da regresao
  a = [];
  a = b/M;
  
  a0 = a(1);
  a1 = a(2);
  a2 = a(3);
  a3 = a(4);
  
endfunction 