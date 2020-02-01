input_signal = load('_20hz_1hz.txt');
filter_points = 11;
filtered_signal = movmean(input_signal,filter_points);
subplot(2,1,1);
plot(input_signal);
title('Noisy Input Signal');
subplot(2,1,2);
plot(filtered_signal);
title('Filtered with 11pts Moving Average Filter');
shg
