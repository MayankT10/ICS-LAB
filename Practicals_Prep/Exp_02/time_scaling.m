% Time scaling of a signal

t = 0:0.001:1;
a = 1;
f = 5;
w = 2*pi*f

x = a*sin(w*t);
subplot(3,1,1);
plot(t,x);
title('Original Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

x1 = a*sin(w*t/2);
subplot(3,1,2);
plot(t,x1);
title('Expanded Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

x2 = a*sin(w*2*t);
subplot(3,1,3);
plot(t,x2);
title('Compressed Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;