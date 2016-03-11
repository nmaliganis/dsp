function [data, fs, nbits, opt] = wavRead(varargin)

if nargout == 4
    warning('wavread:no_opt', 'struct opt is not implemented')
    opt = struct([]);
end
% checks if .wav extension exists in filename and add it if not
if isempty(strfind(varargin{1}, '.wav'))
    varargin{1} = strcat(varargin{1}, '.wav');
end

% creates nbits out of audioinfo
nbits = audioinfo(varargin{1});
nbits = nbits.BitsPerSample;

% using audioread for the different possibilities of using wavread
if length(varargin) == 1
    [data, fs] = audioread(varargin{1});
elseif (length(varargin) == 2) && isa(varargin{2}, 'char')
    if strcmp(varargin{2}, 'size')
        info = audioinfo(varargin{1});
        data = [info.TotalSamples info.NumChannels];
        fs = info.SampleRate;
    elseif strcmp(varargin{2}, 'native') || strcmp(varargin{2}, 'double')
        [data, fs] = audioread(varargin{1}, varargin{2});
    else
        error('wavread:invalid_input', 'invalid input arguments')
    end
elseif  isa(varargin{2}, 'double') && (length(varargin{2}) <= 2) && ...
        not(isempty(varargin{2}))
    if length(varargin{2}) == 1
        varargin{2} = [1 varargin{2}];
    end
    if (length(varargin) == 2) && (varargin{2}(1) <= varargin{2}(2))
        [data, fs] = audioread(varargin{1}, varargin{2});
    elseif (length(varargin)) == 3 && (varargin{2}(1) <= varargin{2}(2))
        [data, fs] = audioread(varargin{1}, varargin{2}, varargin{3});
    else
        error('wavread:invalid_input', 'invalid input arguments')
    end
else
    error('wavread:invalid_input', 'invalid input arguments')
end
end