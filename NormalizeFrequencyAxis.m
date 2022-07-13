function[f,X] = NormalizeFrequencyAxis(input,fs)

X = fftshift(fft(input));
if(mod(length(input),2) == 0 )
f = [0:length(input)-1]*fs/(length(input));
else
f = [0:length(input)-1]*fs/(length(input)-1);  
end
f = f - fs/2;
f = (f/f(end))*0.5;
