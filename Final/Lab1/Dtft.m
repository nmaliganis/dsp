% ------------------------ A --------------------------------
Fs = 8192;
N = 2048;
n = 0:999;

d0 = sin(0.7217*n) + sin(1.0247*n);
%sound(d0, Fs);
d1 = sin(0.5346*n) + sin(0.9273*n);
%sound(d1, Fs);
d2 = sin(0.5346*n) + sin(1.0247*n);
%sound(d2, Fs);
d3 = sin(0.5346*n) + sin(1.1328*n);
%sound(d3, Fs);
d4 = sin(0.5906*n) + sin(0.9273*n);
%sound(d4, Fs);
d5 = sin(0.5906*n) + sin(1.0247*n);
%sound(d5, Fs);
d6 = sin(0.5906*n) + sin(1.1328*n);
%sound(d6, Fs);
d7 = sin(0.6535*n) + sin(0.9273*n);
%sound(d7, Fs);
d8 = sin(0.6535*n) + sin(1.0247*n);
%sound(d8, Fs);
d9 = sin(0.6535*n) + sin(1.1328*n);
%sound(d9, Fs);

% ------------------------ B --------------------------------
% calculate the DTFT of digit 2 and digit 8
D2 = fft(d2, N);
D8 = fft(d8, N);
k = 0:2047;
wk = (2 * pi * k) / N;

% plot for digit 2 DTFT
subplot(2,2,1), plot(wk, abs(D2));
title('DTFT D2');
axis([0.5, 1.5, 0, 500]);
xlabel('Freq'), ylabel('mag')
subplot(2,1,1), plot(wk,angle(D2));
xlabel('freq'), ylabel('phase')

% plot for digit 8 DTFT
subplot(2,2,2), plot(wk, abs(D8));
title('DTFT D8');
axis([0.5, 1.5, 0, 500]);
xlabel('Freq'), ylabel('mag')
subplot(2,1,1), plot(wk,angle(D8));
xlabel('freq'), ylabel('phase')

% ------------------------ C --------------------------------
