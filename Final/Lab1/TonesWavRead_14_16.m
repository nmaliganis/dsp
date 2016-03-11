% Start ---> ------------------------ C --------------------------------
[tones, fs, nbits, opt] = wavRead('C:\Users\nmali\Documents\MATLAB\Lab1\tone_sequence.wav');
digits = ttdecode(tones)
% <--- End ------------------------ C --------------------------------