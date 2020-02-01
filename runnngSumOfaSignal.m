input_signal = load ('_20hz_1hz.txt');
plot(input_signal);
output_signal = cumsum(input_signal);
subplot(2,1,1);
plot(input_signal, 'r');
title('Input Signal');
subplot(2,1,2);
plot (output_signal, 'g');
title('Output Signal from Running Sum');
shg
