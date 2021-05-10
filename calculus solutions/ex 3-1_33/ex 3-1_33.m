x = [-3:.01:3];
y = 2 * x.^3 - x.^2 + 2;
y2 = 6 * x.^2 - 2 * x;
y3 = 4 * x - 1;

aux = figure;
plot(x, y, "r", x, y2, "b", x, y3, "g");
grid minor;
legend("function", "derivative", "tangent line");
xlabel("domain");
ylabel("range");

saveas(aux, "figure", "pdf");
