%%Autor: Lucas Macedo da Silva
%% Script para: Determinar os maiores elementos de cada linha em uma matriz
%% 
%%Funcao equivalente no octave: 
%%            v - 1.0
%%

function [v] = elementos_matriz(mat = [])
  
  %%Inicializando as variaveis
  [m,n] = size(mat);
  v = [m];  
  
  for i = 1 : m
    maior = 0;
    for j = 1 : n
      if mat(i, j) > maior
        maior = mat (i, j);
        endif
      endfor
    v(i) = maior;
  endfor
  z
  endfunction