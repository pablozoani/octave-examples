theta = [0:0.01:1];

function F = F(theta)
    F = (0.6 * 20 * 9.8) ./ (0.6 .* sin(theta) + cos(theta));
endfunction

aux = figure;
plot(theta, F(theta));
ylim([0 120]);
saveas(aux, "figure", "pdf");
atan(0.6)
