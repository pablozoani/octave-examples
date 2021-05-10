x = [0:.01:2];
y = 3 * x.^2 - x.^3; % (1,2)
y2 = 6 * x - 3 * x.^2;
y3 = 3 * x - 1;
y4 = -x / 3 + 7/3;

aux = figure();
plot(x, y, "r", x, y2, "b", x, y3, "g", x, y4, "m");
grid minor;
legend("function", "derivative", "tangent line", "normal");
title("3-1 ex 39");
xlabel("domain");
ylabel("range");
saveas(aux, "figure", "pdf");
