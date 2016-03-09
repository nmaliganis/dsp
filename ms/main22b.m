Fs=1000;
f=80;
t_int = [0:1/Fs:2];
omega=2.*pi.*f;
x1 = 1.5*cos(omega*t_int);
x1= x1/max(x1(:));
x2=0.15*randn(1,Fs+1001);

[x3] = Dirac(Fs, 0, 2, t_int, 10, 0.625 );
[x4] = Dirac(Fs, 0, 2, t_int, 10, 0.750 );

x=x1+x2+x3+x4;

frameSize = 0.04*Fs; 
stepSize = 0.02*Fs; 
hammWin = HammingWindow(frameSize);
[S F T] = STFT(x,hammWin,frameSize,stepSize,Fs);
surf(T,F,(abs(S)))

