function y = f(x)
    y = x.^5/1000 - x.^3/50;
endfunction

function y = f1(x)
    y = 5 .* x.^4/1000 - 3 .* x.^2/50;
endfunction

function y = f2(x)
    y = 20 .* x.^3 ./ 1000 - 6 .* x ./ 50;
endfunction

x = [-2:0.01:2];

aux = figure();
plot(x, f(x), "r", x, f1(x), "b", x, f2(x), "g");
grid minor;
legend("function", "derivative", "2nd derivative");
title("3-1 ex 45");
xlabel("domain");
ylabel("range");
saveas(aux, "figure", "pdf");
