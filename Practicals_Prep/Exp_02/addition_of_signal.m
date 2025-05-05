% Additon of two signals

t = 0:0.001:1;
a1 = 2;
f1 = 5;

x1 = a1*sin(2*pi*f1*t);
subplot(3,1,1);
plot(t,x1);
title("Signal x1");
xlabel('Time');
ylabel('Amplitude');
grid on;

a2 = 1;
f2 = 10;

x2 = a2*cos(2*pi*f2*t);
subplot(3,1,2);
plot(t,x2);
title('Signal x2');
xlabel('Time');
ylabel('Amplitude');
grid on;

y = x1+x2;
subplot(3,1,3);
plot(t,y);
title('Adddition of x1 and x2');
xlabel('Time');
ylabel('Amplitude');
grid on;