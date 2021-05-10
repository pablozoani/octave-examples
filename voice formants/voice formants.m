firstFormantFrequencies = [250, 400, 600, 400, 350];
firstFFProm = (250 + 400 + 600 + 400 + 350) / 5
secondFormantFrequencies = [1750, 1620, 1040, 750, 600];
secondFFProm = (1750 + 1620 + 1040 + 750 + 600) / 5
thirdFormantFrequencies = [2600, 2400, 2250, 2400, 2400];
thirdFFProm = (2600 + 2400 + 2250 + 2400 + 2400) / 5
fourthFormantFrequencies = [3050, 2800, 2450, 2600, 2675];
fourthFFProm = (3050 + 2800 + 2450 + 2600 + 2675) / 5

firstFormantAmplitudes = [1, 1, 1, 1, 1];
secondFormantAmplitudes = [0.03, 0.25, 0.44, 0.28, 0.1];
thirdFormantAmplitudes = [0.16, 0.35, 0.35, 0.09, 0.025];
fourthFormantAmplitudes = [0.08, 0.25, 0.35, 0.1, 0.04];

x = [0 : 0.025 : 2];

 % FORMANT FREQUENCIES
function y = fff (x)
 y = exp((-cos(2 * pi * x) * 0.5 + 0.5) .^ 2 * log(600 / 250) + log(250)) + exp((-cos(pi * x) * 0.5 + 0.5) * log(100));
endfunction

function y = sff (x)
 y = exp((cos(pi * x) * 0.5 + 0.5) * log(1750 / 600) + log(600));
endfunction

function y = tff (x)
 y = exp((cos(2 * pi * x) * 0.5 + 0.5) * log(2600 / 2250) + log(2250)) - exp((cos(pi * x + pi) * 0.5 + 0.5) * log(200));
endfunction

function y = fourthff (x)
 y = exp(((1 + cos(2 * pi * x)) / 2) * log(3050 / 2450) + log(2450)) - exp(((1 + cos(pi * x + pi)) / 2) * log(375));
endfunction

 % FORMANT AMPLITUDES
function y = sfa (x)
 y = abs(mod(x * 2 + 1, 2) - 1) * 0.38 + 0.03 + abs(mod(x + 1, 2) - 1) * 0.07;
endfunction

function y = tfa (x)
 y = sin(x * pi * 3 / 2) * 0.26 + 0.09;
endfunction

function y = ffa (x)
 y = ((1 + cos(2 * pi * x + pi)) / 2) * 0.29 + 0.08 - abs(mod(x - 1, 2) - 1) * 0.04;
endfunction

 % PLOTTING
aux = figure; plot(x, fff(x), "r", x, sff(x), "g", x, tff(x), "b", x, fourthff(x), "k"); grid minor;
saveas(aux, "voice partials frequencies", "pdf");
aux = figure; plot(x, sfa(x), "g", x, tfa(x), "b", x, ffa(x), "k"); grid minor;
saveas(aux, "voice partials amplitudes", "pdf");