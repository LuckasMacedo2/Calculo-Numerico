function grafico (n)
  
  x = [];
  y = [];
  
  [x, y] = calc_x_y(n);

  n = length(x);

  h = [];
  dy = [];
  a = [];
  b = [];
  c = [];
  
  h = calc_h(x);

  dy = calc_dy(y, h);

  s = calc_s(h, dy);

  a = calc_a(s, h);
    
  b = calc_b(s);

  c = calc_c(s, dy, h);
  
  for i = 1:n-1
    ex = x(i):0.1:x(i+1);
    ey = a(i)*(ex - x(i)).^3 + b(i)*(ex - x(i)).^2 + c(i)*(ex - x(i)) + y(i);
    hold on
    plot (ex, ey, 'b');
  endfor
  
  for i = 1:n
    hold on
    plot (x(i), y(i),'*', 'MarkerEdgeColor', 'k', 'LineWidth',3);
  endfor
  
endfunction









