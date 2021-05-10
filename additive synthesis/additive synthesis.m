	% AUDIO OPTIONS.

sr = 96000; % sampling rate
sp = 1 / sr; % sample period
dur = 8; % duration in seconds
smpsdur = dur * sr; % number of samples in the audio vector
x = [0 : sp : dur]; % time domain vector

	% ADDITIVE SYNTHESIS

f0 = 110; % fundamental frequency
nPartials = 32; % number of partials

function y = f(x, f0, nPartials)
	y = 0;
	i = 0;
	normalizeFactor = 1 / nPartials;
	while (i < nPartials)
		y += cos(2 * pi * x * f0 * i) * normalizeFactor;
		i++;
	endwhile
endfunction

	% DYNAMIC ENVELOPE

firstValue = 1; % first value of the exponential envelope
lastValue = 0.001; % last value of the exponential envelope

firstValue = log(firstValue);
lastValue = log(lastValue);
step = (lastValue - firstValue) / smpsdur;
envelope = [firstValue : step : lastValue];

y = f(x, f0, nPartials) .* exp(envelope);
audiowrite("test.wav", y, sr);