x = [-20:0.01:20];
y = e.^x - 3 .* x.^2;
y2 = e.^x - 6 .* x;

aux = figure();
plot(x, y, "r", x, y2, "b");
grid minor;
legend("function", "derivative");
title("3-1 ex 44");
xlabel("domain");
ylabel("range");
saveas(aux, "figure", "pdf");
