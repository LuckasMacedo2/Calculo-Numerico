%%Autor: Lucas Macedo da Silva
%% Script para: calcular a regressão multipla
%% a partir dos vetores x1, x2 e y
%%
%%      v - 1.0
%%
%% Busca calcular os coeficentes da reta y = a0 + a1x1 + a2x2 + a3x3
%% 


%%Dados
%%
%%y = [25.5 31.2 25.9 38.4 18.4 26.7 26.4 25.9 32.0 25.2 39.7 35.7 26.5]
%%x1 = [1.74 6.32 6.22 10.52 1.19 1.22 4.10 6.32 4.08 4.15 10.15 1.72 1.70]
%%x2 = [5.30 5.42 8.41 4.63 11.60 5.85 6.62 8.72 4.42 7.60 4.83 3.12 5.30]
%%x3 = [10.80 9.40 7.20 8.50 9.40 9.90 8.00 9.10 8.70 9.20 9.40 7.60 8.20]
format long
function [a0, a1, a2, a3] = regressao_multipla (x1, x2, x3, y)
  
  n = length(x1);
  Sx1 = 0;
  Sx2 = 0;
  Sx3 = 0;
  
  Sx1_2 = 0; %%x1^2
  Sx2_2 = 0; %%x2^2
  Sx3_2 = 0;
  
  Sx1_x2 = 0;
  Sx1_x3 = 0;
  Sx2_x3 = 0;
  
  Sy = 0;
  Sy_x1 = 0;
  Sy_x2 = 0;
  Sy_x3 = 0;
  
  for i = 1 : n
    Sx1 = Sx1 + x1(i);
    Sx2 = Sx2 + x2(i);
    Sx3 = Sx3 + x3(i);
    
    Sx1_2 = Sx1_2 + x1(i) * x1(i);
    Sx2_2 = Sx2_2 + x2(i) * x2(i);
    Sx3_2 = Sx3_2 + x3(i) * x3(i);
    
    Sx1_x2 = Sx1_x2 + x1(i) * x2(i);
    Sx1_x3 = Sx1_x3 + x1(i) * x3(i);
    Sx2_x3 = Sx2_x3 + x2(i) * x3(i);

    
    Sy = Sy + y(i);
    Sy_x1 = Sy_x1 + x1(i) * y(i);
    Sy_x2 = Sy_x2 + x2(i) * y(i);
    Sy_x3 = Sy_x3 + x3(i) * y(i);
    
  endfor
  
  %%Montando a matriz para determinar os coeficientes
  M = [];
  M(1,1) = n;
  M(2,2) = Sx1_2;
  M(3,3) = Sx2_2;
  M(4,4) = Sx3_2;
  
  M(1,2) = M(2,1) = Sx1;
  M(1,3) = M(3,1) = Sx2;
  M(1,4) = M(4,1) = Sx3;
  
  M(3,2) = M(2,3) = Sx1_x2;
  M(4,2) = M(2,4) = Sx1_x3;
  M(4,3) = M(3,4) = Sx2_x3;
  
  Sx1
  Sx2
  Sx3
  Sy
  
  Sx1 = 0;
  Sx2 = 0;
  Sx3 = 0;
  
  
  %%Montando o vetor de constantes
  b = [];
  b(1) = Sy;
  b(2) = Sy_x1;
  b(3) = Sy_x2;
  b(4) = Sy_x3;
  %%Resolvendo o sistema
  a = b/M;
  
  a0 = a(1)
  a1 = a(2)
  a2 = a(3)
  a3 = a(4)
  
  M
  b
endfunction 