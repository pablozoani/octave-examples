x = [-1:.01:1];
y = x.^(1/4) - x; % (1,0)
y2 = (x.^(-3/4)) ./ 4 - 1;
y3 = -3 .* x ./ 4 - 0.25;

aux = figure();
plot(x, y, "r", x, y2, "b", x, y3, "g");
grid minor;
legend("function", "derivative", "tangent line");
xlabel("domain");
ylabel("range");

saveas(aux, "figure", "pdf");
