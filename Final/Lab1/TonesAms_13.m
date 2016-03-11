% ------------------------ A --------------------------------
Fs = 8192;
n = 0:999;

d0 = sin(0.7217*n) + sin(1.0247*n);
d0 = d0/max(d0(:));
d1 = sin(0.5346*n) + sin(0.9273*n);
d1 = d1/max(d1(:));
d2 = sin(0.5346*n) + sin(1.0247*n);
d2 = d2/max(d2(:));
d3 = sin(0.5346*n) + sin(1.1328*n);
d3 = d3/max(d3(:));
d4 = sin(0.5906*n) + sin(0.9273*n);
d4 = d4/max(d4(:));
d5 = sin(0.5906*n) + sin(1.0247*n);
d5 = d5/max(d5(:));
d6 = sin(0.5906*n) + sin(1.1328*n);
d6 = d6/max(d6(:));
d7 = sin(0.6535*n) + sin(0.9273*n);
d7 = d7/max(d0(:));
d8 = sin(0.6535*n) + sin(1.0247*n);
d0 = d0/max(d0(:));
d9 = sin(0.6535*n) + sin(1.1328*n);
d0 = d0/max(d0(:));


% Start ---> ------------------------ C --------------------------------
maliganis = [0 3 1 1 4 6 8 1];
gkouskos = [0 3 1 1 3 5 5 1];
AMs = [0 6 2 2 8 2 3 2];
AM = maliganis + gkouskos;
space = zeros(1, 100);

phone = [d0 space d6 space d2 space d2 space d8 space d2 space d3 space d2];
sound(phone, Fs);
digits = ttdecode(phone)
% <--- End ------------------------ C --------------------------------