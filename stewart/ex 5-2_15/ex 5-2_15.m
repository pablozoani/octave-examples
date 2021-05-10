function y = f (a, b, n)
 i = 1;
 dx = (b - a) / n;
 y = 0;
 while (i <= n)
  xi = a + i * dx; 
  y += sin(xi) * dx;
  i++;
 endwhile
endfunction

f(0, pi, 5)

f(0, pi, 10)

f(0, pi, 50)

f(0, pi, 100)

f(0, pi, 500)