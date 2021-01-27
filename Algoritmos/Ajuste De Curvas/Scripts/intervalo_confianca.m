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
function [intervalo1, intervalo2] = intervalo_confianca (xi, y)
  
  tam_y = length(y);
  
  [a0, a1, a2, a3] = regressao_multipla(xi, y)
  
  %%Calculo do SSE Soma do quadrado dos erros 
  SSE = 0;
  for i = 1: tam_y
    SSE = SSE + (y(i) - (a0 + a1*xi(1,i) + a2*xi(2,i) + a3*xi(3,i))).^2;
  endfor
  SSE
    
  %%Calculo do s, desvio padrão
  k = size(xi');
  a = k(1); %%Números linhas da matriz
  
  %%Ocorreu a soma + 1, devido a tabela 1, englobar também 
  %%os valores de y
  c = k(2) + 1; %%Número de colunas
  s = sqrt (SSE / (a - c - 1))
  
  %% Vetor com um ponto da amostra
  x0 = [3, 8, 9];
  
  
  %%A partir da tabela de T-Student, com 95% de confianaça obtemos
  %%ta/2 = 1.96
  y0 = (a0 + a1*x0(1) + a2*x0(2) + a3*x0(3));
  
  intervalo1 = y0 - 1.96 * s * sqrt (x0 * ((xi*xi')^-1) * x0');
  intervalo2 = y0 + 1.96 * s * sqrt (x0 * ((xi*xi')^-1) * x0');
  
endfunction 