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
d7 = d7/max(d7(:));
d8 = sin(0.6535*n) + sin(1.0247*n);
d8 = d8/max(d8(:));
d9 = sin(0.6535*n) + sin(1.1328*n);
d9 = d9/max(d9(:));


Touch_Tone1=abs(fft(d1)); 
MAX1=max(max(Touch_Tone1));  
Touch_Tone2=abs(fft(d2));
MAX2=max(max(Touch_Tone2));
Touch_Tone3=abs(fft(d3));
MAX3=max(max(Touch_Tone3));
Touch_Tone4=abs(fft(d4));
MAX4=max(max(Touch_Tone4));
Touch_Tone5=abs(fft(d5));
MAX5=max(max(Touch_Tone5));
Touch_Tone6=abs(fft(d6));
MAX6=max(max(Touch_Tone6));
Touch_Tone7=abs(fft(d7));
MAX7=max(max(Touch_Tone7));
Touch_Tone8=abs(fft(d8));
MAX8=max(max(Touch_Tone8));
Touch_Tone9=abs(fft(d9));
MAX9=max(max(Touch_Tone9));
Touch_Tone0=abs(fft(d0));
MAX0=max(max(Touch_Tone0));

position1=find(Touch_Tone1==MAX1); 
position2=find(Touch_Tone2==MAX2);
position3=find(Touch_Tone3==MAX3);
position4=find(Touch_Tone4==MAX4);
position5=find(Touch_Tone5==MAX5);
position6=find(Touch_Tone6==MAX6);
position7=find(Touch_Tone7==MAX7);
position8=find(Touch_Tone8==MAX8);
position9=find(Touch_Tone9==MAX9);
position0=find(Touch_Tone0==MAX0);


MAX1=2*pi*max(max(Touch_Tone1))/1000; 
MAX2=2*pi*max(max(Touch_Tone2))/1000; 
MAX3=2*pi*max(max(Touch_Tone3))/1000;
MAX4=2*pi*max(max(Touch_Tone4))/1000;
MAX5=2*pi*max(max(Touch_Tone5))/1000;
MAX6=2*pi*max(max(Touch_Tone6))/1000;
MAX7=2*pi*max(max(Touch_Tone7))/1000;
MAX8=2*pi*max(max(Touch_Tone8))/1000;
MAX9=2*pi*max(max(Touch_Tone9))/1000;
MAX0=2*pi*max(max(Touch_Tone0))/1000;

Array_Asked = zeros(10,2); 

Array_Asked(1,1) = MAX1;
Array_Asked(2,1) = MAX2;
Array_Asked(3,1) = MAX3;
Array_Asked(4,1) = MAX4;
Array_Asked(5,1) = MAX5;
Array_Asked(6,1) = MAX6;
Array_Asked(7,1) = MAX7;
Array_Asked(8,1) = MAX8;
Array_Asked(9,1) = MAX9;
Array_Asked(10,1) = MAX0;

Array_Asked(1,2) = position1(1);
Array_Asked(2,2) = position2(1);
Array_Asked(3,2) = position3(1);
Array_Asked(4,2) = position4(1);
Array_Asked(5,2) = position5(1);
Array_Asked(6,2) = position6(1);
Array_Asked(7,2) = position7(1);
Array_Asked(8,2) = position8(1);
Array_Asked(9,2) = position9(1);
Array_Asked(10,2) = position0(1);
Array_Asked


