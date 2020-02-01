f1=20;
ts=1/100;
t=3;
T=3;
t=0:ts:T;
signal_20hz = sin (2*pi*f1*t);
plot(signal_20hz);
f2=1;
signal_1hz = sin(2*pi*f2*t);
plot(signal_1hz);
shg
signal_20hz_1hz = signal_20hz+signal_1hz;
plot(signal_20hz_1hz);
shg
fdatool
plot(imp_response);
output_signal = conv(signal_20hz_1hz,imp_response);
subplot(3,1,1);
plot(signal_20hz_1hz);
title('Noisy Input Signal');
subplot(3,1,2);
plot(imp_response);
title('Impulse Response');
subplot(3,1,3);
plot(output_signal);
title('Output from Convolution');
suptitle('Convolution');
csvwrite('_20hz_1hz.txt',signal_20hz_1hz);
