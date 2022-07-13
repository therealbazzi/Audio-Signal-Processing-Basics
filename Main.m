function Main
%% Part 1 
% Specify Sampling Frequency
fs = 8 * 10^3;
% Load the Audio File
load('p2file1.mat');
% Listen to it at sampling frequency, fs
soundsc(x,fs);
% pause 2 sec
pause(2)
%% Part 2
% Use FFT command to compute the Discrete Fourier Transform of the signal x
% The function NormalizeFrequencyAxis.m written by us, takes the audio and 
% sampling frequency, and outputs a normalized frequency scale, f and the DFT
% of x, which is X
[f,X] = NormalizeFrequencyAxis(x,fs);
% plot on x axis the f scale and on the y scale the magnitudes of the FFT
% of x
figure
plot(f,abs(X));
% label the x axis 
xlabel('Normalized Frequency (Hz)')
% label the y axis 
ylabel('Amplitude of the FFT')
% Title (why not)
title('Amplitude Spectrum')
%% Part 3
% This returns the length of vector x
L=length(x);
% Define the t axis sampled at fs
t =  1: 1:length(x);
% Compute x2
x2 = x.*exp(j*2*pi*0.2.*t);
% Compute x3
x3 = real(x2);
% Compute x4
x4 = cos(2*pi*0.2.*t).*x;
% Let's (additionally plot in time domain)
figure
subplot(2,1,1)
%plot x vs t
plot(t,x)
hold on
%plot x2 vs t
plot(t,x2)
%plot x3 vs t
plot(t,x3)
%plot x4 vs t
plot(t,x4)
%add legend 
legend('x','x2','x3','x4')
%label x axis
xlabel('time')
%label y axis
ylabel('x(t),x2(t),x3(t),x4(t)')
title('Time Domain')
% Let's (additionally plot in time domain)
subplot(2,1,2)
%plot FFT of x vs f
plot(f,abs(X))
hold on
%plot FFT of x2 vs f
plot(f,abs(fftshift(fft(x2))))
%plot FFT of x3 vs f
plot(f,abs(fftshift(fft(x3))))
%plot FFT of x4 vs f
plot(f,abs(fftshift(fft(x4))))
legend('X','X2','X3','X4')
xlabel('Frequency')
ylabel('X(f),X2(f),X3(f),X4(f)')
title('Frequency Domain')
%% Part 4
% Listen to signal 2
soundsc(real(x2),fs);
% pause 2 sec
pause(2)
% Listen to signal 3
soundsc(x3,fs);
% pause 2 sec
pause(2)
% Listen to signal 4
soundsc(x4,fs);
% pause 2 sec
pause(2)
%% Part 5
x5 = cos(2*pi*0.2.*t).*x4;
figure
plot(f,abs(fftshift(fft(x5))))
xlabel('Frequency')
ylabel('X5(f)')
title('Amplitude Spectrum')
%% Part 6 (OK)
%% Part 7
% generate filter of order 40 and corner freq 0.2 x Nyquist freq
h = fir1(40,0.2);
% plot using freqz
figure
freqz(h);
%% Part 8
x6 = filter(h,1,x5);
figure
plot(f,abs(fftshift(fft(x6))))
xlabel('Frequency')
ylabel('X5(f)')
title('Amplitude Spectrum')
%% Part 9 
% Listen to signal 4
soundsc(x6,fs);
pause(2)
%% Part 10
% Load the Audio File
load('p2file2.mat');
fs = 64 * 10^3;
% Use FFT command to compute the Discrete Fourier Transform of the signal x
% The function NormalizeFrequencyAxis.m written by us, takes the audio and 
% sampling frequency, and outputs a normalized frequency scale, f and the DFT
% of x, which is X. This is for the 64 KHz signal
[f,X] = NormalizeFrequencyAxis(double(x),fs);
% plot on x axis the f scale and on the y scale the magnitudes of the FFT
% of x
figure
plot(f,abs(X));
% label the x axis 
xlabel('Normalized Frequency (Hz)')
% label the y axis 
ylabel('Amplitude of the FFT')
% Title (why not)
title('Amplitude Spectrum')
%% Part 11
% This returns the length of vector x
L=length(x);
% Define the t axis sampled at fs
t =  1: 1:length(x);
% Compute x2
x2 = double(x).*exp(j*2*pi*0.2.*t);
% Compute x3
x3 = real(x2);
% Compute x4
x4 = cos(2*pi*0.2.*t).*double(x);
% Part 5
x5 = cos(2*pi*0.2.*t).*x4;
figure
plot(f,abs(fftshift(fft(x5))))
xlabel('Frequency')
ylabel('X5(f)')
title('Amplitude Spectrum')
% generate filter of order 40 and corner freq 0.2 x Nyquist freq
h = fir1(40,0.2);
% plot using freqz
figure
% Plot in frequency domain
freqz(h);
% Part 8
x6 = filter(h,1,x5);
figure
%plot FFT of x6 vs f
plot(f,abs(fftshift(fft(x6))))
xlabel('Frequency')
ylabel('X5(f)')
title('Amplitude Spectrum')
% Part 9 
% Listen to signal 4
soundsc(x6,fs);
% pause 2 sec
pause(2)

