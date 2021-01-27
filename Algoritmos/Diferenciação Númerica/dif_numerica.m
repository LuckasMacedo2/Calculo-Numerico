function dif_numerica(n)
  
  %n = Numero de iteracoes
  x = 0.5;
  h = 1;
  
  imax = 0; %Numero da iteracao em que o erro foi maximo
  emax = 0; %Erro maximo
  
  for i = 1: n
    
    h = 0.25*h; %Passo
    
    y = (sin(x + h) - sin(x))/h; %Regra
    
    erro = abs (cos(x) - y); %Erro
    
    % Escrita dos valores
    i
    h
    y
    erro
    printf('\n')
    
    if erro> emax
      emax = erro
      imax = i;
    endif
    
  endfor
  
  % Escrita dos valores
  imax 
  emax  
endfunction