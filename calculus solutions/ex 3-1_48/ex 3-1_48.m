function y = f (x)
    y = e.^x - x.^3;
endfunction

function y = f1 (x)
    y = e.^x - 3 * x.^2;
endfunction

function y = f2 (x)
    y = e.^x - 6 * x;
endfunction

aux = figure;
x = [-5:0.001:5];
plot(x, f(x), "r", x, f1(x), "b", x, f2(x), "g");
legend("function", "derivative", "2nd derivative");
title("ex 3-1 48");
xlabel("domain");
ylabel("range");
grid minor;
saveas(aux, "figure", "pdf");
