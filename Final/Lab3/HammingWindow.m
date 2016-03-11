function [output] = HammingWindow(windowLength)
n = 0:1:windowLength-1;
hammWin = 0.54 - 0.46*cos(2*pi*n/(windowLength-1));
output = hammWin;
end

