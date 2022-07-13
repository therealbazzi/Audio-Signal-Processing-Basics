# Audio-Signal-Processing-Basics
This packages is meant for audio digital signal processing for beginners. It shows basic stuff like loading an audio file to matlab, performing spectral analysis, listening to signals that are created online via matlab, perform Fourier transforms on the audio signals, some basic filtering on the signals, and more.

## How to read the Main.m
It's pretty easy, the Main.m is split into different parts and the tasks per part are given below:

## Part 1 -- Loading an audio signal
Load the audio signal x stored in the file p2file1.mat into the Matlab environment, using the load command. You can listen to the signal using the Matlab command soundsc, and by specifying a sampling frequency of 8 kHz.
https://github.com/therealbazzi/Audio-Signal-Processing-Basics/blob/83b97faa6cefe1bbe675940cb974f41b2e52911d/Main.m#L2-L10

## Part 2 -- FFT of an audio signal
Use the fft command to compute the Discrete Fourier Transform of the signal x. Plot the amplitude spectrum of the signal. Normalize the frequency axis by the sampling frequency (i.e., your frequency axis should range from -0.5 to 0.5) then plot.
https://github.com/therealbazzi/Audio-Signal-Processing-Basics/blob/83b97faa6cefe1bbe675940cb974f41b2e52911d/Main.m#L11-L26

## Part 3 -- Generating signals
Let's generate some cosines and complex exponentials, then plot them.
https://github.com/therealbazzi/Audio-Signal-Processing-Basics/blob/83b97faa6cefe1bbe675940cb974f41b2e52911d/Main.m#L27-L71

## Part 4 -- Listening to the signals
Listen to the signals x2, x3, and x4 using the `soundsc` command.
https://github.com/therealbazzi/Audio-Signal-Processing-Basics/blob/83b97faa6cefe1bbe675940cb974f41b2e52911d/Main.m#L72-L84

## Part 5 -- Generating signals
Generate another signals and plot 
https://github.com/therealbazzi/Audio-Signal-Processing-Basics/blob/83b97faa6cefe1bbe675940cb974f41b2e52911d/Main.m#L85-L91

## Part 7 -- 
Consider the discrete-time filter defined by `h = fir1(40,0.2)`. The coefficients h represent a 40th order filter, with a corner frequency of 0.2 times the Nyquist frequency. Use Matlab help on `fir1` to learn more about this command. Plot the frequency response of the filter h using the command `freqz` then plot.
