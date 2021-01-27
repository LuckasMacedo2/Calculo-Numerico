import math

def f(x):
    # Exercicios modificados
    # Livro: Calculo numerico para engenharia
    # Pagina 572 - PDF

    # Exercicio: 23.8
    #r = x**3 + 4*x - 15 # a
    #r = (x**2)*math.cos(x) #b
    #r = math.tan(x/3.0) #c
    #r = math.sin(0.5*math.sqrt(x))/x #d
    #r = 2.718281828**(x) + x #e
    
    


    r = -(0.1*x**4) - (0.15*x**3) -(0.5*x**2) -(0.25*x) + 1.2 #teste
    return r

def richardson(x, h1, h2):
    c1 = (f(x+h1) - f(x-h1))/(2.0*h1)
    print ('Primeira diferença central: {one}'. format(one = c1))
    c2 = (f(x+h2) - f(x-h2))/(2.0*h2)
    print ('Segunda diferença central: {one}'. format(one = c2))

    r = (4/3.0) * c2 - (1/3.0) * c1
    print ('Richardson: {one}'. format(one = r))
    return r


def derivacao_numerica (x, h):
    #erro = h
    f_P = 0
    f_R = 0
    f_C = 0
    #while erro <= 2:
    xi1 = x - h  #xi-1
    xi_1 = x + h #xi+1


    #Progressiva
    f_P = (f(xi_1) - f(x))/h
    print ('Resultado obtido: {one}, a partir da diferença progressiva'.format(one = f_P))
               
    #Regressiva
    f_R = (f(x) - f(xi1))/h
    print ('Resultado obtido: {one}, a partir da diferença regressiva'.format(one = f_R))

    #Central
    f_C = (f(xi_1) - f(xi1))/(2.0*h)
    print ('Resultado obtido: {one}, a partir da diferença central'.format(one = f_C))

   # h = h / 2
   # erro = erro + 1


#derivacao_numerica (0, 0.25) #a
#derivacao_numerica (0.4, 0.1) #b
#derivacao_numerica (3, 0.5) #c
#derivacao_numerica (1, 0.2) #d
#derivacao_numerica (2, 0.2) #e


derivacao_numerica (0.5, 0.5) #teste

richardson (0.5, 0.5, 0.25)










    
