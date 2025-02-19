f = 1;
a = 1;
t = 0:0.001:1;

w = 2*pi*f;
x1 = a*sin(w*t);

plot(t,x1);
xlabel('Time (s)')
ylabel('Amplitude') 
title('Sine Wave')
grid on;


f = 1;
a = 1;
t = 0:0.01:0.1;
x2 = a*cos(2*pi*f*t);
plot(t,x2);
xlabel('time');
ylabel('amplitude');
title('Carrier signal');
grid on;

y = conv(x1,x2);
subplot(3,1,3);
plot(y);
