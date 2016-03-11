
[speech, fs, nbits, opt] = wavRead('C:\Users\nmali\Documents\MATLAB\Lab3\speech_utterance.wav');

frameSize = 0.501*1000;
stepSize = 0.5*1000;
hammWin = HammingWindow(frameSize);

framed = buffer(speech, frameSize, stepSize, 'nodelay');
windowed = diag(sparse(hammWin)) * framed;

energy = sum(windowed.^2,1);

t = [0:length(speech)-1]/fs;

subplot(1,1,1);
plot(t, speech);
title('speech: Η νησιωτική χώρα εξαρτάται από τον τουρισμό');
xlims = get(gca,'Xlim');

hold on;

delay = (frameSize - 1)/2;
plot(t(delay+1:end - delay), energy, 'r');
xlim(xlims);
xlabel('Time (sec)');
legend({'Speech','Short-Time Energy'});
hold off;