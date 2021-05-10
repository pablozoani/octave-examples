
function y = f (a, b, n)
    i = 1;
    dx = (b - a) / n;
    y = 0;
    while (i <= n)
        xi1 = a + (i - 1) * dx;
        xi2 = a + i * dx;
        mxi = (xi1 + xi2) / 2;
        y += (mxi)^2 * e^-(mxi) * dx;
        i++;
    endwhile
endfunction

a = f(1, 5, 4);
b = f(1, 5, 10);
c = f(1, 5, 20);
printf("%i %i %i \n", a, b, c);

function y = g(x)
    y = x^2 * e^-(x);
endfunction

d = quad("g", 1, 5);
printf("%i", d);