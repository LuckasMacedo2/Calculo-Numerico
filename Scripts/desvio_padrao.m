%%Autor: Lucas Macedo da Silva
%% Script para: Calcular o desvio padrao de um vetor
%% 
%%Funcao equivalente no octave: std(vetor)
%%            v - 1.0
%%
function s = desvio_padrao (v = [])
  
  %%Inicianlizando as variaveis
  n = length(v);
  s1 = 0;
  s2 = 0;
  
  %% Realizando os somatorios
  for i = 1 : n
    s1 = s1 + v(i);
    s2 = s2 + v(i) * v(i);
    endfor
  %% Calculando a variancia
  s = 1.0/(n-1) * (s2 - (1.0/n)*(s1*s1));
  %% Calculando o Desvio Padrao
  s = sqrt(s);
  endfunction