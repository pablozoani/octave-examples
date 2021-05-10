x = [0:.01:2];
y = x.^2 - x.^4; % (1,0)
y2 = 2 .* x - 4 .* x.^3;
y3 = -2 .* x + 2;
y4 = x ./ 2 - 0.5;

aux = figure();
plot(x, y, "r", x, y2, "b", x, y3, "g", x, y4, "m");
grid minor;
legend("function", "derivative", "tangent line", "normal");
title("3-1 ex 37");
xlabel("domain");
ylabel("range");

saveas(aux, "figure", "pdf");
