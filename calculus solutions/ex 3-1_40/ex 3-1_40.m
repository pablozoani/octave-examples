x = [0:.01:2];
y = x - x.^0.5; % (1,0)
y2 = 1 - 1 ./ (2 * x.^.5);
y3 = x ./ 2 - 0.5;
y4 = -2 * x + 2;

aux = figure();
plot(x, y, "r", x, y2, "b", x, y3, "g", x, y4, "m");
grid minor;
legend("function", "derivative", "tangent line", "normal");
title("3-1 ex 40");
xlabel("domain");
ylabel("range");
saveas(aux, "figure", "pdf");
