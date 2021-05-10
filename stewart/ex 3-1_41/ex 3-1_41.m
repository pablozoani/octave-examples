x = [-10:.01:10];
y = x.^4 - 2 * x.^3 + x.^2;
y2 = 4 * x.^3 - 6 * x.^2 + 2 * x;

aux = figure();
plot(x, y, "r", x, y2, "b");
grid minor;
legend("function", "derivative");
title("3-1 ex 41");
xlabel("domain");
ylabel("range");
saveas(aux, "figure", "pdf");
