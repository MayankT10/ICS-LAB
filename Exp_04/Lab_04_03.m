
am = 5;
ac = 5;
t = 0:0.001:2;
fm = 1;
fc = 10;
fs = 100*fc;

x = am*sin(2*pi*fm*t);
y = ac*cos(2*pi*fc*t);
z = x.*y;
subplot(3,1,1);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Modulating Signal');
grid on;

subplot(3,1,2);
plot(t,y);


subplot(3,1,3);
plot(t,z);