function [x,fx,v] = Simpson(a,b,n)
    ## 2013 Lesliê cardoso da silva (c)
    h = (b-a)/n;
    h
    x = a:((b-a)/n):b;

    ##func = inline(func);
    for i = 1:length(x)
        fx(i) = f(x(i));
    end

    v=fx(1)+fx(length(x));
    for i= 2:length(x)-1
        if mod(i,2) == 0
            v+= 4*fx(i); 
        else
            v+= 2*fx(i);   
        end 
    end

    v = h/3*v

endfunction