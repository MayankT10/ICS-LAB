% Multiplication of Signals

t = 0:0.001:1;
a = 2;
f = 5;

x1 = a*sin(2*pi*f*t);
subplot(3,1,1);
plot(t,x1);
title('Signal x1');
xlabel('Time');
ylabel('Amplitude');
grid on;

x2 = a*cos(2*pi*f*t);
subplot(3,1,2);
plot(t,x2);
title('Signal x2');
xlabel('Time');
ylabel('Amplitude');
grid on;

y = x1.*x2;
subplot(3,1,3);
plot(t,y);
title('Multiplcation of x1 and x2 signal');
xlabel('Time');
ylabel('Amplitude');
grid on;