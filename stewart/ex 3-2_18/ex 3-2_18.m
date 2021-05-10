clc
r = [-5:0.1:5];
a = 2;
b = 5;

function y = n (r, a)
    y = (a .* e.^r);
endfunction

function y = d (r, b)
    y = (b + e.^r);
endfunction

function h = f (r, a, b)
    h = (a .* e.^r) ./ (b + e.^r);
endfunction

%	derivative:
%		h' 	= [(a*e^r)'(b + e^r) - (a*e^r)(b + e^r)']/(b + e^r)^2
%			= [(a*e^r)(b + e^r) - (a*e^r)(1 + e^r)]/[(b + e^r)^2]
%			= {[a*b*e^r + a*e^(2*r)] - [a*e^r + a*e^(2*r)]}/[(b + e^r)^2]
%			= [a*b*e^r + a*e^(2*r) - a*e^r - a*e^(2*r)]/[(b + e^r)^2]
%			= (a*b*e^r - a*e^r)/[(b + e^r)^2]

function h = f1 (r, a, b)
    h = (a * b * e.^r - a * e.^r) ./ [(b + e.^r).^2];
endfunction

aux = figure;
plot(r, n(r, a), "b", r, d(r, b), "r");
legend('nominator function', 'denominator function');
xlabel('r');
ylabel('f(r)');
title('exercise 3.2-18');
grid minor;
saveas(aux, "figure_a", "pdf");

aux = figure;
plot(r, f(r, a, b), "b", r, f1(r, a, b), "r");
legend('function', 'derivative');
xlabel('r');
ylabel('f(r)');
title('exercise 3.2-18');
grid minor;
saveas(aux, "figure_b", "pdf");
