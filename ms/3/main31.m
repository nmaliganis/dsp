randn_vec = randn(1,96000);
max_vec = max(max(randn_vec));
randn_vec = randn_vec./ max_vec;
audiowrite('test_audio.wav', randn_vec, 48000)
%-------------------------------------------------------------------------
% %% Testing returning of empty struct with four output arguments
% 
 [y, fs, nbits, opt] = waveRead('test_audio.wav');
 if ~isempty(opt) && ~isa('opt','struct')
    error('not returning empty struct, when called with four output arguments')
 end

%% Output of wavread(filename) should be the same as wav_read(filename)

[y_new, fs_new, nbits_new] = waveRead('test_audio');

%% Output of wavread(..., 'size') should be the same as wav_read(..., 'size')

[siz_new, fs_new] = waveRead('test_audio','size');

%% Output of wavread(..., N) should be the same as wav_read(..., N)

[y_new1] = waveRead('test_audio',800);

   
%% Output of wavread(..., [N1 N2]) should be the same as wav_read(..., [N1 N2])
[y_new2] = waveRead('test_audio',[800 60000]);


%% Output of wavread(..., 'native') should be the same as wav_read(..., 'native')
[y_new3] = waveRead('test_audio','native');

%% Output of wavread(..., 'double') should be the same as wav_read(..., 'double')
[y_new4] = waveRead('test_audio','double');

%% Error returning with too much input arguments
try
    [y_new5] = waveRead('test_audio',[1 300],'native','test_what_happens');
catch err
    if ~strcmp(err.identifier, 'wav_read:invalid_input')
        error('not returning the right error')
    end
end
%%
delete('test_audio.wav')