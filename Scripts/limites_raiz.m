%%Autor: Lucas Macedo da Silva
%% Script para: Determinar os limites das raizes.
%% Referência: https://drive.google.com/drive/folders/1c1KXfW3UH9hxjwHV5t2dNyNEA1irO2i9
%%
%%            v - 1.0
%%

function L = limites_raiz (n, c = [], grauPoli, vetCoef = [])
  if c(1) == 0
    disp('coefiente c(1) nulo')
    return;
  endif
  
  t = n + 1;
  
  c(t + 1) = 0;
  
  while c(t) != 0
    t = t - 1;
  endwhile
  
  %%Calculando o limite das raizes
  
  for i = 1: n 
    if i == 2 || i == n
      for j = 1: t/2
        aux = c(j);
        c(j) = c(t - j + 1);
        c(t - j + 1) = aux;
      endfor
    else
      if i == 3
        for j = 1: t/2
          aux = c(j);
          c(j) = c(t - j + 1);
          c(t - j + 1) = aux;
        endfor
        
        for j = t - 1:1
          c(j) = -c(j);
          j = j - 2;
        endfor
        
      endif
    endif
    
    %%an < 0, deve-se multiplicar toda a equação por -1
    if c(1) < 0
      for j = 1: t
        c(j) = -c(j);
      endfor
    endif
    
    k = 2;
    
    while c(k) < 0 || k > t
      k = k + 1;
    endwhile
  
    if k <= t
      B = 0;
      %%Determinando B, que é o maior número negativo, B recebe o mesmo em modulo.
      for j = 2: t
        if c(j) < 0 && abs(c(j)) > B
          B = abs(c(j))
        endif
      endfor
      
      %%Determinando os limites
      L(i) = 1 + (k-1)*sqrt(B/c(1));
    else
      L(i) = 10^100;  
    endif
    
   endfor
       
   aux = L(1);
   L(1) = 1/L(2);
   L(2) = aux;
   L(3) = -L(3);
   L(4) = -1/L(4);
   
   L
   
endfunction
   
         
          
    
      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
      
      
          
    
        
  