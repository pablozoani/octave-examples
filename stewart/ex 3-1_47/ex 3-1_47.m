function y = f(x)
    y = 2 * x - 5 * x.^(3/4);
endfunction

function y = f1(x)
    y = 2 - 15 * x.^(-1/4) ./ 4;
endfunction

function y = f2(x)
    y = 15 * x.^(-5/4) ./ 8;
endfunction

x = [-2:0.01:2];

aux = figure;
plot(x, f(x), "r");
grid minor;
legend("function");
saveas(aux, "function", "pdf");

aux = figure;
plot(x, f1(x), "b");
grid minor;
legend("derivative");
saveas(aux, "derivative", "pdf");

aux = figure;
plot(x, f2(x), "g");
grid minor;
legend("2nd derivative");
saveas(aux, "2nd derivative", "pdf");
