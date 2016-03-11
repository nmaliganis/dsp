function [zc] = zcr(sig, win, stepSize)
winLen = length(win);

sigdif = sign(sig(2:end))-sign(sig(1:end-1));
sigdif = [0; sigdif];

[sigdifFramed, lastFrame] = buffer(sigdif, winLen, stepSize,'nodelay');
sigdifWindowed = diag(sparse(win)) * abs(sigdifFramed);

zc = sum(sigdifWindowed, 1) / (2*winLen);
end