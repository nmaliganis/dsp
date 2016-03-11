function [ D ] = Dirac(Fs, dl, ul, t, v, value )
d =(zeros(1,length(t)));
for i=1:(dl+ul)*Fs+1
    if(t(i)== value)
        d(i) = 1;
        d(i) = v*t(i);
    else
        d(i) = 0;
    end
end
[D] = d;
end
