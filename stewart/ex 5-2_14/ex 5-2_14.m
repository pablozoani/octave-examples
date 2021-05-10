function y = f (a, b, n)
 i = 1;
 dx = (b - a) / n;
 y = 0;
 while (i <= n)
  xi = a + i * dx; 
  y += dx * xi / (xi + 1);
  i++;
 endwhile
endfunction

function y = f2 (a, b, n)
 i = 1;
 dx = (b - a) / n;
 y = 0;
 while (i <= n)
  xi = a + (i - 1) * dx; 
  y += dx * xi / (xi + 1);
  i++;
 endwhile
endfunction

f(0, 2, 100)

f2(0, 2, 100)

% Por que la suma de los puntos finales izquierdos es menor que la integral
% continua, y la suma de los derechos es mayor.