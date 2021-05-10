x = [1:.01:3];
y = x + 2 ./ x; % (2,3)
y2 = 1 - 2 .* x.^(-2);
y3 = 0.5 .* x + 2;

aux = figure();

plot(x, y, "r", x, y2, "b", x, y3, "g");
grid minor;
legend("function", "derivative", "tangent line");
xlabel("domain");
ylabel("range");

saveas(aux, "figure", "pdf");
