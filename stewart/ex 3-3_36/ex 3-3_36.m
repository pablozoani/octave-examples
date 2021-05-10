t = [0:0.01:2 * pi];
% Movimiento
function s = s (t)
    s = 2 * cos(t) + 3 * sin(t);
endfunction

% Velocidad
function v = v (t)
    v = -2 * sin(t) + 3 * cos(t);
endfunction

% Aceleraci�n
function a = a (t)
    a = -2 * cos(t) - 3 * sin(t);
endfunction

printf("\n")
% c
printf("atan(-2 / 3) + pi\n")
% d
printf("s(atan(3 / 2))\n")
% e
printf("atan(-2 / 3) + pi * n \n")

aux = figure;
plot(t, s(t), "r", t, v(t), "g", t, a(t), "b");
grid minor;
xlabel("t");
ylabel("f(t)");
legend("Movimiento", "Velocidad", "Aceleracion");
saveas(aux, "figure", "pdf");
