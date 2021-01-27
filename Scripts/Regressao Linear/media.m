%%Autor: Lucas Macedo da Silva
%% Script para: Calcular a media de um vetor
%% 
%%Funcao equivalente no octave: mean(v)
%%            v - 1.0
%%
format long
function m = media (v = [])
  %%Inicializando as variaveis
  n = length(v);
  s = 0;
  
  %%Calculando a media
  for i = 1 : n
    s = s + v(i);
    endfor
    m = s/n;
  endfunction