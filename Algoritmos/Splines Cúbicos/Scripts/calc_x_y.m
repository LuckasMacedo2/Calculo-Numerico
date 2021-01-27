function [x, y] = calc_x_y(n)
  h = 6/(n-1);
  r = 0;
  i = 1;
  while r < 4
    r = -2 + i * h;
    x(i) = r;
    if r<=-2 || r <=0
      y(i) = f1(r);
    else
      y(i) = f2(r);
    endif
    i = i + 1;
    
  endwhile

endfunction