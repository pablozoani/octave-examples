clc; close all;
% Gráfico de (x ^ 2 + 1) ^ 0.5

x = [-3:0.1:3];

% Función exterior
function y = f(x)
    y = x.^0.5;
endfunction

% Función interior
function u = g(x)
    u = x.^2 + 1;
endfunction

% Derivada de la función exterior
function y1 = f1(x)
    y1 = 0.5 .* x.^0.5;
endfunction

% Derivada de la función interior
function u1 = g1(x)
    u1 = 2 .* x;
endfunction

aux = figure;
subplot(2, 1, 1);
plot(x, g(x), "r", x, f(x), "g", x, f(g(x)), "b"); grid minor;
legend("g(x)", "f(x)", "f(g(x))");
subplot(2, 1, 2);
plot(x, g1(x), "r", x, f1(x), "g", x, f1(g(x)) .* g1(x), "b"); grid minor;
legend("g'(x)", "f'(x)", "f'(g(x))");

saveas(aux, "figure", "pdf");
