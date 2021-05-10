% La ecuaci�n de movimiento de una part�cula es s = t^3 - 3*t, donde
% s est� en metros y t en segundos.
clc

function s = f(t)
    s = t.^3 - 3 .* t;
endfunction

t = [0:0.01:5];
aux = figure;
plot(t, f(t), "r");
title("movimiento de particula"); xlabel("segundos"); ylabel("metros");
grid minor;
saveas(aux, "movimiento de particula", "pdf");

% a) Encuentre la velocidad y la aceleraci�n como funciones de t.
% velocidad
function s1 = f1(t)
    s1 = 3 .* t.^2 - 3;
endfunction

function s2 = f2(t)
    s2 = 6 .* t;
endfunction

aux = figure();
plot(t, f1(t), "g", t, f2(t), "b");
title("velocidad y aceleracion de la particula"); xlabel("segundos"); ylabel("rango");
grid minor;
legend("velocidad", "aceleracion");
saveas(aux, "a", "pdf");

% b) Encuentre la aceleraci�n despu�s de 2 segundos.
% c) Encuentre la aceleraci�n cuando la velocidad es cero.
% 3*t^2 - 3 = 0
% 3*t^2 = 3
% t^2 = 3/3
% t = 1^0.5
% t = 1
aux = figure;
stem(2, f2(2)); grid minor; title("b)");
saveas(aux, "b", "pdf");
aux = figure;
stem(1, f2(1)); grid minor; title("c)");
saveas(aux, "c", "pdf");
