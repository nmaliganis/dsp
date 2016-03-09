Fs=1000;
f=[80 150];
t_int = [0:1/Fs:2];
n=[0:2];
omega=2.*pi.*f;
x1 = 1.5*cos(omega(1)*t_int);
x1= x1/max(x1(:));
x2 = 2.5*sin(omega(2)*t_int);
x2= x2/max(x2(:));
x3=0.15*randn(1,Fs+1001);
x=x1+x2+x3;
%plot(t_int,x)
frameSize = 0.04*1000; 
stepSize = 0.02*1000; 
hammWin = HammingWindow(frameSize);
[S F T] = STFT(x,hammWin,frameSize,stepSize,Fs);
%imagesc(T,F,log10(abs(S)))
%contour(T,F,log10(abs(S)))
%surf(T,F,log10(abs(S)))

cwtstruct = cwtft({x,1/Fs},'Scales',S,'Wavelet','morl');
scales = cwtstruct.scales;
contour(T,F,log10(abs(scales)))