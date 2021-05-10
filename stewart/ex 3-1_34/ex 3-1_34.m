x = [-1.5:.01:1.5];
y = 2 * e.^x + x; % (0,2)
y2 = 2 * e.^x + 1;
y3 = 3 .* x + 2;

aux = figure;
plot(x, y, "r", x, y2, "b", x, y3, "g");
grid minor;
legend("function", "derivative", "tangent line");
xlabel("domain");
ylabel("range");

saveas(aux, "figure", "pdf");
