x = [-10:.01:10];
y = x.^5 - 2 * x.^3 + x - 1;
y2 = 5 * x.^4 - 6 * x.^2 + 1;

aux = figure();
plot(x, y, "r", x, y2, "b");
grid minor;
legend("function", "derivative");
xlabel("domain");
ylabel("range");
saveas(aux, "figure", "pdf");
