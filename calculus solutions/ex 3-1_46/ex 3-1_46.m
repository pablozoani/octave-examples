function y = G(r)
    y = r.^(1/2) + r.^(1/3);
endfunction

function y = G1(r)
    y = r.^(-1/2) ./ 2 + r.^(-2/3) ./ 3;
endfunction

function y = G2(r)
    y = -r.^(-3/2) ./ 4 + -2 * r.^(-5/3) ./ 9;
endfunction

r = [0.5:0.001:1];

aux = figure();
plot(r, G(r), "r", r, G1(r), "b", r, G2(r), "g");
grid minor;
legend("function", "derivative", "2nd derivative");
title("3-1 ex 46");
xlabel("domain");
ylabel("range");
saveas(aux, "figure", "pdf");
