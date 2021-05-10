function y = f (a, b, n)
 i = 1;
 dx = (b - a) / n;
 y = 0;
 while (i <= n)
  xi = a + i * dx; 
  y += dx * e ^ -(xi ^ 2);
  i++;
 endwhile
endfunction

function y = f2 (a, b, n)
 i = 1;
 dx = (b - a) / n;
 y = 0;
 while (i <= n)
  xi = a + (i - 1) * dx; 
  y += dx * e ^ -(xi ^ 2);
  i++;
 endwhile
endfunction

f(0, 2, 5)
f(0, 2, 10)
f(0, 2, 50)
f(0, 2, 100)

f2(0, 2, 5)
f2(0, 2, 10)
f2(0, 2, 50)
f2(0, 2, 100)

f(-1, 2, 100)
f2(-1, 2, 100)

x = [-4: 0.1: 4];
h = e .^ -(x .^ 2);

aux = figure;
plot(x, h)
saveas(aux, "figure", "pdf");