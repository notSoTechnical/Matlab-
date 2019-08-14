% clear everything
close all
clear all
clc

% Example Transfer Function: G(s) = 10/s(s+1)(s+5)

% Numerator
num = [10];
% Denominator
den = [1 6 5 0];

% Transfer Function
G = tf(num, den)

% Plot Frequency Response
bode(G), grid 