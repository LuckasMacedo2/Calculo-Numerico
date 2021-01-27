%%Autor: Lucas Macedo da Silva
%% Script para: Plotar o gráfico com os vetores e a correlacao linear
%%
%%      v - 1.0


function plot_grafico (x, y)
  
  [a0, a1, r] = regressao_reta(x,y);
  a0
  a1
  r
  
  t = 0:0.1:7;
  
  %%plot (x, y, '*', a0 + a1*t, t, '-b');
  
  
  
endfunction
