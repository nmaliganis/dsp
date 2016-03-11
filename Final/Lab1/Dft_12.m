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

% Start ---> ------------------------ B --------------------------------
% calculate the DFT of digit 1 and digit 8

DFT1=abs(fft(button1));
DFT8=abs(fft(button8));
plot(n,DFT1);
title('DFT');
xlabel('Time(sec)'), ylabel('|DFT|')
hold on
plot(n, DFT8);
title('DFT');
xlabel('Time(sec)'), ylabel('|DFT|')
% <--- End  ------------------------ B --------------------------------



