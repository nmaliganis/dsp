function wavwrite(varargin)

switch nargin
    case 2
        filename = check_wav_extension(varargin{2});
        % use of audiowrite
        audiowrite(filename, varargin{1}, 8000, 'BitsPerSample', 16)
    case 3
        % checks if .wav extension exists in filename and add it if not
        filename = check_wav_extension(varargin{3});
        % use of audiowrite
        audiowrite(filename, varargin{1}, varargin{2}, 'BitsPerSample', 16)
    case 4
        % checks if .wav extension exists in filename and add it if not
        filename = check_wav_extension(varargin{4});
        % use of audiowrite
        audiowrite(filename, varargin{1}, varargin{2}, 'BitsPerSample',...
            varargin{3}) 
    otherwise
        error('wavwrite:notEnoughArgs', ...
            'invalid number of input arguments')
end
% function to check for .wav extension, and add it if needed
function  [filename_wav] = check_wav_extension(filename)
    if isempty(strfind(filename, '.wav'))
        filename_wav = strcat(filename, '.wav'); 
    else
        filename_wav = filename; 
    end
end
end