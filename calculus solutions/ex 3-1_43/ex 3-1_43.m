x = [-10:.01:10];
y = x.^4 - 3 .* x.^3 - 6 .* x.^2 + 7 .* x + 30;
y2 = 4 .* x.^3 - 9 .* x.^2 - 12 .* x + 7;

aux = figure();
plot(x, y, "r", x, y2, "b");
grid minor;
legend("function", "derivative");
title("3-1 ex 43");
xlabel("domain");
ylabel("range");
saveas(aux, "figure", "pdf");
