randn_vec = randn(1,9600); %96000
max_vec = max(max(randn_vec));
randn_vec = randn_vec./ max_vec;
audiowrite('test_audio.wav', randn_vec, 48000)
%-------------------------------------------------------------------------
% 
 [y, fs, nbits, opt] = waveRead('test_audio.wav');
 if ~isempty(opt) && ~isa('opt','struct')
    error('not returning empty struct, when called with four output arguments')
 end

 %sound(y);
 
frameSize = 0.02*1000; 
stepSize = 0.01*1000; 
hammWin = HammingWindow(frameSize);
 
delete('test_audio.wav')