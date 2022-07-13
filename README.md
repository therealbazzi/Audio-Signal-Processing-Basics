# Audio-Signal-Processing-Basics
This packages is meant for audio digital signal processing for beginners. It shows basic stuff like loading an audio file to matlab, performing spectral analysis, listening to signals that are created online via matlab, perform Fourier transforms on the audio signals, some basic filtering on the signals, and more.

## How to read the Main.m
It's pretty easy, the Main.m is split into different parts and the tasks per part are given below:

## Part 1 
Load the audio signal x stored in the file p2file1.mat into the Matlab environment, using the load command. You can listen to the signal using the Matlab command soundsc, and by specifying a sampling frequency of 8 kHz.
https://github.com/therealbazzi/Audio-Signal-Processing-Basics/blob/83b97faa6cefe1bbe675940cb974f41b2e52911d/Main.m#L2-L10

## Part 2 
Use the fft command to compute the Discrete Fourier Transform of the signal x. Plot the amplitude spectrum of the signal. Normalize the frequency axis by the sampling frequency (i.e., your frequency axis should range from -0.5 to 0.5) then plot.

