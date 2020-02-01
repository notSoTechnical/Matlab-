input_signal = load('_20hz_1hz.txt');
Y = fft(input_signal);
Ymag = abs(Y);
Yphase = unwrap(angle(Y));
plot(Ymag,'g');
subplot(3,1,1);
plot(input_signal);
title('Input Time Domain Signal');
subplot(3,1,2);
plot(Ymag);
title('Magnitude');
subplot(3,1,3);
plot(Yphase);
title('Phase');
shg
