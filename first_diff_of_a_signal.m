input_signal = load ('_20hz_1hz.txt');
output_signal = diff(input_signal);
subplot(2,1,1);
plot(input_signal,'r');
title('Input Signal');
subplot(2,1,2);
plot(output_signal,'g');
title('Output Signal from First Difference');
shg

