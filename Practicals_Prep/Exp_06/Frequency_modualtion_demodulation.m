% Frequency Modulation anda Demodulation

t = 0:0.001:1;
am = 5;
ac = 5;
fm = 2;
fc = 15;

% Message Signal
x1 = am*sin(2*pi*fm*t);
subplot(4,1,1);
plot(t,x1);
title('Baseband Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Carrier Signal
x2 = ac*sin(2*pi*fc*t);
subplot(4,1,2);
plot(t,x2);
title('Pass Band Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

kf = 5;
B = kf*am/ac;

s = ac*cos(2*pi*fc*t+B*sin(2*pi*fm*t));
subplot(4,1,3);
plot(t,s);
title('Modulated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

k = diff(s);
d1 = abs(k);
[b,a] = butter(3,0.01);
d = filter(b,a,d1);
subplot(4,1,4);
plot(d);
title('Demodulated Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
