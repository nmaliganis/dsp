[speech, fs, nbits, opt] = wavRead('C:\Users\nmali\Documents\MATLAB\Lab3\music.wav');

frameSize = 0.301*1000;
stepSize = 0.3*1000;
hammWin = HammingWindow(frameSize);

wRect = rectwin(frameSize);
zc = zcr(speech, wRect, stepSize);

t = [0:length(speech)-1]/fs;

subplot(1,1,1);
plot(t, speech/max(abs(speech)));
title('speech: music file instead');

hold on;
delay = (frameSize - 1)/2;

plot(t(delay+1:end-delay), zc/max(zc),'r');
xlabel('Time (sec)');
legend('Speech','Average Zero Crossing Rate');
hold off;