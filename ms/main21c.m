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

[scales,frq]= wavescales('morl',Fs);

cwtbat = cwtft({x,1/Fs},'wavelet','morl','scales',scales);
contour(t_int,frq,abs(cwtbat.cfs))
