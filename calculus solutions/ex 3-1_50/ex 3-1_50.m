clc
% La ecuaci�n de movimiento de una part�cula es s = t^4 - 2t^3 + t^2 - t, donde
% s est� en metros y t en segundos.
% a) encuentre la velocidad y la aceleraci�n como funciones de t.
% b) encuentre la aceleraci�n despues de 1 segundo.
% c) Grafique las funciones posici�n, velocidad y aceleraci�n en una misma pantalla.
function s = f(t)
    s = t.^4 - 2 .* t.^3 + t.^2 - t;
endfunction

% a)
function s1 = f1(t)
    s1 = 4 .* t.^3 - 6 .* t.^2 + 2 .* t - 1;
endfunction

function s2 = f2(t)
    s2 = 12 .* t.^2 - 12 .* t + 2;
endfunction

% b)
f2(1)
% c)
t = [0:.001:5];
aux = figure;
plot(t, f(t), "r", t, f1(t), "g", t, f2(t), "b"); legend("posicion", "velocidad", "aceleracion"); grid minor; title("ex 3-1 50");
saveas(aux, "figure", "pdf");
