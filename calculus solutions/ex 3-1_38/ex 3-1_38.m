x = [-8:.01:10];
y = x.^(3/2); % (1,1)
y2 = 3 .* x.^(1/2) ./ 2;
y3 = 1.5 .* x - 0.5;
y4 = -2/3 .* x + 5/3;

aux = figure();
plot(x, y, "r", x, y2, "b", x, y3, "g", x, y4, "m");
grid minor;
legend("function", "derivative", "tangent line", "normal");
title("3-1 ex 37");
xlabel("domain");
ylabel("range");
saveas(aux, "figure", "pdf");
