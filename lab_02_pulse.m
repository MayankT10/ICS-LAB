f = 1;
a = 1;
t = 0:0.001:1;

w = 2*pi*f;
x = a*sin(w*t);

plot(t,x);
xlabel('Time (s)')
ylabel('Amplitude') 
title('Sine Wave')