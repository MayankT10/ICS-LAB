% differentiation of a signal

t = 0:0.001:1;
a = 2;
f = 5;

x = a*sin(2*pi*f*t);

dx = diff(x)./diff(t);
t2 = t(1:end-1);

subplot(2,1,1);
plot(t,x);
title('Sine wave');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(2,1,2);
plot(t2,dx);
title('Derivative of Sine wave');
xlabel('Time');
ylabel('Amplitude');
grid on;