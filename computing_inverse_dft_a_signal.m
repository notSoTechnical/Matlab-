input_signal = load('_20hz_1hz.txt');
Y = fft(input_signal);

dft_output = fft(input_signal);
dft_output_mag = abs(dft_output);
idft_output = ifft(dft_output);
subplot(3,1,1);
plot(input_signal);
plot(input_signal,'r');
title('Input Signal');
subplot(3,1,2);
plot(dft_output_mag,'y');
title('Frequency Spectrum');
subplot(3,1,3);
plot(idft_output,'g');
title('Signal from IDFT');
shg
